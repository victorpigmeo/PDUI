import { afterAll, beforeAll, describe, expect, test } from "bun:test";
import pdui from "../../index.ts";
import express from "express";
import request from "supertest";
import { PDUIRoute } from "../../lib/models/PDUIRoute.ts";
import { expressionById, toBinaryBuffer } from "../utils.ts";
import { PBExpression } from "../../lib/proto-out/pdui-proto-out.ts";

const application = express();
let server: any;

const pduiRoutes: PDUIRoute[] = [
    new PDUIRoute({ id: "home", handler: () => expressionById("home") }),
];

beforeAll(() => {
    pdui.init
        .start({ application: application, useJwt: false, useCache: false })
        .then((_pdui) => {
            console.log("PDUI Initialized!!!");
            pdui.init
                .registerRoutes({ routes: pduiRoutes })
                .then((pduiRoutes) => {
                    console.log("PDUI Routes registered:\n", pduiRoutes);
                });
        });

    server = application.listen(0);
});

afterAll(() => {
    server.close();
});

describe("ExpressionController Test", () => {
    test("GET  /get-expression/:expressionId [Should return the 'home' expression ]", async () => {
        const res = await request(server).get("/pdui/get-expression/home");

        expect(res.statusCode).toBe(200);

        const pbExpression: PBExpression = PBExpression.fromBinary(
            toBinaryBuffer(res.body.payload),
        );

        expect(pbExpression.identity).toBe("scaffold");
        expect(pbExpression.payload.oneofKind).toBe("scaffold");
        expect(pbExpression.payload.scaffold.appBar.identity).toBe("appBar");
        expect(pbExpression.payload.scaffold.appBar.payload.appBar.title).toBe(
            "AppBar Test",
        );
        expect(
            pbExpression.payload.scaffold.appBar.payload.appBar.backgroundColor,
        ).toBe("#FFFF0000");
        expect(pbExpression.payload.scaffold.body.identity).toBe("center");
        expect(
            pbExpression.payload.scaffold.body.payload.center.child.identity,
        ).toBe("text");
        expect(
            pbExpression.payload.scaffold.body.payload.center.child.payload
                .oneofKind,
        ).toBe("text");
        expect(
            pbExpression.payload.scaffold.body.payload.center.child.payload.text
                .data,
        ).toBe("Centered Text");
    });

    test("GET /get-expression/:expressionId [Should not find the expression and return 404]", () => {});
});

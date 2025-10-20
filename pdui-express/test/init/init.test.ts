import { describe, test, expect, beforeEach } from "bun:test";
import { expressionById } from "../utils";
import { PDUIRoute } from "../../models";
import { PDUI, registerRoutes } from "../../lib/init";

beforeEach(() => {
    PDUI.routes = [];
});

describe("Route registration tests", () => {
    test("Registering valid routes should pass", () => {
        const pduiValidRoutes: PDUIRoute[] = [
            new PDUIRoute({
                id: "home",
                handler: () => expressionById("home"),
            }),
            new PDUIRoute({
                id: "about",
                handler: () => expressionById("about"),
            }),
        ];

        registerRoutes({ routes: pduiValidRoutes });

        expect(PDUI.routes.length).toBe(2);
    });

    test("Registering invalid routes should throw an error", () => {
        console.log(PDUI.routes);
        const pduiInvalidRoutes: PDUIRoute[] = [
            new PDUIRoute({
                id: "home",
                handler: () => expressionById("home"),
            }),
            new PDUIRoute({
                id: "about2",
                handler: () => expressionById("about"),
            }),
        ];

        expect(registerRoutes({ routes: pduiInvalidRoutes })).rejects.toThrow(
            "Error registering route: 'about2', some characters are not allowed (Allowed characters: a-zA-Z.-_)",
        );
    });
});

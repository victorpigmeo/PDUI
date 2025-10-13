import { PDUIFn } from "../models/PDUIFn";
import type {
    PBFnExpression,
    PBPopNavigation,
} from "../proto-out/pdui-proto-out";

export class PDUIPopNavigation extends PDUIFn {
    constructor() {
        super({
            identity: "popNavigation",
            name: undefined,
            params: {},
            body: {},
        });
    }

    override toPB(): PBPopNavigation {
        return {};
    }

    override toFnExpression(): PBFnExpression {
        return {
            identity: "popNavigation",
            payload: { oneofKind: "popNavigation", popNavigation: {} },
        };
    }
}

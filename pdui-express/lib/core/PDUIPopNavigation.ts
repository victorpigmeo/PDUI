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

    //TODO: Add return data
    override toPB(): PBPopNavigation {
        return {};
    }

    //TODO: Add return data
    override toFnExpression(): PBFnExpression {
        return {
            identity: "popNavigation",
            payload: { oneofKind: "popNavigation", popNavigation: {} },
        };
    }
}

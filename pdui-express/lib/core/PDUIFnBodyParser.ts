import type { PDUIFn } from "../models/PDUIFn";
import { PBFnExpression } from "../widgets/proto-out/widgets";

export function parseBody(
    fnName: string | undefined,
    body: () => PDUIFn[],
): { [key: string]: PBFnExpression } {
    const fnBodyFns = body();
    const pbParsedBody: { [key: string]: PBFnExpression } = {};

    for (let i = 0; i < fnBodyFns.length; i++) {
        if (fnBodyFns[i]) {
            switch (fnBodyFns[i]?.identity) {
                case "debugPrint":
                case "generic":
                    pbParsedBody[i + 1] = fnBodyFns[i]!.toFnExpression();
                    break;
                default:
                    throw new Error(`Unknown function type: ${fnName}`);
            }
        }
    }

    return pbParsedBody;
}

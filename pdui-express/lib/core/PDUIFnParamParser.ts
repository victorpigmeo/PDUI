import { PBDataType, type PBFnParameter } from "../proto-out/pdui-proto-out.ts";

export function parseParams(
    fnName: string | undefined,
    params: { [key: string]: number | string | boolean },
): { [key: string]: PBFnParameter } {
    const pbParams: { [key: string]: PBFnParameter } = {};
    const paramsKeys: string[] = Object.keys(params);
    const paramsValues = Object.values(params);

    for (let i = 0; i < paramsKeys.length; i++) {
        switch (typeof paramsValues[i]) {
            case "string":
                pbParams[i + 1] = {
                    name: String(paramsKeys[i]),
                    type: PBDataType.STRING,
                    value: {
                        oneofKind: "stringValue",
                        stringValue: String(paramsValues[i]),
                    },
                };

                break;
            case "number":
                const isFloat = Number(paramsValues[i]) % 1 !== 0;

                if (isFloat) {
                    pbParams[i + 1] = {
                        name: String(paramsKeys[i]),
                        type: PBDataType.FLOAT,
                        value: {
                            oneofKind: "floatValue",
                            floatValue: Number(paramsValues[i]),
                        },
                    };
                } else {
                    pbParams[i + 1] = {
                        name: String(paramsKeys[i]),
                        type: PBDataType.INT,
                        value: {
                            oneofKind: "intValue",
                            intValue: Number(paramsValues[i]),
                        },
                    };
                }
                break;
            case "boolean":
                pbParams[i + 1] = {
                    name: String(paramsKeys[i]),
                    type: PBDataType.BOOLEAN,
                    value: {
                        oneofKind: "booleanValue",
                        booleanValue: Boolean(paramsValues[i]),
                    },
                };
                break;
            default:
                throw new Error(
                    `Unknown fnParamType: ${paramsKeys[i]} on fn: ${fnName}`,
                );
        }
    }

    return pbParams;
}

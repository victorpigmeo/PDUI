# PduiGenericFn
The purpose of this class is to be an generic implementation of a function, with params\[WIP\] and a body\[WIP\] that is a sequence of steps to be evaluated on the mobile library side;

* The body needs to be a callback function that returns an array of `PduiFn`s.
* The body will be evaluated at the same order that the instructions are added on the returned array;

> PDUI Currently supports sending some params on generic fns (string, number(int), number(float) and boolean) but it still doesn't know how to handle them on the execution.

### Examples
```typescript
export class MyController {
    static build(): PDUIWidget {
        return new PDUIScaffold({
            appBar: new PDUIAppBar({
                title: "TESTE123",
                backgroundColor: "#FFFF00FF",
            }),
            body: new PDUICenter({
                child: new PDUIColumn({
                    children: [
                        new PDUIElevatedButton({
                            child: new PDUIText({ data: "Press me" }),
                            onPressed: new PDUIGenericFn({
                                params: {"num1": 15, "num2": 22, "name": "John Doe", "useSomething": false},
                                body: () => {
                                    const steps = [];
                                    const msg = "Hello, World!";

                                    steps.push(new PDUIDebugPrint(msg));

                                    //To the future: PduiSum("num1", "num2")

                                    return steps;
                                },
                            }),
                        }),
                    ],
                }),
            }),
        });
    }
}
```

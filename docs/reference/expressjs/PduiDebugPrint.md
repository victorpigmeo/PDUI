# PduiDebugPrint
This is the PDUI abstraction of `debugPrint()`;

With this class you can print a message on the mobile library side;

### Examples:
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
                            onPressed: new PDUIDebugPrint("Hello, World!")
                        }),
                    ],
                }),
            }),
        });
    }
}
```



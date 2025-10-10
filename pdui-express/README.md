# PDUI Express

**[This is one of the server side libraries of the best SDUI Library!]**
[PDUI Github](https://github.com/victorpigmeo/PDUI)

To install the library run:

```bash
bun add pdui-express
```

Then add on your `server.ts`:
```typescript
import pdui from "pdui-express";
import { PDUIRoute } from "pdui-express/models";

const pduiRoutes: PDUIRoute[] = [
    new PDUIRoute({ id: "home", handler: HomeController.build }),
];

pdui.init
    .start({ application: application, useJwt: false, useCache: false })
    .then((_pdui) => {
        //console.log("PDUI Initialized!!!");
        pdui.init.registerRoutes({ routes: pduiRoutes }).then((pduiRoutes) => {
            //console.log("PDUI Routes registered:\n", pduiRoutes);
        });
    });

//Start express here
//application.listen...

export class HomeController {
    static build(): PDUIWidget {
        return new PDUIScaffold({
            appBar: new PDUIAppBar({
                title: "AppBar Title",
                backgroundColor: "#FFFF00FF", // optional
            }),
            body: new PDUICenter({
                child: new PDUIColumn({
                    children: [
                        new PDUIText({ data: "This text comes from the backend" }),
                        new PDUIElevatedButton({
                            child: new PDUIText({ data: "Press me" }),
                            onPressed: new PDUIGenericFn({
                                body: () => {
                                    const steps = [];
                                    const msg = "Hello, World!";
                                    const conta = 22 + 15;

                                    steps.push(new PDUIDebugPrint(msg));
                                    steps.push(new PDUIDebugPrint(conta));

                                    return steps;
                                },
                            }),
                            // onPressed: new PDUIDebugPrint("OI"),
                        }),
                    ],
                }),
            }),
        });
    }
}
```

You can alternativally separate the `routes` and the `HomeController` files, as you can see on (this example)[https://github.com/victorpigmeo/PDUI/tree/master/examples/express-server];

To setup the mobile library, follow [these steps](../pdui_flutter/README.md).

# :mushroom: PDUI (Pigmeo Driven UI)

> **A *SDUI* library for the brave**

---
### What is this?
**PDUI** is a SDUI library featuring caching, navigation[WIP], stateManagement[WIP], JWT Security [WIP] and ease to use, that generates flutter code on the backend.

---
### Why PDUI?
* **Smooth learning curve:** PDUI Tryies to use a vocabulary that is closer enough to the one used on pure Flutter.
* **No more release train:** PDUI is completelly backend driven, which means that your code will be available as soon as you finish your deploy.
* **Caching out of the box:** PDUI features a cache system using Redis that can be invalidated with an API call.
* **Mobile Data economy:**: With caching you don't need to send the screen all the times.
* **Freedom to create:** PDUI aims to let you create the very same app you create using pure Flutter [WIP]

---
### Instalation
You'll need `pdui_flutter` on your flutter app:
To install add this to your `pubscpec.yaml` and run `flutter pub get`
```yaml
dependencies:
    pdui_flutter: 0.0.1
```

#### Server Library
PDUI Is available at the moment for these frameworks:

| [ExpressJS](pdui-express/README.md) | Java Spring Boot | Clojure Pedestal  
|-----------|------------------|----------------- 
|:white_check_mark:[^1]|:warning:[^2]|:warning:[^2]

[^1]: WIP
[^2]: It will be build in the future

---
### How it works?

TL;DR

You'll need the PDUI Flutter (`pdui_flutter`) package installed on your flutter application.

After installing you'll use the `PduiScreen` widget that will manage everything behind the courtains, you only need to provide the configuration needed to span the library, for example, the `rootExpressionId` that is the very first screen of your app, or `enableCache` if you're using cache.
After that you only need to setup your server, which you can do clicking on your framework of choice at the table above.

Once you use `PduiScreen` everything from that point onward will be managed by PDUI. You can also use `PduiScreen` as a Widget on your already existing app.
To load the root (And all that is behind your root afterwards) PDUI will request your server at: ```GET <your-express-server>:<your-express-port>/pdui/get-expression/:expressionId```

PDUI Uses a set of objects/functions to convert what you create on the backend in protobuf. (Pdui* classes/functions)

Then this protobuf is sent as a response for the client.

On the client side, the `pdui-flutter` will convert this protobuf to Flutter (Dart) code an execute it, just like you had coded on pure Flutter

> If you want to use `PDUINavigation` you need to set the `navigatorKey` as indicated on the [flutter library README](./pdui_flutter/README.md).

> If you're using cacheEnable a query param (`cacheId`) will be included on the request 

> If you're using JWT you'll need to provide the authentication mechanism and the token to the `PduiScreen` param [WIP]


---
### Enabling cache
#### To enable caching you'll need a Redis cache on the server side!!!
You don´t need to setup anything besides `useCache = true` on both the server side `start` function and also on the `useCache = true` property on the `PduiScreen` widget instantiation.

The cache works by using the `flutter_secure_storage` on the mobile side, if the cache is enabled:
* The app library requests the first expression and don't send a `cacheId`;
* The server gets this request without a `cacheId` param and build the screen protobuf;
* The server will build the screen and save a `cacheId` on the redis server, associated to the `expressionId` requested;
* On the response the server will include the `payload`, the newly generated `cacheId`, and a flag `cacheAlive:false`;
* The mobile library will identify by the `cacheAlive = false`, that it needs to parse and build this expression;
* After the parse, the mobile library will save the `cacheId` associated to the already built expression;
* When the mobile library request the same expression again, it will send the `cacheId`;
* This time the server confirm that the cacheId is still valid (equals to the one on Redis)
* The server then respond only with a flag `cacheAlive:true` without building the screen protobuf again;
* The mobile library build the expression saved on the `flutter_secure_storage`;

*TODO: add some diagrams later*

#### To invalidate the cache make a GET request on: `<your-server>:<your-port>/pdui/invalidate-cache/:expressionId` [WIP]
##### TODO: Invalidate all caches

---
### What can I do with PDUI yet?
* You can CONTRIBUTE!
* You can use it with ExpressJS;
* You can create a screen with a `Scaffold`, `AppBar`, `Center`, `Column`, `ElevatedButton` and `Text` Widgets;[WIP]
* You can use the `PduiDebugPrint` and the `PduiGenericFn` to mess around with the first function calls;

### How can I contribute?
You need to first understand how the library works: Client requests -> Server builds a protobuf -> client build Flutter stuff based on the protobuf;

Then you need to know a little from Typescript, Dart (Flutter) and Protobuf (Just a little is enough, that is what I know so if you know more than a little is better cause you know more than me)

Then just check our [CONTRIBUTING](CONTRIBUTING.md) guide;

---
This project is licensed under the terms of the **MIT** license

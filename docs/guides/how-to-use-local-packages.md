# How to use local packages

### ExpressJS (Bun)
Inside the `pdui-express` directory run the following:
```bash
bun link pdui-express
```
Then on your `express-server/package.json` add the following (It should be there already):
```json
"dependencies":{
    "pdui-express": "link:pdui-express",
    "other-dependencies": "..." -->
}
```

### Flutter 
Just point the dependency to the lib path on `pubspec.yaml`
```yaml

dependencies:
  pdui_flutter:
    path: ../../pdui_flutter/
  # Other dependencies ...
```

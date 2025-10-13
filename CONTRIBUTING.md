# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change. 

Please note we have a code of conduct, please follow it in all your interactions with the project.

## Developing new stuff
You'll need `protoc` which is the Protobuf compiler on your `$PATH`;

1. Start by using the local packages on the example projects, you can see how to do that [here](docs/guides/how-to-use-local-packages.md);
2. Install the libraries dependencies 
    1. `bun install` for ExpressJS
    2. `flutter pub get` for the mobile library (pdui_flutter)
3. Build the protobuf message you'll need to achieve what you want to build;
    1. For example, the protobuf for some flutter widget should include AT LEAST the required parameters for that Widget;
    2. Use Flutter docs to know which params are required on the widget you want to code;
4. Compile the protobuf message:
    1. On the server library root directory:
        If you're using `bun`(recomended):
        ```bash 
        bun run protobuild
        ```
        If you're using yarn:
        ```bash 
        yarn run protobuild
        ```
        If you're using npm:
        ```bash 
        npm run protobuild
        ```
        Or if you don't want to use any package manager:
        ```bash
        protoc --plugin ./node_modules/.bin/protoc-gen-ts --ts_out ./lib/proto-out -I ../protobuf/ ../protobuf/*
        ```
    2. On the mobile library directory run `protoc` like this:
        ```bash 
        protoc --dart_out=./lib/widgets/proto_out -I ../protobuf ../protobuf/* 
        ```
5. Run the examples (`bun run dev` for ExpressJS) (`flutter run -d <your-device-id>` for the `example_app`)
6. Now you should be ready to implement your Pdui* class using your generated code from the Protobuf message
    1. You can inspect the generated code on both sides on the `lib/proto_out*` files

Dont forget the logic: The server creates the protobuf from classes `toPB` and `toExpression` functions -> Client create Flutter stuff using the protobuff information

## Pull Request Process

1. Fork this repository, then create a branch using your issue number as name (issue-234 for issue #234);
2. Work on your branch then open a PR pointing to the `master` branch of this respository;
2. Update the README.md and the Docs directory with details of changes to any Pdui* classes;
3. Increase the version numbers in any examples files and the README.md to the new version that this
   Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/);
4. You may merge the Pull Request in once you have the sign-off of two other developers, or if you 
   do not have permission to do that, you may request the second reviewer to merge it for you;

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

### Scope

This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community. Examples of
representing a project or community include using an official project e-mail
address, posting via an official social media account, or acting as an appointed
representative at an online or offline event. Representation of a project may be
further defined and clarified by project maintainers.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project maintainer at [victor.blq@gmail.com]. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project maintainer is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at [http://contributor-covenant.org/version/1/4][version]

[homepage]: http://contributor-covenant.org
[version]: http://contributor-covenant.org/version/1/4/

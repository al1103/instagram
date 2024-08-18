# susan_violin

## Requirements

- Flutter 3.10.x
- Xcode 14.x
- Android SDK 33

## Recommend IDE Plugins

- Material Icon Theme
- Flutter Riverpod Snippets
- Flutter Intl
- Flutter freezed Helpers

## Generate files

### L10n

Execute the following command to generate files:

```
flutter gen-l10n
```

### Freezed, AutoRouter, Riverpod, ...

Execute the following command to generate files:

```
dart run build_runner build -d
```

or watch command in order to keep the source code synced automatically:

```
dart run build_runner watch -d
```

> `-d` or `--delete-conflicting-outputs`: Assume conflicting outputs in the users package are from previous builds, and skip the user prompt that would usually be provided.

### Group Generated Files

In-order to group `.freezed.dart` and `.g.dart` files so they are hidden from the project view but not ignored, we can use File nesting, for
[Android Studio](https://www.jetbrains.com/help/idea/file-nesting-dialog.html) and
[VS Code](https://dev.to/this-is-learning/file-nesting-in-vs-code-46l5).

## Enviroment

### Flavors

Use Very Good CLI to create Flutter apps pre-configured with build flavors as well as many other useful features.

```
dart pub global activate very_good_cli
```

```
very_good create --org-name com.example app
```

### Firebase

Use the FlutterFire CLI to configure apps to connect to Firebase.

```
npm install -g firebase-tools
```

```
firebase login
```

```
dart pub global activate flutterfire_cli
```

fluttergen

```
# Dev environment (note: do the same for Stg and Prod)
flutterfire config \
  --project=app-dev \
  --out=lib/firebase_options_dev.dart \
  --ios-bundle-id=com.example.app.dev \
  --macos-bundle-id=com.example.app.dev \
  --android-app-id=com.example.app.dev
```

> If you have multiple build variants that are based on release status (rather than on common end-user activity or access, like above), register each variant with a separate Firebase project.

## Project structure

![Structure](structure.png)

Project structure, inspired by Domain Driven Design, is made of four distinct layers, each containing the components that our app needs:

- Presentation: Responsible for showing information to the user and interpreting the user's commands.

- Application: Defines the jobs the software is supposed to do and directs the expressive domain objects to work out problems. It does not contain business rules or knowledge, but only coordinates tasks and delegates work to collaborations of domain objects in the next layer down. It does not have state reflecting the business situation, but it can have state that reflects the progress of a task for the user or the program.

- Domain: Responsible for representing concepts of the business, information about the business situation, and business rules. State that reflects the business situation is controlled and used here, even though the technical details of storing it are delegated to the infrastructure.

  - Entity: An Entity is an object with its own properties (state, data) and methods that implements the business logic that is executed on these properties. An entity is represented by its unique identifier (Id). Two entity object with different Ids are considered as different entities.
  - Value Object: A Value Object is another kind of domain object that is identified by its properties rather than a unique Id. That means two Value Objects with same properties are considered as the same object. Value objects are generally implemented as immutable and mostly are much simpler than the Entities.
  - Repository (interface): A Repository is a collection-like interface that is used by the Domain and Application Layers to access to the data persistence system (the database). It hides the complexity of the DBMS from the business code. Domain Layer contains the interfaces of the repositories.
  - Domain Service: When a significant process or transformation in the domain is not a natural responsibility of an ENTITY or VALUE OBJECT, add an operation to the model as a standalone interface declared as a SERVICE.

- Infrastructure: This layer is responsible for communication with different data sources.
  - Data sources implement logic of data access from different sources (such as network, database, disk etc).
  - Repositories contain queries and mutations for a specific data model and can decide from which data source gets data (request it from network or get from cache for example).

As you can see, services come in 3 kinds : Application layer service, Infrastructure layer service and Domain layer service, depending on what the service does. Here is an example:

![Service sample diagram](service_diagram.png)

Take a note that a feature is a functional requirement that helps the user complete a given task, not just a single page or screen in the app.

Lastly, service classes are often unnecessary. There's no point in creating a service class if all it does is forward method calls from a controller to a repository. In such a case, the controller can depend on the repository and call its methods directly. In other words, the application layer is optional.

## State management

Riverpod

- Use for global state (use stateful widget to manage local state)

WIP

## Navigation management

TODO

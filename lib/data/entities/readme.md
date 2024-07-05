Dossier où placer les entités des sources de données.

# Freezed
Get started with freezed, by having a look at https://pub.dev/packages/freezed#how-to-use

Run flutter 'pub run build_runner build', to generate the .freezed.dart files for your entities

# Freezed example
In a person.dart file:

```
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
abstract class Person with _$Person {
  // This is a default factory using the Freezed syntax
  factory Person({String name, int age}) = _Person;

  // This is a default factory combining the Freezed syntax AND json_serializable syntax
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
```

Once this class is created, you just have to run the command specified above this example, 
and the person.freezed.dart and person.g.dart files will be generated for you.
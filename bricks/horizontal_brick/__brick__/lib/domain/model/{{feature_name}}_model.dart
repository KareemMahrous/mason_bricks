import 'package:equatable/equatable.dart'; 
import 'package:json_annotation/json_annotation.dart';

part '{{feature_name.snakeCase()}}_model.g.dart';

@JsonSerializable(createToJson: false)
class {{feature_name.pascalCase()}}Model extends Equatable {
  final int? id;

  const {{feature_name.pascalCase()}}Model({required this.id,});

  // Factory method to create an instance from JSON
  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ModelFromJson(json);

  // Uncomment the below method if you need to implement a copyWith method
  // {{feature_name.pascalCase()}}Model copyWith({int? id}) {
  //   return {{feature_name.pascalCase()}}Model(id: id ?? this.id);
  // }

  @override
  List<Object?> get props => [id];
}

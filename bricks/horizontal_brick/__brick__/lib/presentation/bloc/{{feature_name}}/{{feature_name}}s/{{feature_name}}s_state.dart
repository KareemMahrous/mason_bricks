part of '{{feature_name}}s_cubit.dart';

sealed class {{feature_name.pascalCase()}}sState extends Equatable {
  
  @override
  List<Object> get props => [];
}

final class {{feature_name.pascalCase()}}sInitial extends {{feature_name.pascalCase()}}sState {}

final class {{feature_name.pascalCase()}}sLoading extends {{feature_name.pascalCase()}}sState {}

final class {{feature_name.pascalCase()}}sSuccess extends {{feature_name.pascalCase()}}sState {
  
  // Uncomment and implement the success state if needed
  // final List<{{feature_name.pascalCase()}}Model> {{feature_name.camelCase()}}s;

  // {{feature_name.pascalCase()}}sSuccess(this.{{feature_name.camelCase()}}s);

  // @override
  // List<Object> get props => [{{feature_name.camelCase()}}s];
}

final class {{feature_name.pascalCase()}}sFailure extends {{feature_name.pascalCase()}}sState {
  final String message;

  {{feature_name.pascalCase()}}sFailure(this.message);
}

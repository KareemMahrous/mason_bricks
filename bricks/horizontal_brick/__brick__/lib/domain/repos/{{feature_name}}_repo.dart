import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../domain.dart';


abstract class {{feature_name.pascalCase()}}Repo {
  //Add your repo methods here
  // Example:
  Future<Either<Failure, List<{{feature_name.pascalCase()}}Model>>> fetch{{feature_name.pascalCase()}}s();

  // Uncomment and implement the method below if needed
  // Future<Either<Failure, {{feature_name.pascalCase()}}Model>> get{{feature_name.pascalCase()}}(id);

  // Uncomment and implement the method below if needed
  // Future<Either<Failure, List<{{feature_name.pascalCase()}}Model>>> get{{feature_name.pascalCase()}}s();

  // Uncomment and implement the method below if needed
  // Future<Either<Failure, {{feature_name.pascalCase()}}Model>> create{{feature_name.pascalCase()}}({{feature_name.pascalCase()}}Model {{feature_name.camelCase()}});

  // Uncomment and implement the method below if needed
  // Future<Either<Failure, {{feature_name.pascalCase()}}Model>> update{{feature_name.pascalCase()}}({{feature_name.pascalCase()}}Model {{feature_name.camelCase()}});

  // Uncomment and implement the method below if needed
  // Future<Either<Failure, void>> delete{{feature_name.pascalCase()}}(id);
}   
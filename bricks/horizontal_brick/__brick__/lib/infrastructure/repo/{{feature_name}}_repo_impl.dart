import 'package:dartz/dartz.dart';

import '../../domain/domain.dart';
import '../infrastructure.dart';
import '../../core/core.dart';

class {{feature_name.pascalCase()}}RepoImpl implements {{feature_name.pascalCase()}}Repo {
  final {{feature_name.pascalCase()}}DataSource _{{feature_name.camelCase()}}DataSource;

  {{feature_name.pascalCase()}}RepoImpl(
    {required {{feature_name.pascalCase()}}DataSource {{feature_name.camelCase()}}DataSource}):
      _{{feature_name.camelCase()}}DataSource = {{feature_name.camelCase()}}DataSource;

  @override
  Future<Either<Failure, List<{{feature_name.pascalCase()}}Model>>> fetch{{feature_name.pascalCase()}}s() async {
    try {
      final response = await _{{feature_name.camelCase()}}DataSource.fetch{{feature_name.pascalCase()}}s();
      final List<{{feature_name.pascalCase()}}Model> {{feature_name.camelCase()}}s = response.data.map((e) => {{feature_name.pascalCase()}}Model.fromJson(e)).toList();
      return Right({{feature_name.camelCase()}}s);
    } catch (e) {
      return Left(MappingFailure(e.toString()));
    }
  }
} 
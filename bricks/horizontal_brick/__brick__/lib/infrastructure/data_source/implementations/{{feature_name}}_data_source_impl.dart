import 'package:graphql_flutter/graphql_flutter.dart';

import '../../infrastructure.dart';
import '../../../domain/domain.dart';
import '../../../core/core.dart';
import '../../../app/app.dart';

class {{feature_name.pascalCase()}}DataSourceImpl implements {{feature_name.pascalCase()}}DataSource {
  // Uncomment the below line if you need to use GraphService or any other service
  final GraphService _graphService;

  {{feature_name.pascalCase()}}DataSourceImpl({required GraphService graphService})
    : _graphService = graphService;

  // Add your data source implementation here
  // Example:
  @override
  Future<ResponseModel> fetch{{feature_name.pascalCase()}}s() async {
  try {
    final result = await _graphService.client.queryManager.query(
      QueryOptions(
        document: gql({{feature_name.pascalCase()}}Queries.get{{feature_name.pascalCase()}}s),
        variables: {"first": 14},
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    final response = ResponseModel.fromJson(result.data!);
    return response;
  } catch (e) {
    throw NetworkFailure('Failed to fetch {{feature_name.pascalCase()}}s: $e');
  }
}
}
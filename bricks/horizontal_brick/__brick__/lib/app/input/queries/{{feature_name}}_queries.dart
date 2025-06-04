class {{feature_name.pascalCase()}}Queries {
  const {{feature_name.pascalCase()}}Queries._();

  static const String get{{feature_name.pascalCase()}}s = 
  // GraphQL query to fetch feature
  // Example:
  r'''
    query Get{{feature_name.pascalCase()}}s($first: Int!) {
      {{feature_name.camelCase()}}s(first: $first) {
     
    }
  ''';
}
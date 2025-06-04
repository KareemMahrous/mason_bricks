import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/domain.dart';

part '{{feature_name.camelCase()}}s_state.dart';

class {{feature_name.pascalCase()}}sCubit extends Cubit<{{feature_name.pascalCase()}}sState> {
  final {{feature_name.pascalCase()}}Repo {{feature_name.camelCase()}}Repo;

  {{feature_name.pascalCase()}}sCubit({required this.{{feature_name.camelCase()}}Repo}) : super({{feature_name.pascalCase()}}sInitial());
  // Add your cubit methods here
  // Example:
  Future<void> fetch{{feature_name.pascalCase()}}s() async {
    emit({{feature_name.pascalCase()}}sLoading());
    final result = await {{feature_name.camelCase()}}Repo.fetch{{feature_name.pascalCase()}}s();
    result.fold(
      (failure) => emit({{feature_name.pascalCase()}}sFailure(failure.message)),
      ({{feature_name.camelCase()}}s) => emit({{feature_name.pascalCase()}}sSuccess({{feature_name.camelCase()}}s)),
    );
  }
}

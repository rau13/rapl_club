import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String name,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

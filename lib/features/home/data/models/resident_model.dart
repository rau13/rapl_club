import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapl_club/features/home/data/models/company_model.dart';

part 'resident_model.freezed.dart';
part 'resident_model.g.dart';

@freezed
class Resident with _$Resident {
  const factory Resident({
    String? avatar,
    required String name,
    required String surname,
    required String status,
    required String additional_status,
    required Company companies,
    required List<String> competencies,
    required String mail,
    required String phone,
    required String chat_link,
  }) = _Resident;

  factory Resident.fromJson(Map<String, dynamic> json) => _$ResidentFromJson(json);
}
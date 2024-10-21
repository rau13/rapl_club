import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_request_model.freezed.dart';
part 'work_request_model.g.dart';

@freezed
class WorkRequest with _$WorkRequest {
  const factory WorkRequest({
    String? avatar,
    required String name,
    required String surname,
    required String status,
    required String title,
    required String description,
    required String city,
    required String date,
  }) = _WorkRequest;

  factory WorkRequest.fromJson(Map<String, dynamic> json) => _$WorkRequestFromJson(json);
}

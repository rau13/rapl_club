import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_model.freezed.dart';
part 'link_model.g.dart';

@freezed
class Links with _$Links {
  const factory Links({
    required String residents,
    required String work_requests,
    required String events,
    required String chat,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
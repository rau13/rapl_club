import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String name,
    String? icon,
    required String type,
    required String address,
    required String date,
    required List<String> access_levels,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
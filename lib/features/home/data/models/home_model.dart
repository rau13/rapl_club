import 'package:freezed_annotation/freezed_annotation.dart';
import 'banner_model.dart';
import 'event_model.dart';
import 'link_model.dart';
import 'resident_model.dart';
import 'work_request_model.dart';

part 'home_model.freezed.dart';

part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required List<String>? user,
    required List<BannerModel>? banners,
    required List<Resident>? residents,
    required List<WorkRequest>? work_requests,
    required List<Event>? events,
    required List<List<String>>? buttons,
    required Links? links,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
}

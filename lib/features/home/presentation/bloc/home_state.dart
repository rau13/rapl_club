import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapl_club/features/home/data/models/home_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(HomeModel homeModel) = Loaded;
  const factory HomeState.error(String message) = Error;
}
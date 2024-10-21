import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapl_club/features/home/data/repository/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc({required this.repository}) : super(const HomeState.initial()) {
    on<LoadHomeData>(_onLoadHomeData);
  }

  Future<void> _onLoadHomeData(LoadHomeData event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final homeData = await repository.getHomeData();
      emit(HomeState.loaded(homeData));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}

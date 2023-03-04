import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/data/repository.dart';

import '../../data/servicelistmodel.dart';

part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  DemoBloc() : super(const DemoInitial()) {
    on<DemoEvent>((event, emit) async {
      emit(const DemoLoading());
      try {
        if (event is FetchEvent) {
          var servicelistresponse = await Repository().getservicelistfhgfgfjh(
              url: 'http://ayatanacoorg.in/api/v1/saleteam/serviceslist');

          emit(DemoLoaded(servicelistresponse));
        }
      } catch (e) {
        emit(DemoError(e.toString()));
      }
    });
  }
}

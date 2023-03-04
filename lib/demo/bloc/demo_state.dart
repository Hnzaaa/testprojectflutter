part of 'demo_bloc.dart';

abstract class DemoState extends Equatable {
  const DemoState();

  @override
  List<Object> get props => [];
}

class DemoInitial extends DemoState {
  const DemoInitial();

  @override
  List<Object> get props => [];
}

class DemoLoading extends DemoState {
  const DemoLoading();

  @override
  List<Object> get props => [];
}

class DemoLoaded extends DemoState {
  final ServiceListModel servicelistmodel;
  const DemoLoaded(this.servicelistmodel);

  @override
  List<Object> get props => [ServiceListModel];
}

class DemoError extends DemoState {
  final String msg;
  const DemoError(this.msg);

  @override
  List<Object> get props => [msg];
}

import 'package:equatable/equatable.dart';

abstract class StudentMainEvent extends Equatable {
  const StudentMainEvent();
  @override
  List<Object> get props => [];
}

class StudentMainEventFetch extends StudentMainEvent {
  const StudentMainEventFetch();
}

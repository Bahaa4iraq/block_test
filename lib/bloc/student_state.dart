import 'package:block_test/model/student_model.dart';
import 'package:equatable/equatable.dart';

abstract class StudentMainState extends Equatable {
  const StudentMainState();
  @override
  List<Object> get props => [];
}

class StudentInitial extends StudentMainState {
  const StudentInitial();
}
class StudntLoading extends StudentMainState {
  const StudntLoading();
}
class StudentSuccess extends StudentMainState {
  final List<StudentModel> students;
  const StudentSuccess(this.students);
  @override
  List<Object> get props => [students];
}
class StudentError extends StudentMainState {
  final String message;
  const StudentError(this.message);
  @override
  List<Object> get props => [message];
}
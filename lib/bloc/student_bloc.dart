import 'dart:convert';

import 'package:block_test/bloc/student_event.dart';
import 'package:block_test/bloc/student_state.dart';
import 'package:block_test/model/student_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class StudentBloc extends Bloc<StudentMainEvent, StudentMainState> {
  StudentBloc() : super(const StudentInitial()) {
    on<StudentMainEventFetch>(_onFetchStudent);
  }

  void _onFetchStudent(
      StudentMainEvent event, Emitter<StudentMainState> emit) async {
    emit(const StudntLoading());
    try {
      var response = await http
          .get(Uri.parse('https://institute.afkar-barmajia.com/api/Student'));
      if (response.statusCode == 200) {
        var studentList = (jsonDecode(response.body) as List)
            .map((e) => StudentModel.fromJson(e))
            .toList();
        emit(StudentSuccess(studentList));
      } else {
        emit(const StudentError('Failed to fetch data'));
      }
    } catch (e) {
      emit(StudentError(e.toString()));
    }
  }
}

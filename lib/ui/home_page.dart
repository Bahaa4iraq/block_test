import 'package:block_test/bloc/student_bloc.dart';
import 'package:block_test/bloc/student_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Flutter Bloc Test'),
        backgroundColor: Colors.blue,
      ),
      body:
          BlocBuilder<StudentBloc, StudentMainState>(builder: (context, state) {
        if (state is StudntLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is StudentSuccess) {
          return ListView.builder(
              itemCount: state.students.length,
              itemBuilder: (context, index) {
                var student = state.students[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 1,
                          color: Colors.grey,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        student.name ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            student.className!.name ?? '',
                            textAlign: TextAlign.end,
                          ),
                          Text(
                            student.phone ?? '',
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              });
        } else if (state is StudentError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('No Data'));
        }
      }),
    );
  }
}

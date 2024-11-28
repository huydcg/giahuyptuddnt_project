import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  print(task2());
//  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = const Duration(seconds: 3);

  // You can return the result directly after the delay
  String result = await Future.delayed(threeSeconds, () {
    print('Task 2 complete');
    return 'task 2 data'; // Return directly here
  });

  return result; // Return the result after the delay
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

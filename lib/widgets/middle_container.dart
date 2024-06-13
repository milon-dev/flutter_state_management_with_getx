import 'package:flutter/material.dart';
import 'child_container.dart';
import 'counter_two.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[200],
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ChildContainer(),
              const SizedBox(width: 20.0),
              CounterTwo(),
            ],
          ),
        ],
      ),
    );
  }
}


// class MiddleContainer extends StatelessWidget {
//   final int counter;
//   const MiddleContainer({
//     Key? key,
//     required this.counter,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[200],
//       padding: const EdgeInsets.all(20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const ChildContainer(),
//           const SizedBox(width: 20.0),
//           CounterTwo(counter: counter),
//         ],
//       ),
//     );
//   }
// }
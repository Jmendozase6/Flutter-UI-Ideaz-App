import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddShareWithPerson extends StatelessWidget {
  const AddShareWithPerson({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        DottedBorder(
          borderType: BorderType.Circle,
          color: Colors.grey,
          strokeWidth: 1,
          dashPattern: const [5],
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.add, color: Colors.grey, size: 30),
          ),
        ),
      ],
    );
  }
}

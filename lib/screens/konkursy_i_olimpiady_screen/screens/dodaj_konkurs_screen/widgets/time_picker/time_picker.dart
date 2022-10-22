// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/date_picker/textfield_input_decoration.dart';
import 'package:intl/intl.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({
    super.key,
    required this.fieldName,
    required this.myIcon,
  });

  final String fieldName;
  final IconData myIcon;

  @override
  State<StatefulWidget> createState() {
    return _TimePicker();
  }
}

class _TimePicker extends State<TimePicker> {
  TextEditingController timeinput = TextEditingController();

  @override
  void initState() {
    timeinput.text = ''; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: timeinput,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.secondary,
        ),
        decoration: textFieldInputDecoration(
          fieldName: widget.fieldName,
          myIcon: widget.myIcon,
        ),
        readOnly: true, //set it true, so that user will not able to edit text
        onTap: () async {
          TimeOfDay? pickedTime = await showTimePicker(
            initialTime: TimeOfDay.now(),
            context: context,
          );

          if (pickedTime != null) {
            debugPrint(
                'pickedTime = ${pickedTime.format(context)}'); //output 10:51 PM
            DateTime parsedTime =
                DateFormat.jm().parse(pickedTime.format(context).toString());
            //converting to DateTime so that we can further format on different pattern.
            debugPrint(
                'parsedTime = $parsedTime'); //output 1970-01-01 22:53:00.000
            String formattedTime = DateFormat('HH:mm').format(parsedTime);
            debugPrint('formattedTime = $formattedTime'); //output 14:59:00
            //DateFormat() is from intl package, you can format the time on any pattern you need.

            setState(() {
              timeinput.text = formattedTime; //set the value of text field.
            });
          } else {
            debugPrint('Time is not selected');
          }
        },
      ),
    );
  }
}

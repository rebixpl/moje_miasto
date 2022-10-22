// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/date_picker/textfield_input_decoration.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    super.key,
    required this.fieldName,
    required this.myIcon,
  });

  final String fieldName;
  final IconData myIcon;

  @override
  State<StatefulWidget> createState() {
    return _DatePicker();
  }
}

class _DatePicker extends State<DatePicker> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ''; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: dateInput,
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
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2100));

          if (pickedDate != null) {
            debugPrint(
                'pickedDate = $pickedDate'); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            debugPrint(
                'formattedDate = $formattedDate'); //formatted date output using intl package =>  2021-03-16
            setState(
              () {
                dateInput.text =
                    formattedDate; //set output date to TextField value.
              },
            );
          }
        },
      ),
    );
  }
}

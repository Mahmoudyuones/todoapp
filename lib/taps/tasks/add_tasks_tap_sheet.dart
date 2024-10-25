import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/widgets/custom_eleveted_botton.dart';
import 'package:todoapp/widgets/custom_text_form_field.dart';

class AddTasksTapSheet extends StatefulWidget {
  @override
  State<AddTasksTapSheet> createState() => _AddTasksTapSheetState();
}

class _AddTasksTapSheetState extends State<AddTasksTapSheet> {
  TextEditingController titleControler = TextEditingController();
  TextEditingController descriptionControler = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .55,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add New Task',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Title can not be empty';
                  }
                  return null;
                },
                controller: titleControler,
                hintText: "Enter task title",
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Description can not be empty';
                  }
                  return null;
                },
                controller: descriptionControler,
                hintText: "Enter task description",
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Select date",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () async {
                  DateTime? dateTime = await showDatePicker(
                    initialDate: selectedDate,
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                      Duration(days: 365),
                    ),
                  );
                  if (dateTime != null) {
                    selectedDate = dateTime;
                    setState(() {});
                  }
                },
                child: Text(
                  dateFormat.format(selectedDate),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevetedBotton(
                label: 'Add Task',
                omPressed: () {
                  if (formkey.currentState!.validate()) {
                    addTask();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  addTask() {}
}

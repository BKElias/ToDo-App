import 'package:flutter/material.dart';
//import 'package:calender_picker/calender_picker.dart';
//import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class CreateToDo extends StatefulWidget {
  const CreateToDo({Key? key}) : super(key: key);

  @override
  State<CreateToDo> createState() => _CreateToDoState();
}

class _CreateToDoState extends State<CreateToDo> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: false,
        title: Text(
          "My ToDo App",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(children: [
                TextField(
                  style: Theme.of(context).textTheme.headline2,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(
                        //     color: Colors.amber,
                        //     width: 5,
                        //     style: BorderStyle.solid)
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "ToDo Title",
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Container(
                  height: 15,
                ),
                TextField(
                  maxLines: 4,
                  style: Theme.of(context).textTheme.headline2,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "ToDo Title",
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Container(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Start ToDo",
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  onTap: () async {
                    DateTime? result = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(1990));

                    if (result != null) {}
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "End ToDo",
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  onTap: () async {
                    DateTime? result = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(1990));

                    if (result != null) {}
                  },
                ),
                Container(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 0.1,
                  //width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.backgroundColor),
                    onPressed: () {},
                    child: Text(
                      "Create ToDo",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    // style: ButtonStyle(elevation: MaterialStateProperty(),
                  ),
                ),
              ]),

              // TextField(
              //   onTap: () {
              //     _selectDate(context);
              //     Text(
              //       "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
              //       style: Theme.of(context).textTheme.bodyText1,
              //     );
              //   },

              //   //    ElevatedButton(
              //   // onPressed: () {
              //   //   _selectDate(context);
              //   // },
              // )

              // InputDatePickerFormField(
              //     firstDate: DateTime.now(), lastDate: DateTime.now())
              // //   DatePickerDialog(
              //       initialDate: DateTime.now(),
              //       firstDate: DateTime.now(),
              //       lastDate: DateTime.now())
              // ],
            ),
          ),
        ],
      ),
    );
  }

  String date = "";
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime selected = showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    ) as DateTime;
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}

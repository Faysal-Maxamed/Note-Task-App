import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController taskcontroller = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();
  bool finished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ec4b6),
      appBar: AppBar(
        backgroundColor: Color(0xff2ec4b6),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Create your tasks",
                    style: GoogleFonts.rubik(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person_3_outlined,
                      color: Colors.grey,
                      size: 35,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: taskcontroller,
                decoration: const InputDecoration(
                  hintText: "Enter your task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selected Date : ${selectedDate.year}  ${timeOfDay.minute}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Finished ?",
                    style: GoogleFonts.rubik(fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        finished = !finished;
                      });
                    },
                    icon: Icon(
                      finished
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(3000));
                      if (dateTime != null) {
                        setState(() {
                          selectedDate = dateTime;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      backgroundColor: Color(0xff9c89b8),
                      foregroundColor: Colors.white,
                    ),
                    child: Text("choose Date"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      TimeOfDay? time = await showTimePicker(
                        context: context,
                        initialTime: timeOfDay,
                      );
                      if (time != null) {
                        setState(() {
                          timeOfDay = time;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      backgroundColor: Color(0xff9c89b8),
                      foregroundColor: Colors.white,
                    ),
                    child: Text("choose Time"),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        "Save",
                        style: GoogleFonts.rubik(fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

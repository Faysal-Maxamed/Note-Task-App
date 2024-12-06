import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2ec4b6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter your task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   "Selected Date : 11/2/2002  3:09 am",
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.grey.shade200,
              //   ),
              // ),
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.radio_button_checked,
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
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(3000));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      backgroundColor: Color(0xff9c89b8),
                      foregroundColor: Colors.white,
                    ),
                    child: Text("choose Date"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
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
                      onPressed: () {},
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

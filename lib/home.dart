import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytask_app/task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff2ec4b6),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("images/task.png"),
            ),
            Text(
              "Never More in \n rush ",
              style: GoogleFonts.fruktur(fontSize: 35, color: Colors.black),
            ),
            Text(
              "Check and Keep under control your daily \n task is a creative way",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                  letterSpacing: 1.0),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => TaskScreen()));
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          height: 40,
          width: 60,
          decoration: const BoxDecoration(
            color: Color(0xff2ec4b6),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(right: 6),
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

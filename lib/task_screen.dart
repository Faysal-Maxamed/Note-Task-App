import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytask_app/create_page.dart';
import 'package:mytask_app/task_provider.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return Scaffold(
      backgroundColor: Color(0xff2ec4b6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My task",
                    style: GoogleFonts.rubik(
                        fontSize: 30,
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
              Expanded(
                  child: ListView.builder(
                      itemCount: taskProvider.Tasks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 4,
                                color: taskProvider.Tasks[index].finished
                                    ? Colors.amber
                                    : Colors.red,
                              ),
                              Expanded(
                                child: Card(
                                  color: Colors.grey.shade300,
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: ListTile(
                                      leading: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            color: Colors.blue,
                                            taskProvider.Tasks[index].finished
                                                ? Icons.radio_button_checked
                                                : Icons.radio_button_unchecked),
                                      ),
                                      title:
                                          Text(taskProvider.Tasks[index].title),
                                      subtitle: Text(
                                        taskProvider.Tasks[index].Date
                                            .toString(),
                                      ),
                                      trailing: IconButton(
                                        onPressed: () {
                                          context
                                              .read<TaskProvider>()
                                              .deletetasks(index);
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CreatePage()));
        },
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(
          Icons.add,
          size: 35,
          color: Color(0xff2ec4b6),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

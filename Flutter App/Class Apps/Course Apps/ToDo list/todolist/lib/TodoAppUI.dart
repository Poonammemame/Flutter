import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //googlefonts
import 'TodoModel.dart';
import 'package:intl/intl.dart'; //date

class TodoAppUI extends StatefulWidget {
  const TodoAppUI({super.key});

  @override
  State<TodoAppUI> createState() => _TodoAppUIState();
}

class _TodoAppUIState extends State<TodoAppUI> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  ///List of Cards
  List<TodoModel> todoCards = [
    TodoModel(
        title: "Flutter",
        description:
            "Dart,Async & Await,Classes & Object,Abstract Classes,Inheritance,Polymorphism",
        date: "17 October, 2024"),
    TodoModel(
        title: "Java",
        description:
            "Exception,Encapsulation,Constructors,JDBC,JVM,Non-static Members,Streams API",
        date: "18 October, 2024"),
    TodoModel(
      title: "Python",
      description:
          "Inheritance,Functions,Lambda Functions,Lists, Tuples, and Sets,Dictionaries",
      date: "20 October, 2024",
    ),
  ];

  //List of colors
  List<Color> cardColorsList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
//image list
  List<String> cardImageList = [
    'assets/flutter.png',
    'assets/java.png',
    'assets/python.png',
    'assets/c sharp.png',
  ];

  void submit(bool doEdit, [TodoModel? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doEdit) {
        //edit
        todoObj!.title = titleController.text;
        todoObj.description = descriptionController.text;
        todoObj.date = dateController.text;
      } else {
        //NEW CARDS
        todoCards.add(
          TodoModel(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text,
          ),
        );
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState(() {});
  }

  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void showBottomSheet(bool doEdit, [TodoModel? todoObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 12.0,
            right: 12.0,
            left: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Todo",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

//Title textfield
              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(0, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

//description textfield
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(0, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1.0),
                    ),
                  ),
                ),
              ),

//Date textfield
              const SizedBox(
                height: 20,
              ),

//description textfield
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(0, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 139, 1.0),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.calendar_month_outlined,
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2025),
                  );
                  String formattedDate = DateFormat.yMMMd().format(pickedDate!);
                  setState(() {
                    dateController.text = formattedDate;
                  });
                },
              ),

              const SizedBox(
                height: 10,
              ),
//submit
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (doEdit == true) {
                      submit(true, todoObj);
                    } else {
                      submit(false);
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: todoCards.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: cardColorsList[index % cardColorsList.length],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              shape: BoxShape.circle,
                            ),
                            //borderRadius: BorderRadius.circular(20)),
                            child: ClipOval(
                              child: Image.asset(
                                cardImageList[index % cardImageList.length],
                                fit: BoxFit.cover,
                              ),
                            )
                            // Image.asset( "assets/Vector.jpg",),
                            //Icon(Icons.image),
                            ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      //card content
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //title
                            Text(
                              todoCards[index].title,
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),

                            //description
                            Text(
                              todoCards[index].description,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          todoCards[index].date,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color.fromRGBO(132, 132, 132, 1),
                          ),
                        ),
                        const Spacer(),

                        //edit icon
                        GestureDetector(
                          onTap: () {
                            titleController.text = todoCards[index].title;
                            descriptionController.text =
                                todoCards[index].description;
                            dateController.text = todoCards[index].date;
                            showBottomSheet(
                              true,
                              todoCards[index],
                            );
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Color.fromRGBO(0, 139, 148, 1.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),

                        //delete icon
                        GestureDetector(
                          onTap: () {
                            todoCards.remove(todoCards[index]);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.delete_outline_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(1, 139, 148, 1.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}

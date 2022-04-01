import 'package:cj/SprintPage.dart';
import 'package:cj/main.dart';
import 'package:flutter/material.dart';

class Add_task extends StatefulWidget {
  const Add_task({Key? key}) : super(key: key);

  @override
  State<Add_task> createState() => _Add_taskState();
}

class _Add_taskState extends State<Add_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        centerTitle: true,
      ),
      body: new Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: new Container(
            child: new Center(
                child: new Column(children: [
              new Padding(padding: EdgeInsets.only(top: 50.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter task Name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter task description",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                      onPressed: () {},
                      child: const Text('Save', style: TextStyle(fontSize: 20)),
                      color: Colors.teal,
                      textColor: Colors.white,
                      elevation: 5,
                    ),
                  ),
                  SizedBox(width: 10),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                      onPressed: () {},
                      child:
                          const Text('Cancel', style: TextStyle(fontSize: 20)),
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ])),
          )),
    );
  }
}

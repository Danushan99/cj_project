import 'package:cj/main.dart';
import 'package:flutter/material.dart';

class EditSprint extends StatelessWidget {
  const EditSprint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(
                title: 'Projects',
              ),
            ),
          ),
        ),
      ),
      body: new Container(
          padding: const EdgeInsets.all(27.0),
          color: Colors.white,
          child: new Container(
            child: new Center(
                child: new Column(children: [
              Text("Edit Sprint Details", style: TextStyle(fontSize: 20)),
              new Padding(padding: EdgeInsets.only(top: 50.0)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sprint Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              SizedBox(
                height: 10,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Edit Sprint Name",
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
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sprint description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              SizedBox(
                height: 15,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Edit Sprint description",
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

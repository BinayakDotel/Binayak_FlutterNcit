import 'package:flutter/material.dart';


class AddData extends StatefulWidget{
  final listData;

  AddData(this.listData);
  @override
  State<StatefulWidget> createState(){
    return AddDataState(this.listData);
  }
}
class AddDataState extends State<AddData>{
  final _formKey = GlobalKey<FormState>();
  List initialList;
  TextEditingController myController = new TextEditingController();

  AddDataState(this.initialList);

  void addToList(){
    print('Initial List: $initialList');

    setState((){
      initialList.add(myController.text);
    });
    print('Final List: $initialList');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key : _formKey,
        child:
        Column(
          children: <Widget>[
            TextFormField(
              controller: myController,
            ),
            FloatingActionButton(
              child:
                Icon(Icons.add),
              onPressed: addToList,
            ),
          ],
        ),
    );
    }
}
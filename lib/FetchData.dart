import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchData extends StatelessWidget {

  Future<List> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull('https://my-json-server.typicode.com/typicode/demo/posts'),
      headers: {"Accept" : "applicaton/json"},
    );
    List fdata = jsonDecode(response.body);
    print(fdata);
    return (fdata);
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child:
        FloatingActionButton(
            child: Icon(
              Icons.data_usage,
            ),
            onPressed: getData,
        ),
      );
  }
}

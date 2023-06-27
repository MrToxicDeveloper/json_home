import 'package:flutter/material.dart';

class JsonView extends StatefulWidget {
  const JsonView({Key? key}) : super(key: key);

  @override
  State<JsonView> createState() => _JsonViewState();
}

class _JsonViewState extends State<JsonView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Json Parsing"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  // title: ,
                  // trailing: Icon(Icons.more_vert),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

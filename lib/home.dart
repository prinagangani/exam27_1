import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtno = TextEditingController();
  int num = 1;
  List<int> ans = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,centerTitle: true,
          title: Text("Multiplication Table", style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: txtno,
                  decoration: InputDecoration(border: OutlineInputBorder(),focusedBorder: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num = int.parse(txtno.text);
                      for (int i = 1; i <= 10; i++) {
                        ans.add(i);
                      }
                      print(num);
                    });
                  },
                  child: Text("Create")),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                        "${num}*${index + 1} = ${num *(index + 1)}",style: TextStyle(fontSize: 25)),
                          itemCount: ans.length,
                          shrinkWrap: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adduser extends StatefulWidget {
  const Adduser({super.key});

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
  final  bloodgroups=["A+",'A-','B+',"B-",'O+','O-','AB+','AB-'];
  String? selectedGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("add donners"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Doner Name"
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                          labelText: 'Select BloodGroup'
                      ),
                      items: bloodgroups.map((e) => DropdownMenuItem(child: Text(e),value: e,),).toList(), onChanged: (val){
                    selectedGroup=val;
                  }),
                ),
                ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(double.infinity,50)),
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text("Submit",style: TextStyle(fontSize: 20),),)
              ],
            ),
            )
       );
   }
}
import 'package:flutter/material.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  TextEditingController name=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController location=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Details"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: name,
            decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Enter Name")),
          ),
          SizedBox(height: 20,),
           TextFormField(
            controller: age,
            decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Enter Age")),
          ),
          SizedBox(height: 20,),
           TextFormField(
            controller: location,
            decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Enter Location")),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Add"))
        ],
      ),
    );
  }
}
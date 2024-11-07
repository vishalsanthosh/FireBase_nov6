import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static Future addEmployeDetails(Map<String,dynamic> employeInfoMap,String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).set(employeInfoMap);
  }
  static Future <Stream<QuerySnapshot>> getEmployeDetails()async{
    return FirebaseFirestore.instance.collection("Employee").snapshots();
  }
  static Future updateEmployeDetails(String id,Map<String,dynamic>updateinfo)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateinfo);
  }
  static Future deleteEmployeDetails(String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
  }
}
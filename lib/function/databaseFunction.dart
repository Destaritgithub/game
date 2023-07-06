import 'package:cloud_firestore/cloud_firestore.dart';

createUser(String collectionNeme, documentName, userName, int balance) async {
  FirebaseFirestore.instance
      .collection(collectionNeme)
      .doc(documentName)
      .set({'userName': userName, 'balance': balance});
  print('Database updated');
}

updateUser(String collectionName, documentName, field, var newField) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(documentName)
      .update({field: newField});
  print('Fields updated');
}

deleteUser(String collectionName, documentName) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(documentName)
      .delete();
  print('Document Deleted');
}

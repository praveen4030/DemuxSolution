import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {


  CollectionReference get questionsCollection => collection('Questions');

}

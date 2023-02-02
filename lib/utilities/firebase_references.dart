import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

// fireStore instance
final fireStore = FirebaseFirestore.instance;

// user collection reference
final userFirestoreReference = fireStore.collection('users');

// product collection reference
final productFirestoreReference = fireStore.collection('products');

// sales collection reference
final salesFirestoreReference = fireStore.collection('sales');


// Firebase Storage Ref
Reference get firebaseStorageReference => FirebaseStorage.instance.ref();



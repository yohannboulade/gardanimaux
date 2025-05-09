// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future reorderFirebaseItems(
  List<PhotosRecord> list,
  int oldIndex,
  int newIndex,
) async {
  // Add your function code here!
  print('Old Index: $oldIndex');
  print('New Index: $newIndex');

  if (oldIndex < newIndex) {
    newIndex -= 1;
  }
  final PhotosRecord item = list.removeAt(oldIndex);
  list.insert(newIndex, item);

  final batch = FirebaseFirestore.instance.batch();

  // Parcourir la liste et vérifier l'ordre avant la mise à jour
  for (int i = 0; i < list.length; i++) {
    final PhotosRecord doc = list[i];
    print('Updating document ${doc.reference.id} with order: $i');
    batch.update(doc.reference, {'order': i});
  }

  // Confirmer l'engagement du batch
  await batch.commit().then((_) {
    print('Batch update successful!');
  }).catchError((error) {
    print('Error during batch update: $error');
  });

  return;
}

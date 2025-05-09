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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<double> calculMoyenne(List<DocumentReference> recommendations) async {
  double totalRating = 0;
  int count = 0;

  try {
    for (var docRef in recommendations) {
      DocumentSnapshot doc = await docRef.get();
      if (doc.exists) {
        // Conversion sécurisée pour les données Firestore
        final data = doc.data() as Map<String, dynamic>?;
        if (data != null && data.containsKey('rating')) {
          // S'assurer que la valeur est un nombre
          final rating = data['rating'];
          if (rating is num) {
            totalRating += rating.toDouble();
            count++;
          }
        }
      }
    }

    // Calculer la moyenne
    final moyenne = count > 0 ? totalRating / count : 0.0;
    print('Moyenne calculée: $moyenne (Total: $totalRating, Count: $count)');
    return moyenne;
  } catch (e) {
    print('Erreur lors du calcul de la moyenne: $e');
    return 0.0;
  }
}

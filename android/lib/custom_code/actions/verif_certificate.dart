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

Future<bool> verifCertificate(DocumentReference user) async {
  bool certificate = true;

  try {
    // Récupérer les vidéos marquées comme "primary"
    final querySnapshot = await FirebaseFirestore.instance
        .collection('video_training') // nom corrigé ici
        .where('primary', isEqualTo: true)
        .get();

    final primaryVideos = querySnapshot.docs;

    // Récupérer le document utilisateur
    final userDoc = await user.get();
    final userData = userDoc.data() as Map<String, dynamic>;

    final List<dynamic> viewedVideos = userData['view'] ?? [];

    for (final videoDoc in primaryVideos) {
      final videoRef = videoDoc.reference;

      // Vérifier si la vidéo a été vue
      if (!viewedVideos.contains(videoRef)) {
        certificate = false;
        break;
      }
    }

    return certificate;
  } catch (e) {
    print('Erreur dans verifCertificate: $e');
    return false;
  }
}

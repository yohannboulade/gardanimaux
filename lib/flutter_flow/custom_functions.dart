import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double division(double price) {
  return price / 100;
}

double multiplication(double price) {
  return price * 100;
}

double calculTotal(
  double price,
  double quantity,
) {
  return price * quantity;
}

int calculNbJou(
  DateTime dateStart,
  DateTime dateEnd,
  String unit,
) {
  // S'assurer que dateEnd est après dateStart
  if (dateEnd.isBefore(dateStart)) {
    var temp = dateStart;
    dateStart = dateEnd;
    dateEnd = temp;
  }

  if (unit == "Jour") {
    // Calculer la différence en jours
    int differenceEnJours = dateEnd.difference(dateStart).inDays;
    // Retourner au minimum 1 jour
    return differenceEnJours > 0 ? differenceEnJours : 1;
  } else if (unit == "Nuit") {
    // Pour les nuits, on compte le nombre de passages à minuit
    // On utilise DateTime sans l'heure pour compter les jours calendaires
    DateTime dateStartSansHeure =
        DateTime(dateStart.year, dateStart.month, dateStart.day);
    DateTime dateEndSansHeure =
        DateTime(dateEnd.year, dateEnd.month, dateEnd.day);

    // Si les dates sont le même jour, il n'y a pas de nuit
    if (dateStartSansHeure.isAtSameMomentAs(dateEndSansHeure)) {
      return 0;
    }

    // Sinon, on compte le nombre de jours entre les deux dates
    return dateEndSansHeure.difference(dateStartSansHeure).inDays;
  }

  // Valeur par défaut si l'unité n'est ni "Jour" ni "Nuit"
  return 0;
}

double calculHorsCommition(
  double amont,
  double taux,
) {
  return amont - (amont * (taux / 100));
}

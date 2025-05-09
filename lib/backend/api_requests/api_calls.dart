import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Stripe groupe Group Code

class StripeGroupeGroup {
  static String getBaseUrl() => 'https://api.stripe.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
    'Content-Type': 'application/x-www-form-urlencoded',
  };
  static NewProviderCall newProviderCall = NewProviderCall();
  static UpdateProviderCall updateProviderCall = UpdateProviderCall();
  static GetProviderCall getProviderCall = GetProviderCall();
  static GetProviderListCall getProviderListCall = GetProviderListCall();
  static DeletProviderCall deletProviderCall = DeletProviderCall();
  static GetExternalAccountCall getExternalAccountCall =
      GetExternalAccountCall();
  static GetChargeCall getChargeCall = GetChargeCall();
  static NewExternalAccountCall newExternalAccountCall =
      NewExternalAccountCall();
  static TransfersFondCall transfersFondCall = TransfersFondCall();
  static CreateTokenCall createTokenCall = CreateTokenCall();
  static PayoutCall payoutCall = PayoutCall();
  static BalanceCall balanceCall = BalanceCall();
  static CreatedLinkAcountCall createdLinkAcountCall = CreatedLinkAcountCall();
  static RefoundsCall refoundsCall = RefoundsCall();
}

class NewProviderCall {
  Future<ApiCallResponse> call({
    String? token = 'ct_1QjJ9XBLCVwxUzbvulUbKg3D',
    String? email = 'toto@test.fr',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'new provider',
      apiUrl: '${baseUrl}/accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
        'type': "custom",
        'settings[payouts[schedule[interval]]]': "manual",
        'account_token': token,
        'requested_capabilities[]': "transfers",
        'business_profile[url]': "http://propsync-system.fr",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProviderCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    int? day,
    int? month,
    int? year,
    String? adress = '',
    String? codeZip = '',
    String? city = '',
    String? contry = 'FR',
    String? idProvider = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'update provider',
      apiUrl: '${baseUrl}/accounts/${idProvider}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'business_profile[url]': "https://propsync-system.fr",
        'individual[first_name]': firstName,
        'individual[last_name]': lastName,
        'individual[dob][day]': day,
        'individual[dob][month]': month,
        'individual[dob][year]': year,
        'individual[address][line1]': adress,
        'individual[address][postal_code]': codeZip,
        'individual[address][city]': city,
        'individual[address][country]': contry,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProviderCall {
  Future<ApiCallResponse> call({
    String? idProvider = 'acct_1QjLmGB7sAZOuxXZ',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get provider',
      apiUrl: '${baseUrl}/accounts/${idProvider}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? individualData(dynamic response) => getJsonField(
        response,
        r'''$.individual''',
      );
  List? externalAccountList(dynamic response) => getJsonField(
        response,
        r'''$.external_accounts.data''',
        true,
      ) as List?;
}

class GetProviderListCall {
  Future<ApiCallResponse> call({
    String? idProvider = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get provider list',
      apiUrl: '${baseUrl}/accounts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletProviderCall {
  Future<ApiCallResponse> call({
    String? accountId = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delet provider',
      apiUrl: '${baseUrl}/accounts/${accountId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetExternalAccountCall {
  Future<ApiCallResponse> call({
    String? idProvider = '',
    String? idAccount = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get external account',
      apiUrl:
          '${baseUrl}/accounts/${idProvider}/external_accounts/${idAccount}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChargeCall {
  Future<ApiCallResponse> call({
    String? pi = 'pi_3RHms0BLCVwxUzbv3LxMVZjD',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get charge',
      apiUrl: '${baseUrl}/payment_intents/${pi}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? ch(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.latest_charge''',
      ));
}

class NewExternalAccountCall {
  Future<ApiCallResponse> call({
    String? id = 'acct_1QWc4xBQOQJD55NO',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'new external account',
      apiUrl: '${baseUrl}/accounts/${id}/external_accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'external_account[country]': "FR",
        'external_account[currency]': "EUR",
        'external_account[account_number]': "FR1420041010050500013M02606",
        'external_account[object]': "bank_account",
        'external_account[account_holder_name]': "Test 2",
        'external_account[default_for_currency]': true,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TransfersFondCall {
  Future<ApiCallResponse> call({
    String? sourceTransaction = '',
    double? amount,
    String? destination = '',
    String? currency = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'transfers fond',
      apiUrl: '${baseUrl}/transfers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'currency': currency,
        'destination': destination,
        'amount': amount,
        'source_transaction': sourceTransaction,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTokenCall {
  Future<ApiCallResponse> call({
    String? businessType = 'individual',
    bool? tosShownAndAccepted = true,
    String? firstName = '',
    String? lastName = '',
    String? addressCity = '',
    String? addressCountry = 'FR',
    String? addressLine1 = '',
    String? addressPostalCode = '',
    String? dobDay = '',
    String? dobMonth = '',
    String? dobYear = '',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create token',
      apiUrl: '${baseUrl}/tokens',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'account[business_type]': businessType,
        'account[tos_shown_and_accepted]': tosShownAndAccepted,
        'account[individual][first_name]': firstName,
        'account[individual][last_name]': lastName,
        'account[individual][address][city]': addressCity,
        'account[individual][address][country]': addressCountry,
        'account[individual][address][line1]': addressLine1,
        'account[individual][address][postal_code]': addressPostalCode,
        'account[individual][dob][day]': dobDay,
        'account[individual][dob][month]': dobMonth,
        'account[individual][dob][year]': dobYear,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tokenId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class PayoutCall {
  Future<ApiCallResponse> call({
    String? idProvider = 'acct_1QWc4xBQOQJD55NO',
    int? amount,
    String? destination = 'ba_1QWc5nBQOQJD55NO4UF2k3N9',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'payout',
      apiUrl: '${baseUrl}/payouts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Stripe-Account': '${idProvider}',
      },
      params: {
        'amount': amount,
        'currency': "eur",
        'destination': destination,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BalanceCall {
  Future<ApiCallResponse> call({
    String? idProvider = 'acct_1QWc4xBQOQJD55NO',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'balance',
      apiUrl: '${baseUrl}/balance',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Stripe-Account': '${idProvider}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? balanceAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.available[:].amount''',
      ));
  int? pendingAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pending[:].amount''',
      ));
}

class CreatedLinkAcountCall {
  Future<ApiCallResponse> call({
    String? account = 'acct_1QmE31BIvps3AabX',
    String? type = 'account_onboarding',
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'created link acount',
      apiUrl: '${baseUrl}/account_links',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'account': account,
        'type': type,
        'refresh_url': "http://google.fr",
        'return_url': "http://google.fr",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefoundsCall {
  Future<ApiCallResponse> call({
    String? charge = '',
    double? amount,
  }) async {
    final baseUrl = StripeGroupeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'refounds',
      apiUrl: '${baseUrl}/refunds',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Q1onhBLCVwxUzbvD6Z5FNMdcfNVLP4UOlGzsAz5A4B9jitYInVm9bTR0E4bHh3Wcr8Mbs3HrQXCjUi5WPcyW9WK00Nn8VXmFR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'charge': charge,
        'amount': amount,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Stripe groupe Group Code

/// Start Notification Mailjet Group Code

class NotificationMailjetGroup {
  static String getBaseUrl() => 'https://api.mailjet.com/v3.1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization':
        'Basic YjM4YmRkODQ1ZGNlN2M5MDM1MjQ0ODc1MDU2YTMyNTM6MzY4OWU4OTQwOWJjOTk4NWFkZjdlZTFhYTFhNmM0NGY=',
  };
  static NewOrderProviderCall newOrderProviderCall = NewOrderProviderCall();
  static CancelOrderProviderCall cancelOrderProviderCall =
      CancelOrderProviderCall();
  static NewOrderCustomerCall newOrderCustomerCall = NewOrderCustomerCall();
  static CancelOrderCustomerCall cancelOrderCustomerCall =
      CancelOrderCustomerCall();
}

class NewOrderProviderCall {
  Future<ApiCallResponse> call({
    String? customerName = '',
    String? providerEmail = '',
    String? provaiderName = '',
    String? dateDebut = '',
    String? dateFin = '',
    String? typeAnimal = '',
    String? typePrestation = '',
    String? totalPrice = '',
  }) async {
    final baseUrl = NotificationMailjetGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Messages": [
    {
      "From": {
        "Email": "contact@gardanimaux.fr",
        "Name": "Jordi Gardanimaux"
      },
      "To": [
        {
          "Email": "${escapeStringForJson(providerEmail)}",
          "Name": "${escapeStringForJson(provaiderName)}"
        }
      ],
      "Subject": "Nouvelle commande à confirmer sur GardAnimaux !",
      "TextPart": "Bonjour ${escapeStringForJson(provaiderName)},\\nUne nouvelle commande vous a été attribuée sur GardAnimaux !\\nMerci de prendre soin du compagnon de ${escapeStringForJson(customerName)}.\\nVoici les détails de la prestation :\\n- Type de prestation : ${escapeStringForJson(typePrestation)}\\n- Date de début : ${escapeStringForJson(dateDebut)}\\n- Date de fin : ${escapeStringForJson(dateFin)}\\n- Animal : ${escapeStringForJson(typeAnimal)}\\n- Client : ${escapeStringForJson(customerName)}\\n- Prix total : ${escapeStringForJson(totalPrice)} €\\nVeuillez confirmer la prise en charge de cette commande depuis votre espace GardAnimaux.\\nMerci pour votre engagement 🐾\\nL’équipe GardAnimaux",
      "HTMLPart": "<html><body style=\\"font-family: Arial, sans-serif; color: #333;\\"><h2>Nouvelle commande pour vous, ${escapeStringForJson(provaiderName)} !</h2><p>Une nouvelle réservation vous a été confiée sur <strong>GardAnimaux</strong> 🐶🐱</p><p><strong>Détails de la commande :</strong></p><ul><li><strong>Type de prestation :</strong> ${escapeStringForJson(typePrestation)}</li><li><strong>Date de début :</strong> ${escapeStringForJson(dateDebut)}</li><li><strong>Date de fin :</strong> ${escapeStringForJson(dateFin)}</li><li><strong>Animal :</strong> ${escapeStringForJson(typeAnimal)}</li><li><strong>Client :</strong> ${escapeStringForJson(customerName)}</li><li><strong>Prix total :</strong> ${escapeStringForJson(totalPrice)} €</li></ul><p>Merci de confirmer la prestation depuis votre espace prestataire.</p><p style=\\"margin-top: 20px;\\">— L’équipe <strong>GardAnimaux</strong> 🐾</p></body></html>"
    }
  ]
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'new order provider',
      apiUrl: '${baseUrl}/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic YjM4YmRkODQ1ZGNlN2M5MDM1MjQ0ODc1MDU2YTMyNTM6MzY4OWU4OTQwOWJjOTk4NWFkZjdlZTFhYTFhNmM0NGY=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelOrderProviderCall {
  Future<ApiCallResponse> call({
    String? customerName = '',
    String? providerEmail = '',
    String? provaiderName = '',
    String? dateDebut = '',
    String? dateFin = '',
    String? typeAnimal = '',
    String? typePrestation = '',
    String? totalPrice = '',
  }) async {
    final baseUrl = NotificationMailjetGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Messages": [
    {
      "From": {
        "Email": "gardanimauxfrance@gmail.com",
        "Name": "Jordi Gardanimaux"
      },
      "To": [
        {
          "Email": "${escapeStringForJson(providerEmail)}",
          "Name": "${escapeStringForJson(provaiderName)}"
        }
      ],
      "Subject": "Commande annulée par le client",
      "TextPart": "Bonjour ${escapeStringForJson(provaiderName)},\\nLe client ${escapeStringForJson(customerName)} a annulé la commande suivante sur GardAnimaux :\\n- Type de prestation : ${escapeStringForJson(typePrestation)}\\n- Date de début : ${escapeStringForJson(dateDebut)}\\n- Date de fin : ${escapeStringForJson(dateFin)}\\n- Animal : ${escapeStringForJson(typeAnimal)}\\n- Prix total : ${escapeStringForJson(totalPrice)} €\\nNous restons à votre disposition pour toute nouvelle demande.\\nMerci pour votre compréhension,\\nL’équipe GardAnimaux 🐾",
      "HTMLPart": "<html><body style=\\"font-family: Arial, sans-serif; color: #333;\\"><h2>Commande annulée par le client</h2><p>Bonjour ${escapeStringForJson(provaiderName)},</p><p>Le client <strong>${escapeStringForJson(customerName)}</strong> a annulé la commande suivante sur <strong>GardAnimaux</strong> :</p><ul><li><strong>Type de prestation :</strong> ${escapeStringForJson(typePrestation)}</li><li><strong>Date de début :</strong> ${escapeStringForJson(dateDebut)}</li><li><strong>Date de fin :</strong> ${escapeStringForJson(dateFin)}</li><li><strong>Animal :</strong> ${escapeStringForJson(typeAnimal)}</li><li><strong>Prix total :</strong> ${escapeStringForJson(totalPrice)} €</li></ul><p>Nous restons à votre disposition pour toute future réservation.</p><p style=\\"margin-top: 20px;\\">— L’équipe <strong>GardAnimaux</strong> 🐾</p></body></html>"
    }
  ]
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'cancel order provider',
      apiUrl: '${baseUrl}/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic YjM4YmRkODQ1ZGNlN2M5MDM1MjQ0ODc1MDU2YTMyNTM6MzY4OWU4OTQwOWJjOTk4NWFkZjdlZTFhYTFhNmM0NGY=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewOrderCustomerCall {
  Future<ApiCallResponse> call({
    String? customerName = '',
    String? customerEmail = '',
    String? provaiderName = '',
    String? dateDebut = '',
    String? dateFin = '',
    String? typeAnimal = '',
    String? typePrestation = '',
    String? totalPrice = '',
  }) async {
    final baseUrl = NotificationMailjetGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Messages": [
    {
      "From": {
        "Email": "gardanimauxfrance@gmail.com",
        "Name": "Jordi Gardanimaux"
      },
      "To": [
        {
          "Email": "${escapeStringForJson(customerEmail)}",
          "Name": "${escapeStringForJson(customerName)}"
        }
      ],
      "Subject": "Merci pour votre nouvelle commande !",
      "TextPart": "Bonjour ${escapeStringForJson(customerName)},\\nMerci pour votre commande sur GardAnimaux !\\nVotre réservation a bien été enregistrée. Un(e) petsitter va s’occuper de votre compagnon avec soin.\\nVoici un récapitulatif de votre commande :\\n- Type de prestation : ${escapeStringForJson(typePrestation)}\\n- Date de début : ${escapeStringForJson(dateDebut)}\\n- Date de fin : ${escapeStringForJson(dateFin)}\\n- Animal : ${escapeStringForJson(typeAnimal)}\\n- Prestataire : ${escapeStringForJson(provaiderName)}\\n- Prix total : ${escapeStringForJson(totalPrice)} €\\nVous recevrez une notification dès que le/la petsitter validera la prestation.\\nMerci de votre confiance !\\nL’équipe GardAnimaux 🐾",
      "HTMLPart": "<html><body style=\\"font-family: Arial, sans-serif; color: #333;\\"><h2>Merci pour votre commande, ${escapeStringForJson(customerName)} !</h2><p>Votre réservation sur <strong>GardAnimaux</strong> a bien été enregistrée 🐶🐱</p><p><strong>Détails de la commande :</strong></p><ul><li><strong>Type de prestation :</strong> ${escapeStringForJson(typePrestation)}</li><li><strong>Date de début :</strong> ${escapeStringForJson(dateDebut)}</li><li><strong>Date de fin :</strong> ${escapeStringForJson(dateFin)}</li><li><strong>Animal :</strong> ${escapeStringForJson(typeAnimal)}</li><li><strong>Prestataire :</strong> ${escapeStringForJson(provaiderName)}</li><li><strong>Prix total :</strong> ${escapeStringForJson(totalPrice)} €</li></ul><p>Vous recevrez une notification dès que le/la petsitter aura confirmé la prestation.</p><p>Merci de votre confiance !</p><p style=\\"margin-top: 20px;\\">— L’équipe <strong>GardAnimaux</strong> 🐾</p></body></html>"
    }
  ]
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'new order customer',
      apiUrl: '${baseUrl}/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic YjM4YmRkODQ1ZGNlN2M5MDM1MjQ0ODc1MDU2YTMyNTM6MzY4OWU4OTQwOWJjOTk4NWFkZjdlZTFhYTFhNmM0NGY=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelOrderCustomerCall {
  Future<ApiCallResponse> call({
    String? customerName = '',
    String? customerEmail = '',
    String? provaiderName = '',
    String? dateDebut = '',
    String? dateFin = '',
    String? typeAnimal = '',
    String? typePrestation = '',
    String? totalPrice = '',
  }) async {
    final baseUrl = NotificationMailjetGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Messages": [
    {
      "From": {
        "Email": "gardanimauxfrance@gmail.com",
        "Name": "Jordi Gardanimaux"
      },
      "To": [
        {
          "Email": "${escapeStringForJson(customerEmail)}",
          "Name": "${escapeStringForJson(customerName)}"
        }
      ],
      "Subject": "Votre commande a été annulée",
      "TextPart": "Bonjour ${escapeStringForJson(customerName)},\\nNous sommes désolés de vous informer que votre commande a été annulée par le prestataire ${escapeStringForJson(provaiderName)}.\\nVoici un rappel des détails de la commande :\\n- Type de prestation : ${escapeStringForJson(typePrestation)}\\n- Date de début : ${escapeStringForJson(dateDebut)}\\n- Date de fin : ${escapeStringForJson(dateFin)}\\n- Animal : ${escapeStringForJson(typeAnimal)}\\n- Prix total : ${escapeStringForJson(totalPrice)} €\\nNous vous invitons à effectuer une nouvelle réservation sur GardAnimaux.\\nMerci de votre compréhension,\\nL’équipe GardAnimaux 🐾",
      "HTMLPart": "<html><body style=\\"font-family: Arial, sans-serif; color: #333;\\"><h2>Commande annulée par le prestataire</h2><p>Bonjour ${escapeStringForJson(customerName)},</p><p>Nous sommes désolés de vous informer que le prestataire <strong>${escapeStringForJson(provaiderName)}</strong> a annulé la commande suivante :</p><ul><li><strong>Type de prestation :</strong> ${escapeStringForJson(typePrestation)}</li><li><strong>Date de début :</strong> ${escapeStringForJson(dateDebut)}</li><li><strong>Date de fin :</strong> ${escapeStringForJson(dateFin)}</li><li><strong>Animal :</strong> ${escapeStringForJson(typeAnimal)}</li><li><strong>Prix total :</strong> ${escapeStringForJson(totalPrice)} €</li></ul><p>Nous vous invitons à effectuer une nouvelle réservation sur notre plateforme.</p><p>Merci de votre compréhension,</p><p style=\\"margin-top: 20px;\\">— L’équipe <strong>GardAnimaux</strong> 🐾</p></body></html>"
    }
  ]
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'cancel order customer',
      apiUrl: '${baseUrl}/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic YjM4YmRkODQ1ZGNlN2M5MDM1MjQ0ODc1MDU2YTMyNTM6MzY4OWU4OTQwOWJjOTk4NWFkZjdlZTFhYTFhNmM0NGY=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Notification Mailjet Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

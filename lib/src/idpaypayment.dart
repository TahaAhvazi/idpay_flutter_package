import 'dart:convert';
import 'package:http/http.dart' as http;

class IdpayPayment {
  Future<String> payTheMoney(
      // ignore: non_constant_identifier_names
      int? order_id,
      int amount,
      int phone,
      int isSandBox,
      String apiKey,
      String name,
      String mail,
      String desc,
      String callback) async {
    // ignore: avoid_print
    print("We have sent the request Please wait ✅");
    final response = await http.post(
      Uri.parse('https://api.idpay.ir/v1.1/payment'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'X-SANDBOX': '$isSandBox',
        'X-API-KEY': apiKey,
      },
      body: jsonEncode(
        <String, dynamic>{
          "order_id": order_id,
          "amount": amount,
          "name": name,
          "phone": phone,
          "mail": mail,
          "desc": desc,
          "callback": callback,
        },
      ),
    );
    // ignore: avoid_print
    print("Your status code is :${response.statusCode} ❕");
    if (response.statusCode == 201) {
      var myResponse = jsonDecode(response.body);
      // ignore: avoid_print
      print("The link is ${myResponse['link']}");
      return myResponse['link'];
    } else {
      throw Exception("We have an Unknown error 🛑");
    }
  }
}

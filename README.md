
# IDPAY PEYMANT GETAWAY 💫

By using this package, you will be able to easily register a transaction in the IDPAY payment portal, and as a result, you will receive the link of your portal as a string.




## How to use⁉️

#### Create a transaction✅

```
              String peymantLink = await IdpayPayment().payTheMoney(
              order_id,
              amount,
              phone,
              isSandBox,
              apiKey,
              name,
              mail,
              desc,
              callback,
            );
```

The arguments needed 🟢

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `order_id` | `string` | **Required**. The id of Order |


| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `amount`      | `int` | **Required**. The price of the Order (TOMAN) |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `phone`      | `int` | **Optional**. Phone number of user |

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `isSandBox`      | `int` | **Required**. in test mode set to 1 Product mode set to 0|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `apiKey`      | `string` | **Required**. Put your own API key, for test mode use this : 6a7f99eb-7c20-4412-a972-6dfb7cd253a4|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name`      | `string` | **Optional**. The name of user|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `mail`      | `string` | **Optional**. The mail of user|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `desc`      | `string` | **Optional**. The Description for peyment|

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `callback`      | `string` | **Optional**. The url that user will returned with status of transaction✅ |

#### Full example of this package💡

```
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                String myLink;
                final idpay = IdpayPayment();
                myLink = await idpay.payTheMoney(
                  101,
                  10000,
                  09163163827,
                  1,
                  "6a7f99eb-7c20-4412-a972-6dfb7cd253a4",
                  "طاها اهوازی",
                  "tahax.dev@gmail.com",
                  "Pay for supporting",
                  "https://test.com",
                );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(peymantUrl: myLink),
                  ),
                );
                print("This is my Link as a variblee: $myLink");
              },
              child: Text("Pay"),
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  final String peymantUrl;
  const PaymentPage({Key? key, required this.peymantUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: peymantUrl,
        ),
      ),
    );
  }
}

```






## Author👦

- [@Taha ahvazi ](https://github.com/TahaAhvazi)


## License

MIT License

Copyright (c) 2023 Taha ahvazi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


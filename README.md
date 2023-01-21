
# IDPAY PEYMANT GETAWAY | درگاه پرداخت ایدی پی 💫

By using this package, you will be able to easily register a transaction in the IDPAY payment portal, and as a result, you will receive the link of your portal as a string.

با استفاده از این پکیج به راحتی قادر به ثبت تراکنش در درگاه پرداخت ای دی پی  خواهید بود و در نتیجه لینک درگاه خود را به صورت رشته ای دریافت خواهید کرد.




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

[MIT](https://choosealicense.com/licenses/mit/)


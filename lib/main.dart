import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  String resualt = '';
  int num = 0, fact = 1;
  factorial() {
    setState(() {
      num = int.parse(controller1.text);

      for (int i = 1; i <= num; i++) {
        fact *= i;
      }
      resualt = '$fact';
    });
  }

  multiples() {
    setState(() {
      num = int.parse(controller1.text);
      List<int> multiples = [];

      for (int i = 1; i <= num; i++) {
        multiples.add(num * i);
      }
      resualt = '$multiples';
    });
  }

  convert() {
    setState(() {
      num = int.parse(controller1.text);

      for (int i = 0; i < 100; i++) {
        if (i > 1) {
          num = num * (-1);
          break;
        } else {
          num = num * (-1);
          break;
        }
      }
      resualt = '$num';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("حل الكوز"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "  النتيجة $resualt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "ادخل العدد",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      factorial();
                      controller1.clear();
                    },
                    child: Text("الفاكتوريل")),
                ElevatedButton(
                    onPressed: () {
                      multiples();
                      controller1.clear();
                    },
                    child: Text("مضاعفات العدد")),
                ElevatedButton(
                    onPressed: () {
                      convert();
                      controller1.clear();
                    },
                    child: Text("تحويل"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: AppBar(
        title: IconButton(
          icon: const Icon(Icons.notifications_on),
          onPressed: () {},
        ),
        actions: [
          Center(child: Image.asset("assets/splash.png")),
        ],
        backgroundColor: greenColor,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          // childAspectRatio: 1.2,
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
          children: <Widget>[
            Card(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/wing_card.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  "គណនី",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    child: Image.network(
                        'https://images.unsplash.com/photo-1502759683299-cdcd6974244f?auto=format&fit=crop&w=440&h=220&q=60',
                        fit: BoxFit.cover),
                    aspectRatio: 2 / 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(''),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  SizedBox(
                      width: 200,
                      height: 50,
                      child: Image.asset(
                        "assets/wing_card.png",
                        fit: BoxFit.cover,
                      )),
                  const Text(
                    "test",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  SizedBox(
                      width: 200,
                      height: 50,
                      child: Image.asset(
                        "assets/wing_card.png",
                        fit: BoxFit.cover,
                      )),
                  const Text(
                    "test",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        width: 250,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 80,
                color: greenColor,
              ),
              Container(
                height: 150,
                color: blueColor,
                // alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Chansamnang Lim',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'លេខគណនី: 015606046',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.qr_code_2,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            'បង្ហាញ QR របស់ខ្ញុំ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(
                  Icons.home,
                  color: greenColor,
                ),
                title: const Text(
                  'ទំព័រដំបូង',
                  style: TextStyle(
                    color: greenColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.card_membership),
                title: const Text(
                  'គ្រប់គ្រងកាត',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.favorite),
                title: const Text(
                  'ចំណូលចិត្ត',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.people),
                title: const Text(
                  'ប្រាប់មិត្តភក្ត័',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.pin_drop),
                title: const Text(
                  'ទីតាំងភ្នាក់ងារវីង',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.info),
                title: const Text(
                  'អំពីវីង',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.question_mark),
                title: const Text(
                  'សំណួរ និង​ ចម្លើយ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.call),
                title: const Text(
                  'ទំនាក់ទំណង',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                // dense: true,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                leading: const Icon(Icons.settings),
                title: const Text(
                  'ការកំណត់',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      appBar: AppBar(
        title: IconButton(
          icon: Icon(Icons.notifications_on),
          onPressed: () {},
        ),
        actions: [
          Center(child: Image.asset("assets/splash.png")),
        ],
        backgroundColor: greenColor,
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

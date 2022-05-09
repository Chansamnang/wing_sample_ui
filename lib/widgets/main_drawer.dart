import 'package:flutter/material.dart';

import '../utils/color.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String _title, Icon _icon) {
    return ListTile(
      // dense: true,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
      leading: _icon,
      title: Text(
        _title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          buildListTile(
            'ទំព័រដំបូង',
            const Icon(Icons.home),
          ),
          buildListTile(
            'គ្រប់គ្រងកាត',
            const Icon(Icons.card_membership),
          ),
          buildListTile(
            'ចំណូលចិត្ត',
            const Icon(Icons.favorite),
          ),
          buildListTile(
            'ប្រាប់មិត្តភក្ត័',
            const Icon(Icons.people),
          ),
          buildListTile(
            'ទីតាំងភ្នាក់ងារវីង',
            const Icon(Icons.pin_drop),
          ),
          buildListTile(
            'អំពីវីង',
            const Icon(Icons.info),
          ),
          buildListTile(
            'សំណួរ និង​ ចម្លើយ',
            const Icon(Icons.question_mark),
          ),
          buildListTile(
            'ទំនាក់ទំនង',
            const Icon(Icons.call),
          ),
          buildListTile(
            'ការកំណត់',
            const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

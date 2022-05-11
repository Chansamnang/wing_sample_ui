import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';

class HomeFinancialCustomWidget extends StatefulWidget {
  const HomeFinancialCustomWidget({Key? key}) : super(key: key);

  @override
  State<HomeFinancialCustomWidget> createState() =>
      _HomeFinancialCustomWidgetState();
}

Widget buildRow(
  IconData icon,
  String text,
) {
  return Expanded(
    flex: 1,
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: greyColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: blueColor,
            size: 44,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    ),
  );
}

class _HomeFinancialCustomWidgetState extends State<HomeFinancialCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildRow(Icons.monetization_on_rounded, 'ផ្ទេរប្រាក់'),
            buildRow(Icons.phone_android, 'បញ្ចូលលុយទូរសព្ទ័'),
            buildRow(Icons.receipt_long_rounded, 'ទូទាត់វិក័យបត្រ'),
          ],
        ),
        Row(
          children: [
            buildRow(Icons.qr_code_scanner_rounded, 'ទូទាត់តាម QR'),
            buildRow(Icons.money_rounded, 'អាំងប៉ាវ'),
            buildRow(Icons.local_atm_rounded, 'ដកប្រាក់'),
          ],
        ),
      ],
    );
  }
}

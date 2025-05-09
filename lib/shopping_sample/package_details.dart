import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/package_details_card.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/shipping_status_card.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Package Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PackageDetailsCard(),
              SizedBox(
                height: 10.0,
              ),
              ShippingStatusCard(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/subscription_sample/views/custom_widgets/list_item.dart';

class SubscriptionHomePage extends StatefulWidget {
  const SubscriptionHomePage({super.key});

  @override
  State<SubscriptionHomePage> createState() => _SubscriptionHomePageState();
}

class _SubscriptionHomePageState extends State<SubscriptionHomePage> {
  Choices _selectedChoice = Choices.choice1;
  final Uri _url = Uri.parse('https://flutter.dev');

  void _handleRadioChange(Choices? value) {
    setState(() {
      _selectedChoice = value!;
    });
  }

  Future<void> _openUrl() async {
    !await launchUrl(
      _url,
      mode: LaunchMode.inAppBrowserView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(35.0),
          height: 670.0,
          child: Column(
            children: [
              Text('Try FREE for 4 weeks',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
              Text('We uncover the facts around the'),
              Text('clock, all over the globe.'),
              SizedBox(height: 20.0),
              ListItem(
                radioChoice: Choices.choice1,
                isBestValue: false,
                duration: 'MONTHLY',
                freeTrial: '4 weeks for free',
                price: 'Then 3D every month for the first year',
                groupValue: _selectedChoice,
                onChanged: _handleRadioChange,
              ),
              ListItem(
                radioChoice: Choices.choice2,
                isBestValue: true,
                duration: 'YEARLY',
                freeTrial: '4 weeks for free',
                price: 'Then 30D for the first year',
                groupValue: _selectedChoice,
                onChanged: _handleRadioChange,
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 33, 59),
                  ),
                  onPressed: () {},
                  child:
                      Text('Continue', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    side: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue with ',
                        style: TextStyle(color: Colors.black),
                      ),
                      Image.network(
                        'https://cdn.iconscout.com/icon/free/png-512/free-paypal-logo-icon-download-in-svg-png-gif-file-formats--online-payment-logos-pack-icons-226456.png',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              InkWell(
                onTap: () => _openUrl,
                child: Text(
                  'View more offers',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationThickness: 2.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

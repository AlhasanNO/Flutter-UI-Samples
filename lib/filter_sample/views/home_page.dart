import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/filter_sample/views/custom_widgets/check_box_button.dart';
import 'package:flutter_ui_samples/filter_sample/views/custom_widgets/radio_buttons.dart';
import 'package:flutter_ui_samples/filter_sample/style/styles.dart';

class FilterHomePage extends StatelessWidget {
  const FilterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF322e59),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(45.0),
          height: 700.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: style1,
                  ),
                  Icon(
                    Icons.close,
                    size: 30.0,
                    color: Color(0xFFbab9ce),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SEARCH BY KEYWORD',
                    style: style2,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFbab9ce),
                      ),
                      hintText: 'Search jobs',
                      fillColor: Color(0xFF242046),
                      filled: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 180.0,
                child: RadioExample(),
              ),
              SizedBox(
                height: 20.0,
              ),
              CheckBoxDemo(),
              Spacer(),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xfFffbb57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(color: Colors.black),
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

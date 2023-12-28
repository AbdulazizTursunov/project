import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/extension/extension_size.dart';
import 'package:project/widgets/result_filter_widget.dart';
import 'package:project/widgets/text_field.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController barcodeController = TextEditingController();
  TextEditingController articleController = TextEditingController();
  TextEditingController brendController = TextEditingController();

  _init() {
    nameController.clear();
    categoryController.clear();
    barcodeController.clear();
    articleController.clear();
    brendController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(this.context);
              },
              icon: Icon(Icons.arrow_back_rounded)),
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Filter Product',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 24.sp,
                fontFamily: 'Quicksand'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _init();
                  });
                },
                icon: Icon(Icons.clear))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  const GlobalTextField(
                      prefixIcon:
                          IconData(0xf05b1, fontFamily: 'MaterialIcons'),
                      hintText: 'Product Name...',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.search,
                      caption: 'Product Name'),
                  15.ph,
                  const GlobalTextField(
                      prefixIcon:
                          IconData(0xf0855, fontFamily: 'MaterialIcons'),
                      hintText: 'Product Barcode...',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.search,
                      caption: 'Product Barcode'),
                  const GlobalTextField(
                      prefixIcon: IconData(0xe0a2, fontFamily: 'MaterialIcons'),
                      hintText: 'Product Article...',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.search,
                      caption: 'Product Article'),
                  const GlobalTextField(
                      prefixIcon: IconData(0xe5f9, fontFamily: 'MaterialIcons'),
                      hintText: 'Product Brend...',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.search,
                      caption: 'Product Brend'),
                  const GlobalTextField(
                      prefixIcon: IconData(0xe148, fontFamily: 'MaterialIcons'),
                      hintText: 'Product Category...',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.search,
                      caption: 'Product Category'),
                  50.ph,
                  ResultFilterWidget(callback: () {})
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/data/model/expo.dart';
import 'package:project/extension/extension_size.dart';
import 'package:project/widgets/constant/constant_fields.dart';
import 'package:project/widgets/custom_richtex.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  void _add(int element) {
    element - 1;
  }

  void _remove(int element) {
    element + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Basket Page',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 24.sp,
          fontFamily: 'Quicksand'),), actions: [
        PopupMenuButton<int>(
          itemBuilder: (context) => [
            // popupmenu item 1
            PopupMenuItem(
              value: 1,
              // row has two child icon and text.
              child: Row(
                children: [
                  Icon(Icons.shopping_bag),
                  SizedBox(
                    // sized box with width 10
                    width: 10.h,
                  ),
                  Text("New Basket",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      fontFamily: 'Quicksand'),)
                ],
              ),
            ),
            // popupmenu item 2
            PopupMenuItem(
              value: 2,
              // row has two child icon and text
              child: Row(
                children: [
                  Icon(Icons.send_and_archive),
                  SizedBox(
                    // sized box with width 10
                    width: 10.h,
                  ),
                  Text("Dispatch",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      fontFamily: 'Quicksand'),)
                ],
              ),
            ),
          ],
        ),
      ]),
      body: ListView(
        children: [
          ...List.generate(
            baseList.length,
            (index) {
              ProductInfo product = baseList[index];
              return DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.network(
                        product.image,
                        height: 90,
                        width: 60,
                      ),
                    ),
                    15.pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRichText(title: 'name: ', subTitle: product.name),
                        Row(
                          children: [
                            CustomRichText(
                                title: 'brend: ', subTitle: product.brend),
                            50.pw,
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    baseList.remove(product);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete_forever,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            CustomRichText(
                                title: 'price: ',
                                subTitle: '${product.price}\$'),
                            60.pw,
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _add(baseList[index].measure.length);
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                                Text(baseList[index].measure.length.toString()),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

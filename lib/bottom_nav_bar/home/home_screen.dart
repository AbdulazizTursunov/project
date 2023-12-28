import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/bottom_nav_bar/home/sub_screen/filter_screen.dart';
import 'package:project/data/model/expo.dart';
import 'package:project/extension/extension_size.dart';
import 'package:project/widgets/constant/constant_fields.dart';
import 'package:project/widgets/custom_richtex.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../data/db/local_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  List<ProductInfo> filterProduct = [];

  _init() {
    textEditingController.clear();
  }

  void _filterProductName(String searchField) {
    List<ProductInfo> results = [];
    if (searchField.isEmpty) {
      results = products;
    } else {
      results = products
          .where((element) =>
              element.name.toLowerCase().contains(searchField.toLowerCase()))
          .toList();
    }

    setState(() {
      filterProduct = results;
    });
  }

  void _filterProductBarCode(String searchField) {
    List<ProductInfo> results = [];
    if (searchField.isEmpty) {
      results = products;
    } else {
      results = products
          .where(
            (element) => element.barcode
                .toLowerCase()
                .contains(searchField.toLowerCase()),
          )
          .toList();
    }
    setState(() {
      filterProduct = results;
    });
  }

  @override
  void initState() {
    filterProduct = products;
    _init();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {setState(() {
          });},
          icon: Icon(Icons.sort, size: 30.h),
        ),
        title: Text(
          'Explore',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 24.sp,
              fontFamily: 'Quicksand'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const FilterScreen(),));
            },
            icon: Icon(Icons.manage_search_outlined, size: 25.h),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_pin, size: 30.h),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
              setState(() {
                _filterProductName(value);
                // _filterProductBarCode(value);
              });
              },
              controller: textEditingController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  hintText: 'search....',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'Quicksand',
                      fontSize: 20.sp),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25.h,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _init();
                      });
                    },
                    icon: Icon(
                      Icons.clear_sharp,
                      size: 20.h,
                    ),)),
            ),
            15.ph,
            Expanded(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                              padding: EdgeInsets.only(left: 5.w),
                              itemCount: filterProduct.length,
                              itemBuilder: (context, index) {
                ProductInfo productInfo = filterProduct[index];
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(color: Colors.yellow, width: 1.5),
                          color: Colors.white),
                      child: ListTile(
                        leading: SizedBox(
                          height: 80,
                          width: 50,
                          child: Image(image: NetworkImage(productInfo.image),
                          ),
                        ),
                        title: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomRichText(
                                    title: 'name: ',
                                    subTitle: productInfo.name),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomRichText(
                                        title: 'price: ',
                                        subTitle:
                                            ' ${productInfo.price.toString()}\$'),
                                    20.pw,
                                    CustomRichText(
                                        title: 'count: ',
                                        subTitle: productInfo.measure),
                                    18.pw,
                                    ZoomTapAnimation(
                                      onTap: () {
                                        baseList.add(products[index]);
                                        print(
                                            'dara data data ---------------------------------');
                                      },
                                      child: Container(
                                        height: 30.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.teal),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(12),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.shopping_cart,
                                            size: 20,
                                            color: Colors.teal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
                              },
                            ),
              ),
            ),
            60.ph
          ],
        ),
      ),
    );
  }
}

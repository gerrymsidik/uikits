import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class StoreScreen02 extends StatefulWidget {
  StoreScreen02({Key? key}) : super(key: key);

  @override
  _StoreScreen02State createState() => _StoreScreen02State();
}

class _StoreScreen02State extends State<StoreScreen02> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Contact", style: TextStyle(color: Colors.black)),
        //   titleSpacing: 0,
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Store",
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          // place save function here
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(FontAwesomeIcons.search, size: 20),
                        border: InputBorder.none,
                      ),
                      onFieldSubmitted: (value) {
                        // place submit function here
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return GridItem();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        child: Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(
                'assets/images/placeholder.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 1,
              bottom: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                    child: Text(
                      "Product Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                    child: Text(
                      "Short Description",
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                    child: Text(
                      "\$12.0",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

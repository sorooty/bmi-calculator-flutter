import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33),
                  ),
                  // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
                ),

                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33),
                  ),
                  // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    width: 200,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1D1E33),
                    ),
                    // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33),
                  ),
                  // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
                ),

                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33),
                  ),
                  // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

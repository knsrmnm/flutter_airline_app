import 'package:flutter/material.dart';

class SeatSelectScreen extends StatefulWidget {
  const SeatSelectScreen({Key? key}) : super(key: key);

  @override
  State<SeatSelectScreen> createState() => _SeatSelectScreenState();
}

class _SeatSelectScreenState extends State<SeatSelectScreen> {

  final Color _accentColor = Color(0xFF272727);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_outlined, color: _accentColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('NRT', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: _accentColor)),
                    const SizedBox(height: 5.0),
                    Text('Narita', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300, color: _accentColor)),
                  ],
                ),
                const SizedBox(width: 15.0),
                Icon(Icons.arrow_forward, color: _accentColor),
                const SizedBox(width: 15.0),
                Column(
                  children: [
                    Text('LHR', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: _accentColor)),
                    const SizedBox(height: 5.0),
                    Text('Heathrow', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300, color: _accentColor)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: _accentColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50.0),
                      Text('Select seat', style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w300, color: Colors.white)),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', true),
                          const SizedBox(width: 10.0),
                          Text('1', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', true),
                          const SizedBox(width: 10.0),
                          Text('2', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', false),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', false),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', false),
                          _makeSeatContainer('B', false),
                          _makeSeatContainer('C', false),
                          const SizedBox(width: 10.0),
                          Text('3', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', false),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', true),
                          const SizedBox(width: 10.0),
                          Text('4', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', false),
                          const SizedBox(width: 10.0),
                          Text('5', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.sensor_door_outlined, color: Colors.white),
                          Icon(Icons.sensor_door_outlined, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', false),
                          _makeSeatContainer('C', true),
                          const SizedBox(width: 10.0),
                          Text('6', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', true),
                          const SizedBox(width: 10.0),
                          Text('7', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', false),
                          _makeSeatContainer('F', false),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _makeSeatContainer('A', true),
                          _makeSeatContainer('B', true),
                          _makeSeatContainer('C', false),
                          const SizedBox(width: 10.0),
                          Text('8', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white)),
                          const SizedBox(width: 10.0),
                          _makeSeatContainer('D', true),
                          _makeSeatContainer('E', true),
                          _makeSeatContainer('F', true),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      )
    );
  }

  Widget _makeSeatContainer(String alphabet, bool active) {
    return active ?
      Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        child: Center(
          child: Text(alphabet, style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600, color: _accentColor)),
        ),
      )
      :
      Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
      );
  }
}

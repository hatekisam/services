import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Order extends StatelessWidget {
  final String id;
  final DateTime date;
  final int weight;
  final String dealerImg;
  final String dealerName;
  final String dealerPhone;
  final String dealerEmail;
  final int stage;

  Order({
    required this.id,
    required this.date,
    required this.weight,
    required this.dealerImg,
    required this.dealerName,
    required this.dealerPhone,
    required this.dealerEmail,
    required this.stage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Color(0xFF6B5E5E),
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Order ',
                  ),
                  TextSpan(
                    text: id,
                    style: TextStyle(
                      color: Color(0xFF0386D0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Color(0xFF6B5E5E),
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Placed on ',
                  ),
                  TextSpan(
                    text: DateFormat.yMMMEd().format(date),
                    style: TextStyle(
                      color: Color(0xFF0386D0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 2.0,
              color: Colors.black,
            ),
            SizedBox(height: 5),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Weight  ',
                  ),
                  TextSpan(
                    text: '$weight kg', // Added ' kg' here
                    style: TextStyle(
                      color: Color(0xFF0386D0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Dealer",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    dealerImg,
                  ),
                  radius: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dealerName,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromRGBO(00, 00, 00, 1)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            dealerEmail,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color.fromRGBO(00, 00, 00, 0.7)),
                          ),
                          Text(
                            dealerPhone,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color.fromRGBO(00, 00, 00, 0.7)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Visibility(
              visible: stage <= 1, // Show only if stage is 1 or less
              child: SizedBox(
                width: double.infinity, // Make the button width 100%
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the login logic
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero, // Remove padding
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(int.parse('0xFFFFFFFF')),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: Color(0xFFFF0000),
                          ),
                          SizedBox(
                            width: 1.0,
                          ),
                          Text(
                            "Abort Order",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: stage > 1, // Show only if stage is more than 1
              child: SizedBox(
                width: double.infinity, // Make the button width 100%
                child: ElevatedButton(
                  onPressed: () {
                    // Implement the login logic
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero, // Remove padding
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(int.parse('0xFFFFFFFF')),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 1.0,
                          ),
                          Text(
                            "Call Dealer",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

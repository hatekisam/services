import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DealerCard extends StatelessWidget {
  final String profilePhotoUrl;
  final String name;
  final double rating;
  final int id;
  final VoidCallback goTo;

  DealerCard(
      {required this.profilePhotoUrl,
      required this.name,
      required this.rating,
      required this.id,
      required this.goTo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF466FE6), // Set the border color to #466FE6
          width: 2.0, // Set the border width as desired
        ),
      ),
      child: Card(
        elevation: 0.0,
        child: SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profilePhotoUrl),
                  radius: 40,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    ElevatedButton(
                        onPressed: goTo,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF466FE6),
                        ),
                        child: Text(
                          "View",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ))
                  ],
                ),

                // ListTile(
                //   title: ,
                //   subtitle: Row(
                //     children: [
                //       Icon(Icons.star, color: Colors.yellow),
                //       Text(rating.toStringAsFixed(1)),
                //     ],
                //   ),
                //   trailing: Text("ID: $id"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

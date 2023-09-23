import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stacked/stacked.dart';

import 'laundary_dealer_viewmodel.dart';

class LaundaryDealerView extends StackedView<LaundaryDealerViewModel> {
  final int id;
  const LaundaryDealerView({Key? key, required this.id}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LaundaryDealerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            viewModel.goBack();
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 20),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Jane Doe",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: "Outfit",
                          fontSize: 24.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      )
                    ]),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(
                                child: Container(
                                  width:
                                      120, // Adjust the width of the circular image
                                  height:
                                      120, // Adjust the height of the circular image
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://googleflutter.com/sample_image.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+250798667234",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "janedoe@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Jane Anderson Doer is a seasoned laundry dealer with over two decades of experience in the commercial laundry industry. Born and raised in a family of entrepreneurs, he developed a strong passion for business at a young age.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Color.fromRGBO(00, 00, 00, 0.7)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF466FE6),
                                      ),
                                      child: Text(
                                        "Pick",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Reviews from other customers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 23,
                                      color: Color.fromRGBO(00, 00, 00, 1)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg"),
                                    radius: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Smith Jordan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      00, 00, 00, 1)),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 4,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                            "She is good working,He respects time fasdfajsdlfjaslkdjflak;sdjflak",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    00, 00, 00, 0.7)))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg"),
                                    radius: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Smith Jordan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      00, 00, 00, 1)),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 4,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 2.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                            "She is good working,He respects time",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    00, 00, 00, 0.7)))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 23,
                                      color: Color.fromRGBO(00, 00, 00, 1)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Form(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 0,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Comment",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(217, 217, 217, 1),
                                      border: InputBorder.none,
                                      hintText: "Comment",
                                    ),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                    minLines: 3,
                                    maxLines: 5,
                                  )
                                ],
                              )),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Review",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  LaundaryDealerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LaundaryDealerViewModel();
}

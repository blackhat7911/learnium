import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learnium/utils/constants/constants.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    this.name,
    this.imageUrl,
    this.price,
    this.onTap,
    this.author,
    required this.rating,
  }) : super(key: key);

  final String? name, imageUrl, author;
  final double? price, rating;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: size.width * 0.35,
          height: size.height * 0.40,
          color: inputBoxColor,
          margin: EdgeInsets.only(
            right: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage("${imageUrl!}"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      author!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: size.width,
                      child: RatingBarIndicator(
                        rating: rating!,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "NPR.${price!}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

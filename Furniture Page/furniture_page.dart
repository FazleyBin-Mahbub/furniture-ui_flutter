import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/Furniture%20Page/data/furnitureData.dart';
import 'package:flutter_practice/this%20months%20challenge/Sushi%20Page/data/category_data.dart';
import 'package:google_fonts/google_fonts.dart';

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        offset: Offset(3.0, 3.0),
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 4.0,
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: size.height * 0.24,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.8), BlendMode.darken),
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1524758631624-e2822e304c36?crop&w=1050&q=80',
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Save 25%',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffeeb901),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        "Enjoy flash sale & save\n up to 100%",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: size.height / 12.5,
                        width: size.width / 2.9,
                        decoration: BoxDecoration(
                          color: Color(0xffeeb901),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Buy Now!',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Text(
                      'Category by Style',
                      style: GoogleFonts.lato(
                        color: Color(0xffeeb901),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                
                height: 10,

              ),
              Container(
                height: size.height / 5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: furnitureCataData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(furnitureCataData[index].images),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              furnitureCataData[index].text,
                              style: GoogleFonts.lateef(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Text(
                      'More Ideas',
                      style: GoogleFonts.lato(
                        color: Color(0xffeeb901),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: size.height / 5,
                child: ListView.builder(
                  itemCount: idea.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(idea[index].img),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            idea[index].txt,
                            style: GoogleFonts.lateef(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

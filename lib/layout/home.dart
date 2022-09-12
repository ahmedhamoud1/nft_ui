import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore\ncollections',
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: 40),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff292639)),
                    child: TabBar(
                        labelStyle: GoogleFonts.bebasNeue(fontSize: 16),
                        indicator: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20)),
                        tabs: [
                          Tab(
                            text: 'Recent',
                          ),
                          Tab(
                            text: 'trending',
                          ),
                          Tab(
                            text: 'top',
                          ),
                        ]),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        height: 450,
                        child: TabBarView(
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('images/3.jpg',),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high
                                )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage('images/4.jpg',),
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.high
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage('images/6.jpg',),
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.high
                                  )
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 200,

          items:
          [
            BottomNavigationBarItem(
                icon:
                Icon(Icons.home_outlined,
                color: Colors.white,
                ),
            label: '',
            ),
            BottomNavigationBarItem(
              icon:
              Icon(Icons.favorite_border,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:
              Icon(Icons.notifications_none,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

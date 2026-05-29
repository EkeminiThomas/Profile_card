import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.person, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.send, color: Colors.white),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //profile and name
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Thomas Ekemini💻",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 15),

                  Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                '@thomasekemini',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // followers, following and likes count
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Following', style: TextStyle(color: Colors.white)),
                    ],
                  ),

                  SizedBox(width: 20),

                  Column(
                    children: [
                      Text(
                        '20k',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Followers', style: TextStyle(color: Colors.white)),
                    ],
                  ),

                  SizedBox(width: 10),

                  Column(
                    children: [
                      Text(
                        '1M',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Likes', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ), // end of Followers, following and likes count
              // Bio
              SizedBox(height: 10),

              Text('Add Bio', style: TextStyle(color: Colors.white)),

              SizedBox(height: 10),

              //Studio and subscription
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.white),
                  Text('Tiktok Studio', style: TextStyle(color: Colors.white)),

                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.white, size: 20),
                  Text('Subscription', style: TextStyle(color: Colors.white)),
                ],
              ),

              SizedBox(height: 15),

              // sub-menu sections
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.menu_rounded, color: Colors.white),
                  Icon(Icons.lock, color: Colors.white),
                  Icon(Icons.rotate_90_degrees_ccw, color: Colors.white),
                  Icon(Icons.save_alt_sharp, color: Colors.white),
                  Icon(Icons.favorite, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),
              // contnent section
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'lib/Images/outfit 1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

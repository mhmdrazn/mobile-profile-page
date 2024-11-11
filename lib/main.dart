import 'package:assignment_2/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Profile",
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'mhmdrazn',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.verified, color: Colors.blue, size: 14),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0, ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Profil dan statistik
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/images/profile-pict.png'),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Column(
                              children: [
                                Row (
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatColumn('300+', 'Connections'),
                                    _buildStatColumn('700', 'Followers'),
                                    _buildStatColumn('812', 'Following'),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildButton('Connect', blue),
                                    _buildButton('Message', white, borderColor: blue),
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      //Nama dan deskripsi
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Razan Parisya Putra',
                            style: bold14,
                          ),
                          Text(
                            'Undergraduate Information System Student @ITS',
                            style: regular12.copyWith(color: gray2),
                          ),
                          Text(
                            '5026231174  - Teknologi Berkembang (D)',
                            style: regular14,
                          ),
                          Row(
                            children: [
                              // Image.asset('assets/icon/icon.png'),
                              Icon(Icons.link, color: gray2, size: 12),
                              const SizedBox(width: 8),
                              Text(
                                'mhmdrazn.vercel.app',
                                style: regular12.copyWith(color: blue),
                                // textDirection: TextDecoration.underline,
                              ),
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _chip('Medium'),
                          _chip('Instagram'),
                          _chip('LinkedIn'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 20),

              // Education
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Education', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('assets/images/logo-its.png'),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Institut Teknologi Sepuluh Nopember', style: medium14.copyWith(color: black),),
                                const SizedBox(height: 4),
                                Text('20223 - 2027 (Expected)', style: regular12.copyWith(color: gray1))
                              ],
                            )
                          ],
                        )
                      ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Funfact
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.075),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), 
                    ),
                  ],
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Funfact 🎉', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('assets/images/logo-its.png'),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                'Suka bangun pagi cuma buat matiin alarm terus lanjut tidur lagi.',
                                style: regular14,
                              ) 
                            ) 
                          ],
                        )
                      ],
                  ),
                ),
              ), 

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: bold16.copyWith(color: black),
        ),
        Text(
          label,
          style: regular12.copyWith(color: gray1),
        ),
      ],
    );
  }
}

  Widget _buildButton(String text, Color color, {Color borderColor = Colors.transparent}){
    return ElevatedButton(
      onPressed: () {}, 
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: color == Colors.white ? Colors.blue : Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 6),
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: regular12,
      )
    );
  }

  Widget _chip(String text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.75,
          color: gray1,
        ), 
        borderRadius: BorderRadius.circular(
          24.0
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 4, 
        horizontal: 16
      ),
      child: Text(
        text,
        style: regular12.copyWith(
          color: gray1
        ),
      ),
    );
  }
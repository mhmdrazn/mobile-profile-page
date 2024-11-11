import 'package:assignment_2/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Profile",
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {

  final List<String> imageUrls = [
    'assets/images/ise24.png',
    'assets/images/razan.png',
    'assets/images/tedxits.jpg',
    'assets/images/ilits2024.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
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
          padding: const EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
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
                            backgroundImage: AssetImage('assets/images/profile-pict.png')
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row (
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatColumn('300+', 'Connections'),
                                    _buildStatColumn('700', 'Followers'),
                                    _buildStatColumn('812', 'Following'),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      const SizedBox(height: 16),

                      //Nama dan deskripsi
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Razan Parisya Putra',
                            style: bold14,
                          ),
                          const SizedBox(height: 1),
                          Text(
                            'Undergraduate Information System Student @ITS',
                            style: regular12.copyWith(color: gray2),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            '5026231174  - Teknologi Berkembang (D)',
                            style: regular14,
                          ),
                          const SizedBox(height: 1),
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

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _chip('Instagram'),
                          _chip('Behance'),
                          _chip('LinkedIn'),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.75, color: gray1), 
                              borderRadius: BorderRadius.circular(24.0)),
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                            child: Image.asset('assets/icon/share.png', height: 15, width: 15),
                          ),
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
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20), // Image border
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(28), // Image radius
                                child: Image.asset('assets/images/its.png', fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Institut Teknologi Sepuluh Nopember', style: medium14.copyWith(color: black)), 
                                const SizedBox(height: 4),
                                Text('Information Systems', style: regular12.copyWith(color: gray1)),
                                const SizedBox(height: 4),
                                Text('2023 - 2027 (Expected)', style: regular12.copyWith(color: gray2))
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
                            Text('Funfact', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage('assets/images/sleep.png'),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: Text(
                                'Suka bangun pagi cuma buat matiin\nalarm terus lanjut tidur lagi.',
                                style: regular14,
                              ) 
                            ) 
                          ],
                        )
                      ],
                  ),
                ),
              ), 

              const SizedBox(height: 20),

              // Gallery
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
                            Text('Gallery', style: bold16),
                          ],
                        ),
                        const SizedBox(height: 16),
                        GridView.builder(
                          shrinkWrap: true, // Agar grid tidak mengambil ruang penuh
                          physics:
                              const NeverScrollableScrollPhysics(), // Non-scrollable grid
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 2 kolom
                            crossAxisSpacing: 16, // Jarak antar kolom
                            mainAxisSpacing: 16, // Jarak antar baris
                          ),
                          itemCount: imageUrls.length,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(74),
                                child: Image.asset(
                                  imageUrls[index],
                                  fit: BoxFit.cover, // Agar gambar tetap pas di dalam grid
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                  ),
                ),
              ),
            
              const SizedBox(height: 32),
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
          style: regular10.copyWith(color: gray1),
        ),
      ],
    );
  }
}

  Widget _buildButton(String text, Color color, {Color borderColor = Colors.transparent}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: color == Colors.white ? Colors.blue : Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16), // Minimal vertical, responsive horizontal padding
        minimumSize: const Size(0, 36), // Ensures consistent height without extra vertical padding
        side: BorderSide(color: borderColor, width: 1), // Border width for outline style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
      child: Text(
        text,
        style: regular12.copyWith(color: color == Colors.white ? Colors.blue : Colors.white),
      ),
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
        horizontal: 12
      ),
      child: Text(
        text,
        style: regular14.copyWith(
          color: gray1
        ),
      ),
    );
  }
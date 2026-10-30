import 'package:flutter/material.dart';
import 'package:sheet/page/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<Map<String, dynamic>> data = [
  {
    'image': 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=600',
    'name': 'Rahim Ahmed',
    'noticfaction': 'You have 5 new notifications',
  },
  {
    'image': 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=600',
    'name': 'Nusrat Jahan',
    'noticfaction': 'You have 12 new messages',
  },
  {
    'image': 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600',
    'name': 'Sakib Hasan',
    'noticfaction': 'Your account has been updated',
  },
  {
    'image': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=600',
    'name': 'Mim Akter',
    'noticfaction': 'You received a new request',
  },
  {
    'image': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=600',
    'name': 'Tanvir Hossain',
    'noticfaction': 'You have 3 pending requests',
  },
  {
    'image': 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?w=600',
    'name': 'Sumaiya Islam',
    'noticfaction': 'Your profile was viewed',
  },
  {
    'image': 'https://images.unsplash.com/photo-1504257432389-52343af06ae3?w=600',
    'name': 'Arif Hossain',
    'noticfaction': 'You have 8 new notifications',
  },
  {
    'image': 'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=600',
    'name': 'Jannatul Ferdous',
    'noticfaction': 'New message from a friend',
  },
  {
    'image': 'https://images.unsplash.com/photo-1504593811423-6dd665756598?w=600',
    'name': 'Mehedi Hasan',
    'noticfaction': 'Your request has been accepted',
  },
  {
    'image': 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=600',
    'name': 'Sadia Rahman',
    'noticfaction': 'You have 2 new notifications',
  },
];
  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromARGB(255, 248, 241, 241),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),

      builder: (context) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 243, 235, 235),
                border: Border.all(
                  color: const Color.fromARGB(255, 164, 166, 167),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color.fromARGB(66, 50, 49, 49),
                              ),
                              color: Colors.white,
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Details(
                                        image: item['image'],
                                        name: item['name'],
                                        subtitle: item['noticfaction'],
                                      ),
                                    ),
                                  );
                                },

                                leading: ClipOval(
                                  child: Image.network(
                                    width: 50,
                                    height: 50,
                                    item ['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  item ['name'],
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  item ['noticfaction'],
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF245144),
      appBar: AppBar(
        title: Text(
          'Bottom Sheet ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.blue,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up Free',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.network(
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    'https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-6/787716187_122128979366916150_2916257154142327237_n.jpg?stp=dst-jpg_tt6&cstp=mx1536x2048&ctp=s1536x2048&_nc_cat=109&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeG5tBv3Hj6g3BgrDGSYysI5UFUqTOv22dpQVSpM6_bZ2vL4KlpqSRMpkxmd87cBlK8yn27pgfPPpPVUOPvFbRwj&_nc_ohc=MdrSIhzewwUQ7kNvwHDYFT2&_nc_oc=Adora64ZlVcJ0wT1WZeEyEElwROo7Lv2wjATij1-ejUxF7-ukZRKWGKU1mFwHGe9z8g&_nc_zt=23&_nc_ht=scontent.fdac138-2.fna&_nc_gid=axybrZ0gJplzniubElBa_A&_nc_ss=7b2a8&oh=00_AQTMDrEDU4avyrbO05jCNt3OY0nkp-gAfghdvYvO418G5g&oe=6AE9910A',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Nurain Hossain',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Programmer and android devlporer and flutter devloper ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 84, 83, 83),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'E Larning',
                          style: TextStyle(
                            color: Color(0xFF245144),
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 227, 178),
                    elevation: 10,
                    fixedSize: Size(250, 60),
                  ),

                  onPressed: () {
                    setState(() {
                      openBottomSheet();
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        'EXCHANGE YOUR ACCOUNTS ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

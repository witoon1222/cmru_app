import 'package:cmru_app/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "narawit";
  String accountEmail = "narawit1222@gmail.com";
  void changeName() {
    setState(() {
      name = "Gundam";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('HOMEIE', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        //padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset('assets/a.jpg'),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'เมื่อวันที่ 25 กรกฎาคม 2567',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'ร่วมประชุมเครือข่ายส่งเสริมการใช้ประโยชน์ทางวิทยาศาสตร์'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 5),
                      Text("41", style: TextStyle(color: Colors.red))
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call),
                    Text("call"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.navigation),
                    Text("route"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share),
                    Text("share"),
                  ],
                )
              ],
            ),
            Text(
                "เมื่อวันที่ 25 กรกฎาคม 2567 มหาวิทยาลัยราชภัฏเชียงใหม่ โดย สถาบันวิจัยและพัฒนา เข้าร่วมการประชุมเครือข่ายส่งเสริมการใช้ประโยชน์ทาง วิทยาศาสตร์ วิจัยและนวัตกรรม  Science Research and Innovation (SRI) Network Townhall  ภายในงาน อว.แฟร์ : SCI POWER FOR FUTURE THAILAND โดย อ.ดร. วิภาวี ศรีคะ รองผู้อำนวยการสถาบันวิจัยและพัฒนาเป็นผู้แทน เข้าร่วมการประชุมในงาน อว.แฟร์ : SCI POWER FOR FUTURE THAILAND ซึ่งได้รับเกียรติจาก ศาสตราจารย์ ดร.ศุภชัย ปทุมนากุล รองปลัดกระทรวงการอุดมวิทยาศาสตร์ วิจัยและนวัตกรรม กล่าวเปิดงาน และ ปาฐกถาพิเศษ “THE POWER OF SRI NETWORK” ณ ศูนย์ประชุมแห่งชาติสิริกิติ์ กรุงเทพมหานคร "),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Color.fromARGB(181, 126, 187, 215),
        onTap: (int index) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

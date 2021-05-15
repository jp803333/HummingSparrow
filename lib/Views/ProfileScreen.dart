import 'package:flutter/material.dart';
import 'package:hummingsparrowtask/Utils/ScreenRoutes.dart';
import 'package:hummingsparrowtask/Views/Widgets/CustomDrawer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal.shade900),
      drawer: CustomDrawer(
        screenName: profileScreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.3,
              padding: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: height * 0.08,
                  ),
                  Text(
                    "Firstname Lastname",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                          spreadRadius: 1),
                    ]),
                    child: Text(
                      "Edit Profile",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.orange.shade700,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...detailItem("Location", "XXXXXXXXXXXXXXXXXX"),
                  ...detailItem("Pincode", "XXXXXX"),
                  ...detailItem("Date of birth", "DD-MM-YYYY"),
                  ...detailItem("Gender", "Female"),
                  ...detailItem("Whatsapp", "+91-XXXXXXXXXX"),
                  ...detailItem("Email", "XXXXX@gmail.com"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> detailItem(String title, String value) {
  return [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ),
    SizedBox(height: 8),
    Container(
      height: 1,
      width: double.infinity,
      color: Colors.black.withOpacity(0.25),
    ),
    SizedBox(height: 10),
  ];
}

import 'package:crafity/interface/screen/home/widgets/footer_clipper.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var value = 'Language';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: FooterClipper(),
      child: Container(
        width: size.width,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF4B335D),
              Color(0xFFA74D76),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: socialMedia
                  .map(
                    (item) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: InkWell(
                        child: Image.asset(
                          item,
                          width: 22,
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                serviceApp.length,
                (i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(serviceApp[i].length, (j) {
                    if (j == 0) {
                      return Text(
                        serviceApp[i][j].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      );
                    }
                    if (i == 2) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          serviceApp[i][j].name,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }
                    return TextButton(
                      child: Text(
                        serviceApp[i][j].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    );
                  }).toList(),
                ),
              ).toList()
                ..add(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Feedback',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 400,
                        child: ListTile(
                          title: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xFFFFFFFF)),
                              ),
                            ),
                          ),
                          trailing: IconButton(
                              icon: Icon(Icons.send),
                              color: Colors.white,
                              onPressed: () {}),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Get Apps',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            child: Image.asset('playstore.png', width: 120),
                            onTap: () {},
                          ),
                          SizedBox(width: 12),
                          InkWell(
                            child: Image.asset('appstore.png', width: 120),
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '©️2019 Miec99midnight, All right deserved',
                  style: TextStyle(color: Colors.white),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(value: 0, child: Text('Indonesia')),
                      DropdownMenuItem(value: 1, child: Text('English'))
                    ],
                    value: 0,
                    onChanged: (int newValue) {
                      // setState(() => value = newValue);
                    },
                    style: TextStyle(fontSize: 15, color: Color(0xFFF5F5F5)),
                    icon: Icon(Icons.keyboard_arrow_down,
                        color: Color(0xFFF5F5F5)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<String> socialMedia = ['email.png', 'ig.png', 'twitter.png', 'fb.png'];

  List<List<ServiceApp>> serviceApp = [
    [
      ServiceApp('Company'),
      ServiceApp('Terms & Condition'),
      ServiceApp('Privacy Policy'),
      ServiceApp('Our License'),
      ServiceApp('About Us'),
      ServiceApp('Blog'),
    ],
    [
      ServiceApp('Help'),
      ServiceApp('Notification'),
      ServiceApp('Support'),
      ServiceApp('Contact'),
      ServiceApp('FAQ'),
    ],
    [
      ServiceApp('Our Teams'),
      ServiceApp('I Komang Widnyana'),
      ServiceApp('Sona Purnamanta'),
      ServiceApp('Bagus Aditya'),
      ServiceApp('Yossi Iqbal'),
      ServiceApp('Agga Permadi'),
    ],
  ];
}

class ServiceApp {
  ServiceApp(this.name, {this.routeName});
  final String name;
  final String routeName;
}

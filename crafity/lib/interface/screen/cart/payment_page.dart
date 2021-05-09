import 'package:crafity/interface/screen/personal_dashboard/forms/credit_card_page.dart';
import 'package:flutter/material.dart';
import 'package:crafity/interface/screen/cart/widgets/cart_bottom_bar.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Form',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stepper(
              steps: List.generate(
                formList.length,
                (index) => Step(
                  title: Text(
                    formList[index].title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  content: formList[index].content,
                  // state: StepState.indexed,
                ),
              ).toList(),
              currentStep: 0,
            ),
            SizedBox(height: 15),
            CartBottomBar(labelBtn: 'Transfer Money', eventBtn: () {}),
          ],
        ),
      ),
    );
  }

  List<Payment> get formList => [
        Payment(title: 'Your Identity', content: identityForm),
        Payment(title: 'Data Payment', content: paymentForm),
        Payment(title: 'Delivery Method', content: deliveryForm),
      ];

  Widget identityForm = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          labelText: 'Full Name',
          border: UnderlineInputBorder(),
        ),
      ),
      SizedBox(height: 18),
      TextFormField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'xxx@example.com',
          border: UnderlineInputBorder(),
        ),
      ),
      SizedBox(height: 18),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.phone,
        validator: (value) {
          return;
        },
        decoration: InputDecoration(
          labelText: 'Phone Number',
          prefix: DropdownButton(
            items: phoneCode.map((item) {
              return DropdownMenuItem(
                child: Text('+$item'),
                value: phoneCode.indexOf(item),
              );
            }).toList(),
            onChanged: (val) {},
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 16,
            value: phoneCode[0],
            itemHeight: 30,
          ),
        ),
      ),
    ],
  );

  Widget paymentForm = DefaultTabController(
    length: 3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: AspectRatio(
            aspectRatio: 1.3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/perfume9.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Text(
            'Monocri Rawless',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Bank Mandiri',
            style: TextStyle(color: Colors.grey),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
        ),
        SizedBox(height: 18),
        Card(
          child: TabBar(
            indicatorColor: Color(0xFFE36789),
            unselectedLabelColor: Color(0xFF858585),
            labelColor: Color(0xFFE36789),
            tabs: [
              Tab(text: 'Paypal'),
              Tab(text: 'Credit'),
              Tab(text: 'Wallet'),
            ],
            onTap: (idx) {},
          ),
        ),
        SizedBox(height: 18),
        TabBarView(
          children: [
            Container(),
            CreditCardPage.creditFormField(),
            Container(),
          ],
        ),
      ],
    ),
  );

  Widget deliveryForm = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          textStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        icon: Icon(Icons.map),
        label: Text('Open Map'),
        onPressed: () {},
      ),
      SizedBox(height: 15),
      Text(
        'Carnavol Street 88, Munggu, South Kuta, Badung, Bali, Indonesia',
        style: TextStyle(color: Color(0xFF6794E3), fontSize: 15),
      ),
      SizedBox(height: 18),
      Text('Choose Delivery Service', style: TextStyle(fontSize: 16)),
      ButtonBar(
        buttonPadding: EdgeInsets.all(12),
        children: [
          TextButton(
            child: Text('JNE'),
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.grey,
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            child: Text('Go Send'),
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Color(0xFFE36778),
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )
    ],
  );

  static List<String> phoneCode = ['62', '70', '85'];
}

class Payment {
  Payment({this.title, this.content});
  final String title;
  final Widget content;
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Idea',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stepper(
        steps: List.generate(
          stepList.length,
          (idx) {
            return Step(
              title: Text(
                stepList[idx].title,
                style: TextStyle(
                  color: Color(0xFF858585),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              content: Form(child: stepList[idx].content),
              state: StepState.indexed,
              isActive: false,
            );
          },
        ),
        currentStep: 3,
        onStepCancel: () {},
        onStepContinue: () {},
        onStepTapped: (idx) {},
      ),
    );
  }

  List<StepEntity> get stepList => [
        StepEntity(
          title: 'Description',
          content: descriptionForm(),
        ),
        StepEntity(
          title: 'Order Type',
          content: orderType(),
        ),
        StepEntity(
          title: 'Target Industry',
          content: targetIndustryForm(),
        ),
        StepEntity(
          title: 'Prototype',
          content: prototypeForm(),
        ),
      ];

  Widget descriptionForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          controller: TextEditingController(),
          maxLength: 20,
          decoration: InputDecoration(
            labelText: 'Idea Name',
          ),
        ),
        SizedBox(height: 18),
        ElevatedButton.icon(
          icon: Icon(
            Icons.event_note,
            color: Color(0xFF858585),
          ),
          label: Text('Time Span', style: TextStyle(color: Color(0xFF858585))),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(height: 18),
        TextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Price Limit',
            prefixText: '\$',
          ),
        ),
        SizedBox(height: 18),
        TextFormField(
          controller: TextEditingController(),
          maxLines: 12,
          decoration: InputDecoration(
            labelText: 'Description',
          ),
        ),
      ],
    );
  }

  Widget orderType() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            value: 0,
            groupValue: 0,
            onChanged: (val) {},
            title: Text(
              'Global',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        Flexible(
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            value: 1,
            groupValue: 0,
            onChanged: (val) {},
            title: Text(
              'Private',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        IconButton(
          icon: Icon(Icons.info_outline),
          iconSize: 17,
          color: Color(0xFFF6B16C),
          onPressed: () {},
          tooltip:
              'Post photo and video for Identity Max three photo you can pick',
        ),
      ],
    );
  }

  Widget targetIndustryForm() {
    Widget searchBar = TextFormField(
      controller: TextEditingController(),
      maxLength: 20,
      decoration: InputDecoration(
        labelText: 'Industry Name',
      ),
    );

    Widget filterIndustry = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filter Industry',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        ButtonBar(
          buttonPadding: EdgeInsets.symmetric(horizontal: 15),
          alignment: MainAxisAlignment.start,
          children: <Widget>[
            DropdownButton(
              items: country.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: country.indexOf(item),
                );
              }).toList(),
              onChanged: (val) {},
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 16,
              value: 0,
            ),
            DropdownButton(
              items: region
                  .map(
                    (item) => DropdownMenuItem(
                      child: Text(item),
                      value: region.indexOf(item),
                    ),
                  )
                  .toList(),
              onChanged: (val) {},
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 16,
              value: 0,
            ),
            DropdownButton(
              items: industryType
                  .map((item) => DropdownMenuItem(
                        child: Text(item),
                        value: industryType.indexOf(item),
                      ))
                  .toList(),
              onChanged: (val) {},
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 16,
              value: 0,
            ),
          ],
        ),
      ],
    );

    Widget customerLimit = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            Text(
              'Customer Limit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              icon: Icon(Icons.info_outline),
              iconSize: 17,
              color: Color(0xFFF6B16C),
              onPressed: () {},
              tooltip:
                  'Post photo and video for Identity Max three photo you can pick',
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            TextButton(
              child: Text('Personal'),
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                primary: Colors.white,
                backgroundColor: Color(0xFF858585),
              ),
            ),
            Spacer(),
            Flexible(
              flex: 2,
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Limited',
                    prefixText: 'max',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15)),
              ),
            ),
            Spacer(),
            TextButton(
              child: Text('Infinity'),
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20),
                primary: Colors.white,
                backgroundColor: Color(0xFF858585),
              ),
            ),
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Global Order',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12),
        filterIndustry,
        SizedBox(height: 12),
        customerLimit,
      ],
    );

    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: <Widget>[
    //         Text(
    //           'Private Order',
    //           style: TextStyle(
    //             fontSize: 18,
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //         IconToggle(
    //           selectedIconData: Icons.explore,
    //           unselectedIconData: Icons.search,
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 12),
    //     searchBar,
    //   ],
    // );
  }

  Widget prototypeForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: <Widget>[
            ElevatedButton.icon(
              icon: Icon(
                Icons.insert_photo,
                color: Color(0xFF858585),
              ),
              label: Text('Upload Fil',
                  style: TextStyle(color: Color(0xFF858585))),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Wrap(
          children: List.generate(
            3,
            (idx) => LimitedBox(
              maxWidth: 150,
              child: AspectRatio(
                aspectRatio: 1.2,
                child: Image.asset(
                  'assets/perfume9.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          spacing: 15,
          runSpacing: 15,
        ),
      ],
    );
  }

  List<String> region = ['Region', 'Jalarta', 'New York', 'Paris'];

  List<String> country = ['Country', 'Indonesia', 'AS', 'France'];

  List<String> industryType = [
    'Big Company',
    'Best Owner',
    'All Industry',
  ];
}

class StepEntity {
  StepEntity({this.title, this.content});

  final String title;
  final Widget content;
}

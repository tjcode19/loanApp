import 'package:flutter/material.dart';

class AvailableCards extends StatefulWidget {
  @override
  _AvailableCardsState createState() => _AvailableCardsState();
}

class _AvailableCardsState extends State<AvailableCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Icon(Icons.favorite),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: IconButton(
                  color: Colors.black,
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 37, left: 15),
                child: Text(
                  'Available Cards ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 40),          
          _cardActions(
            1,
            Text(
              'XXXX XXXX XXXX 7738',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Icon(Icons.keyboard_arrow_right),
          ),
          _cardActions(
            2,
            Text(
              'XXXX XXXX XXXX 1594',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Icon(Icons.keyboard_arrow_right),
          ),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                'Add New Card',
                style: TextStyle(color: Colors.teal, fontSize: 18),
              ),
              trailing: Icon(
                Icons.add,
                size: 30,
              ),
              //onTap: setSelectedRadio(value),
            ),
          ),
         
        ]),
      ),
    );
  }

  int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget _cardActions(int value, Text title, Icon trailingIcon) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(6),
        title: title,
        trailing: Radio(
          value: value,
          groupValue: selectedRadio,
          activeColor: Colors.teal,
          onChanged: (val) {
            print("Radio $val");
            setSelectedRadio(val);
          },
        ),
        //onTap: setSelectedRadio(value),
      ),
    );
  }
}

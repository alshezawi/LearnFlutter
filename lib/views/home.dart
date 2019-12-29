import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }

}

class _HomeState extends State<Home> {
 
  var _items  = ["item1" , "item2","item3"];
  var _selectedItem = "item1";
  String name = "";
  String NameError = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String inputName){
              setState(() {
               name = inputName ; 
               NameError = "Enter Email";
              });
            },
            decoration:
                InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2)
                  ),
                  hintText: "test",
                  labelText: "Email", 
                  icon: Icon(Icons.email),
                  ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text("Your name is : $name"),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("Type : "),
              ),
             Expanded(
                              child: DropdownButton<String>(
                  items: _items.map((String vl){
                    return DropdownMenuItem<String>(
                      value: vl,
                      child: Text(vl),
                    );
                  }).toList(),
                  onChanged: (String selVal){
                    setState(() {
                     this._selectedItem = selVal; 
                     name = this._selectedItem;
                    });
                  },
                value: this._selectedItem,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

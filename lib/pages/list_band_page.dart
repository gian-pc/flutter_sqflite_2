import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282A3C),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gian PC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Mis bandas",
              style: TextStyle(color: Colors.white, fontSize: 32.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Buscar banda",
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),

          //Items
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ItemListWidget(
                      nameBand: "Alter Bridge",
                      status: true,
                      favorite: true,
                    ),
                    ItemListWidget(
                      nameBand: "Belle and Sebastian",
                      status: true,
                      favorite: true,
                    ),
                    ItemListWidget(
                      nameBand: "Cage the Elephant",
                      status: true,
                      favorite: false,
                    ),
                    ItemListWidget(
                      nameBand: "Sister Hazel",
                      status: true,
                      favorite: true,
                    ),

                    ItemListWidget(
                      nameBand: "Arcade Fire",
                      status: true,
                      favorite: true,
                    ),
                    ItemListWidget(
                      nameBand: "Fantast",
                      status: true,
                      favorite: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class ItemListWidget extends StatelessWidget {

  String nameBand;
  bool status;
  bool favorite;

  ItemListWidget({required this.nameBand, required this.status, required this.favorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xffF3D145),
          child: Text(
            this.nameBand[0],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
          ),
        ),
        title: Text(
          this.nameBand,
          style: TextStyle(
              fontSize: 17.0,
              color: Color(0xff282A3C),
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text("Estado:Activo"),
        trailing: IconButton(
          onPressed: () {},
          icon:this.favorite?
          Icon(Icons.favorite,color: Colors.redAccent, size: 26.0,)
              :Icon(Icons.favorite_border, size: 26.0,),
        ),
      ),
    );
  }
}

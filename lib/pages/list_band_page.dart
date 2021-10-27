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
            SizedBox(height: 20,),
            //Items
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  )

                ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                            "Alter Bridge"
                          ),
                          subtitle: Text(
                            "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          title: Text(
                              "Alter Bridge"
                          ),
                          subtitle: Text(
                              "Estado:Activo"
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}

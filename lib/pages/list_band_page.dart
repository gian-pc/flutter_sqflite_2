import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sqflite_2/db/db_global.dart';
import 'package:flutter_codigo3_sqflite_2/models/band_model.dart';

class ListBandPage extends StatefulWidget {
  @override
  _ListBandPageState createState() => _ListBandPageState();
}

class _ListBandPageState extends State<ListBandPage> {
  List<Map<String, dynamic>> misBandas = [];

  @override
  initState() {
    super.initState();
    //insertBand();
    getData();
  }

  insertBand() {
    Band band1 =
        new Band(bandName: "tictock1", favorite: "false", status: "true");
    Band band2 =
        new Band(bandName: "tictock2", favorite: "false", status: "true");
    Band band3 =
        new Band(bandName: "tictock3", favorite: "false", status: "true");

    DBGlobal.db.insertBand(band1);
    DBGlobal.db.insertBand(band2);
    DBGlobal.db.insertBand(band3);
  }

  getData() async {
    misBandas = await DBGlobal.db.getAllBands();
    setState(() {});
  }

  showAlertDelete(int id) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          title: Text(
            "¿Eliminar banda?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          content: Text(
            "La banda seleccionada será eliminada.",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.white38),
                )),
            TextButton(
                onPressed: () {
                  DBGlobal.db.deleteBand(id).then((value) {
                    getData();
                  });

                  Navigator.pop(context);
                },
                child: Text(
                  "Aceptar",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        );
      },
    );
  }

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
                child: ListView.builder(
                  itemCount: misBandas.length,
                  itemBuilder: (BuildContext build, int index) {
                    bool aux =
                        bool.fromEnvironment(misBandas[index]["favorite"]);
                    bool favorite = misBandas[index]["favorite"] == 'true';
                    bool status = misBandas[index]["status"] == 'true';

                    return ItemListWidget(
                      id: misBandas[index]["id"],
                      nameBand: misBandas[index]["bandName"],
                      status: status,
                      favorite: favorite,
                      onLongPress: (){
                        showAlertDelete(misBandas[index]["id"]);

                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemListWidget extends StatefulWidget {
  int id;
  String nameBand;
  bool status;
  bool favorite;
  Function? onLongPress;

  ItemListWidget({
    required this.nameBand,
    required this.status,
    required this.favorite,
    required this.id,
    this. onLongPress,
  });

  @override
  _ItemListWidgetState createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        this.widget.onLongPress!();
      },
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xffF3D145),
            child: Text(
              this.widget.nameBand[0],
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          title: Text(
            this.widget.nameBand,
            style: TextStyle(
                fontSize: 17.0,
                color: Color(0xff282A3C),
                fontWeight: FontWeight.w500),
          ),
          subtitle:
              Text(this.widget.status ? "Estado: Activo" : "Estado: Desactivo"),
          trailing: IconButton(
            onPressed: () {
              this.widget.favorite = !this.widget.favorite;
              setState(() {
                Band bandUpdate = new Band(
                    id: this.widget.id,
                    bandName: this.widget.nameBand,
                    status: this.widget.status.toString(),
                    favorite: this.widget.favorite.toString());

                DBGlobal.db.updateBand(bandUpdate);
              });
            },
            icon: this.widget.favorite
                ? Icon(Icons.favorite, color: Colors.redAccent, size: 26.0)
                : Icon(Icons.favorite_border, size: 26.0),
          ),
        ),
      ),
    );
  }
}

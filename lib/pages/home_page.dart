import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Sin título";

  Future<String> getTitle() {
    return Future.delayed(Duration(seconds: 3), () {
      return "Mi Planta de Naranja Lima";
    });
  }

  Future<int> getNumber() {
    return Future.delayed(Duration(seconds: 5), () {
      return 168;
    });
  }

  Future<List<Map>> getItems() {
    return Future.delayed(Duration(seconds: 4), () {
      return [
        {"id": 1, "name": "Zapatos"},
        {"id": 2, "name": "Camisas"},
        {"id": 3, "name": "Pantalones"},
      ];
    });
  }

  //SEGUNDA FORMA DE DESEVOLVER FUTURE
  setTitle() async {
    title = await getTitle();
    setState(() {});
  }

  @override
  void initState() {
    //PRIMERA FORMA DE DESENVOLVER FUTURE
    // getTitle().then((value) {
    //   title = value;
    //   print(title);
    //   setState(() {});
    // });

    //SEGUNDA FORMA DE DESEVOLVER FUTURE
    setTitle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Futures"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.all(48),
                child: FutureBuilder(
                  future: getItems(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    print("------------------------------");
                    print("SNAP: $snapshot");
                    print("Estado de conexión: ${snapshot.connectionState}");
                    print("¿Tiene data?: ${snapshot.hasData}");
                    print("data: ${snapshot.data}");
                    print("tiene error: ${snapshot.hasError}");
                    print("hasshcode: ${snapshot.hashCode}");
                    print("------------------------------");
                    if (snapshot.hasData) {
                      List<Map> data = snapshot.data;
                      print(data);
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            data[index]["name"],
                            textAlign: TextAlign.center,
                          );
                        },
                      );
                    }
                    return CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 2,
                    );
                    // Text("CARGANDO...");
                    // return Text(
                    //   snapshot.data == null
                    //       ? "esperando"
                    //       : snapshot.data.toString(),
                    // );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

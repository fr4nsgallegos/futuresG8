import 'package:flutter/material.dart';
import 'package:futuresg8/models/pendiente_model.dart';
import 'package:futuresg8/models/profile_model.dart';
import 'package:futuresg8/models/social_model.dart';
import 'package:futuresg8/services/service_data.dart';

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  late ProfileModel persona1;
  ServiceData serviceData = ServiceData();

  Future<void> getData() async {
    persona1 = await serviceData.getProfile();
    setState(() {});
  }

  @override
  void initState() {
    // getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FutureBuilder(
                future: serviceData.getSpecificProfile(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // List<ProfileModel> profilesList = snapshot.data!;
                    persona1 = snapshot.data!;
                    // persona1 = profilesList[1];
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: double.infinity,
                          height: 200,
                          color: Colors.red,
                          child: Row(
                            children: [
                              Image.network(
                                persona1.image,
                                fit: BoxFit.cover,
                                height: 90,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                      "${persona1.fullName} - ${persona1.profesion}"),
                                  Row(
                                    children: [
                                      ...persona1.socialList
                                          .map(
                                            (e) => Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                children: [
                                                  Text(e.titulo),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(e.value.toString()),
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      // Column(children: [Text(persona1.socialList)],)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Text("INFORMACION"),
                        Text(persona1.information),
                        ...persona1.pendientesList
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ListTile(
                                  leading: Image.network(e.imageUrl),
                                  title: Text(e.titulo),
                                  subtitle: Text(e.description),
                                  trailing: Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ],
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                })),
      ),
    );
  }
}

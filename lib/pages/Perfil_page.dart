import 'package:flutter/material.dart';
import 'package:futuresg8/models/pendiente_model.dart';
import 'package:futuresg8/models/profile_model.dart';
import 'package:futuresg8/models/social_model.dart';

class PerfilPage extends StatelessWidget {
  ProfileModel persona1 = ProfileModel(
    id: 1,
    fullName: "Juan Manuek",
    profesion: "Developer",
    image:
        "https://img.freepik.com/foto-gratis/apuesto-hombre-caucasico-ropa-informal-gafas-sonrisa-alegre-fresca-cara-persona-suerte_839833-12772.jpg",
    information:
        "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown p",
    socialList: [
      SocialModel(titulo: "Articles", value: 43),
      SocialModel(titulo: "Followers", value: 234),
      SocialModel(titulo: "Rating", value: 6.3),
    ],
    pendientesList: [
      PendienteModel(
          id: 1,
          titulo: "Ir de compras al super",
          description: "No te olvides de llevar la lista"),
      PendienteModel(
          id: 2,
          titulo: "Lllevar las cosas a la casa del trabajo",
          description: "Son cosas delicadas, tener cuidado"),
      PendienteModel(
          id: 3,
          titulo: "Consiguir comida para las mascotas",
          description: "Debe ser bajo en grasas"),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                        Text("${persona1.fullName} - ${persona1.profesion}"),
                        Row(
                          children: [
                            ...persona1.socialList
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.all(10.0),
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
            ],
          ),
        ),
      ),
    );
  }
}

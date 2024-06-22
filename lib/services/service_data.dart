import 'package:futuresg8/models/pendiente_model.dart';
import 'package:futuresg8/models/profile_model.dart';
import 'package:futuresg8/models/social_model.dart';

class ServiceData {
  Future<ProfileModel> getProfile() {
    return Future.delayed(Duration(seconds: 5), () {
      return ProfileModel(
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
              description: "No te olvides de llevar la lista",
              imageUrl:
                  "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
          PendienteModel(
              id: 2,
              titulo: "Lllevar las cosas a la casa del trabajo",
              description: "Son cosas delicadas, tener cuidado",
              imageUrl:
                  "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
          PendienteModel(
              id: 3,
              titulo: "Consiguir comida para las mascotas",
              description: "Debe ser bajo en grasas",
              imageUrl:
                  "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        ],
      );
    });
  }

  List<ProfileModel> profileModelListaAux = [
    ProfileModel(
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
            description: "No te olvides de llevar la lista",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 2,
            titulo: "Lllevar las cosas a la casa del trabajo",
            description: "Son cosas delicadas, tener cuidado",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 3,
            titulo: "Consiguir comida para las mascotas",
            description: "Debe ser bajo en grasas",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
      ],
    ),
    ProfileModel(
      id: 1,
      fullName: "JHONNY GALLEGOS",
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
            description: "No te olvides de llevar la lista",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 2,
            titulo: "Lllevar las cosas a la casa del trabajo",
            description: "Son cosas delicadas, tener cuidado",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 3,
            titulo: "Consiguir comida para las mascotas",
            description: "Debe ser bajo en grasas",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
      ],
    ),
    ProfileModel(
      id: 1,
      fullName: "SDANTOS",
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
            description: "No te olvides de llevar la lista",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 2,
            titulo: "Lllevar las cosas a la casa del trabajo",
            description: "Son cosas delicadas, tener cuidado",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
        PendienteModel(
            id: 3,
            titulo: "Consiguir comida para las mascotas",
            description: "Debe ser bajo en grasas",
            imageUrl:
                "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg"),
      ],
    ),
  ];
  Future<List<ProfileModel>> getProfilesList() {
    return Future.delayed(Duration(seconds: 6), () {
      return profileModelListaAux;
    });
  }

  Future<ProfileModel> getSpecificProfile() {
    return Future.delayed(Duration(seconds: 2), () {
      return profileModelListaAux[2];
    });
  }
}

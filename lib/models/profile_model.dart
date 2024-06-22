import 'package:futuresg8/models/pendiente_model.dart';
import 'package:futuresg8/models/social_model.dart';

class ProfileModel {
  int id;
  String fullName;
  String profesion;
  String image;
  String information;
  List<SocialModel> socialList;
  List<PendienteModel> pendientesList;

  ProfileModel({
    required this.id,
    required this.fullName,
    required this.profesion,
    required this.image,
    required this.information,
    required this.socialList,
    required this.pendientesList,
  });
}

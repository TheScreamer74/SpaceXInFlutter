import 'package:dio/dio.dart';
import 'package:space_x_viewer/Model/Company.dart';
import 'package:space_x_viewer/Model/Crewmate.dart';
import 'package:space_x_viewer/Model/Landpad.dart';
import 'package:space_x_viewer/Model/Launch.dart';
import 'package:space_x_viewer/Model/Launchpad.dart';
import 'package:space_x_viewer/Model/Roadster.dart';
import 'package:space_x_viewer/Model/Rocket.dart';

class SpaceXService {
  Dio dio = Dio();

  SpaceXService() {
    dio.options.baseUrl = "https://api.spacexdata.com/v4/";

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler){
        print(options.uri);
        return handler.next(options);
      },

      onError: (DioError e, handler){
        switch (e.response?.statusCode)  {
          case 404:
            print("Erreur 404 " + e.requestOptions.path + " non trouvé");
            break;
            default:
              print("Unhandled Network error");
        }
      }
    ));


  }

  //Company request
  Future<Company?> getCompany() async {
    try {
      Company? company = await dio.get<Map<String, dynamic>>("/company").then((response){
          return response.data != null ? Company.fromJson(response.data!) : null;
      });
      return company;
    } catch (e) {
      print("Erreur : $e");
      return null;
    }
  }

  //Crew request
  Future<List<Crewmate>?> getCrew() async {
    try {
      List<Crewmate>? crew = await dio.get<List<dynamic>>("/crew").then((response) {
          return response.data != null ? Crewmate.parseCrew(response.data!) : null;
      });
      return crew;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Landpads request
  Future<List<Landpad>?> getLandpads() async {
    try {
      List<Landpad>? landpads = await dio.get<List<dynamic>>("/landpads").then((response) {
          return response.data != null ? Landpad.parseLandpads(response.data!) : null;
      });
      return landpads;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Landpad request
  Future<Landpad?> getSpecificLandpad(String id) async {
    try {
      Landpad? landpad = await dio.get<Map<String, dynamic>>("/landpads/$id").then((response) {
        return response.data != null ? Landpad.fromJson(response.data!) : null;
      });
      return landpad;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Launches request
  Future<List<Launch>?> getLaunches() async {
    try {
      List<Launch>? launches = await dio.get<List<dynamic>>("/launches").then((response) {
        return response.data != null ? Launch.parseLaunch(response.data!) : null;
      });
      return launches;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Launch request
  Future<Launch?> getLaunch(String id) async {
    try {
      Launch? launch = await dio.get<Map<String, dynamic>>("/launches/$id").then((response) {
        return response.data != null ? Launch.fromJson(response.data!) : null;
      });
      return launch;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Past Launches request
  Future<List<Launch>?> getPastLaunches() async {
    try {
      List<Launch>? launches = await dio.get<List<dynamic>>("/launches/past").then((response) {
        return response.data != null ? Launch.parseLaunch(response.data!) : null;
      });
      return launches;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Upcoming Launches request
  Future<List<Launch>?> getUpcomingLaunches() async {
    try {
      List<Launch>? launches = await dio.get<List<dynamic>>("/launches/upcoming").then((response) {
        return response.data != null ? Launch.parseLaunch(response.data!) : null;
      });
      return launches;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Latest Launch request
  Future<Launch?> getLatestLaunch() async {
    try {
      Launch? launch = await dio.get<Map<String, dynamic>>("/launches/latest").then((response) {
        return response.data != null ? Launch.fromJson(response.data!) : null;
      });
      return launch;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Next Launch request
  Future<Launch?> getNextLaunch() async {
    try {
      Launch? launch = await dio.get<Map<String, dynamic>>("/launches/next").then((response) {
        return response.data != null ? Launch.fromJson(response.data!) : null;
      });
      return launch;
    } catch (e) {
      print(e);
      return null;
    }
  }


  //Launchpads request
  Future<List<Launchpad>?> getLaunchpads() async {
    try {
      List<Launchpad>? launchpads = await dio.get<List<dynamic>>("/launchpads").then((response) {
        return response.data != null ? Launchpad.parseLaunchpads(response.data!) : null;
      });
      return launchpads;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Landpad request
  Future<Launchpad?> getSpecificLaunchpad(String id) async {
    try {
      Launchpad? launchpad = await dio.get<Map<String, dynamic>>("/launchpads/$id").then((response) {
        return response.data != null ? Launchpad.fromJson(response.data!) : null;
      });
      return launchpad;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Next Launch request
  Future<Roadster?> getRoadster() async {
    try {
      Roadster? roadster = await dio.get<Map<String, dynamic>>("/roadster").then((response) {
        return response.data != null ? Roadster.fromJson(response.data!) : null;
      });
      return roadster;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Rockets request
  Future<List<Rocket>?> getRockets() async {
    try {
      List<Rocket>? rockets = await dio.get<List<dynamic>>("/rockets").then((response) {
        return response.data != null ? Rocket.parseRocket(response.data!) : null;
      });
      return rockets;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Landpad request
  Future<Rocket?> getSpecificRocket(String id) async {
    try {
      Rocket? rocket = await dio.get<Map<String, dynamic>>("/rockets/$id").then((response) {
        return response.data != null ? Rocket.fromJson(response.data!) : null;
      });
      return rocket;
    } catch (e) {
      print(e);
      return null;
    }
  }



}
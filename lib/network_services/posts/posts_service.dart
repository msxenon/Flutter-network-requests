import 'package:dio/dio.dart';
import 'package:flutter_net_requests_handler/models/api_response.dart';
import 'package:flutter_net_requests_handler/models/post_model.dart';
import 'package:flutter_net_requests_handler/network_services/network_exception.dart';
import 'package:flutter_net_requests_handler/network_services/posts/dio_client.dart';

class PostsService {
   DioClient dioClient;
  String _baseUrl = "https://jsonplaceholder.typicode.com/";

   PostsService() {
    var dio = Dio();
    dioClient = DioClient(_baseUrl, dio);
  }
   Future<Result<PostModel>> getPost() async {
     try {
       final response = await dioClient
           .get("posts/1");
        return Result.success(PostModel.fromJson(response));
     } catch (e) {
       return Result.error(e);
     }
   }

   Future<Result<PostModel>> getError() async {
     try {
        await dioClient
           .get("posts/1").then((value) =>        throw DioError(type: DioErrorType.CANCEL,error: Exception('Loading error')));
     } catch (e) {
       return Result.error(getDioException(e));
     }
   }
}
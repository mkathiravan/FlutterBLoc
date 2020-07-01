import 'package:flutter_bloc/models/chuck_response.dart';
import 'package:flutter_bloc/network/ApiProvider.dart';

class ChuckRepository
{
  ApiProvider _provider = ApiProvider();


  Future<chuckResponse> fetchChuckJoke(String category) async
  {
    final response = await _provider.get("jokes/random?category=" + category);
    return chuckResponse.fromJson(response);
  }


}
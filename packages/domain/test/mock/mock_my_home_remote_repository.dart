import 'package:domain/repository/my_home_remote_repository.dart';

class MockMyHomeRemoteRepository implements MyHomeRemoteRepository {
  @override
  Future<int> count(int value) async {
    return value+2;
  }

}
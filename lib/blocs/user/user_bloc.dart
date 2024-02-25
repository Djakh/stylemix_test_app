import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:stylemix_test_app/models/users.dart';
import 'package:stylemix_test_app/repositories/user.dart';
import 'package:stylemix_test_app/repositories/util/exception.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    final client = http.Client();

    on<GetUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final user = await UserRepository.fetchUser(client);
        emit(UserCompliedState(user: user));
      } on RepositoryException catch (exeption) {
        emit(UserFailedState(exception: exeption));
      } on Exception catch (exeption) {
        emit(UserFailedState(exception: exeption));
      }
    });
  }
}

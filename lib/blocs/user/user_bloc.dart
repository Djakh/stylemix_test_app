import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:stylemix_test_app/models/user.dart';
import 'package:stylemix_test_app/repositories/user.dart';
import 'package:stylemix_test_app/repositories/util/exception.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUserEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        var box = Hive.box('userBox');
        if (box.containsKey('user')) {
          var userData = box.get('user');

          emit(UserCompliedState(user: (userData is User) ? userData : null));
        } else {
          emit(UserCompliedState(user: null));
        }
      } on Exception catch (exeption) {
        print("my exception is $exeption");
        emit(UserFailedState(exception: exeption));
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(UserLoadingState());
      await Future.delayed(const Duration(milliseconds: 1200));

      try {
        final user = await UserRepository.login(event.login, event.password);

        if (user != null) {
          var box = Hive.box('userBox');
          await box.put('user', user);
          emit(UserCompliedState(user: user));
        } else {
          emit(UserFailedState(exception: Exception("There is no user with this credentials")));
        }
      } on RepositoryException catch (exeption) {
        emit(UserFailedState(exception: exeption));
      } on Exception catch (exeption) {
        print('Error loading user data: $exeption');

        emit(UserFailedState(exception: exeption));
      }
    });

    on<LogOutUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        var box = Hive.box('userBox');
        await box.delete('user');
        emit(UserCompliedState(user: null));
      } on RepositoryException catch (exeption) {
        emit(UserFailedState(exception: exeption));
      } on Exception catch (exeption) {
        print('Error loading user data: $exeption');

        emit(UserFailedState(exception: exeption));
      }
    });
  }
}

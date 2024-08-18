import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  var logger = Logger();

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.d('Bloc : $bloc created');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d('Bloc: $bloc with Event : $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.t('Bloc: $bloc with Change : $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.i('Bloc: $bloc with Transition : $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('Bloc: $bloc with Error : $error');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.w('Bloc: $bloc closed');
  }
}

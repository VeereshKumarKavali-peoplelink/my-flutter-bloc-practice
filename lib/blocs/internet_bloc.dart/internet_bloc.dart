
import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:my_flutter_bloc_practice/blocs/internet_bloc.dart/internet_event.dart';
import 'package:my_flutter_bloc_practice/blocs/internet_bloc.dart/internet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class InternetBloc extends Bloc<InternetEvent, InternetBloc>{
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;


  InternetBloc() : super( InternetInitialState() as InternetBloc){

    on<InternetLostEvent>((event, emit) => emit(InternetLostState() as InternetBloc));
    on<InternetGainedEvent>((event, emit)=> emit(InternetGainedState() as InternetBloc));

    _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
        add(InternetGainedEvent());

      }else{
        add(InternetLostEvent());
      }
     });


  }

  @override
  Future<void> close(){
    return super.close();
  }

}
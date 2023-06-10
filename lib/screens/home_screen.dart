// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../blocs/internet_bloc.dart/internet_bloc.dart';
// import '../blocs/internet_bloc.dart/internet_state.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body:
//         SafeArea(child: Center(child: BlocBuilder<InternetBloc, InternetState>(
//       builder: (context, state) {
//         if (state is InternetGainedState) {
//           // == to check value , is to check data type
//           return const Text("Connected!");
//         } else if (state is InternetLostState) {
//           return const Text("Not Connected");
//         } else {
//           return const Text("Loading...");
//         }
//       },
//     ))));
//   }
// }

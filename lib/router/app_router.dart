import 'package:flutter/material.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/router/route_to_bloc_mapper.dart';

class AppRouter {
  final Environment _environment;
  AppRouter(this._environment);

  late final _mapper = RouteToBlocMapper(_environment);

  Route<dynamic> getRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => _mapper.getBlocFactory(settings).createBloc());
  }
}
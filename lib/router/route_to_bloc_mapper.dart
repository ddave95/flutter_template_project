import 'package:flutter/material.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/bloc/bloc_factory.dart';
import 'package:flutter_template_project/factory/bloc/my_home_bloc_factory.dart';
import 'package:flutter_template_project/router/app_route.dart';

class RouteToBlocMapper {
  final Environment _environment;
  RouteToBlocMapper(this._environment);

  BlocFactory getBlocFactory(RouteSettings settings) {
    switch(settings.name) {
      case AppRoute.myHome: return MyHomeBlocFactory(_environment);
      default: return MyHomeBlocFactory(_environment);
    }
  }
}
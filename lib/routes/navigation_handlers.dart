import 'package:flutter/material.dart';


// helper function to navigate to any route 
void navigateToRoute(BuildContext context, String routeName) {
  Navigator.of(context).pushNamed(routeName);
}



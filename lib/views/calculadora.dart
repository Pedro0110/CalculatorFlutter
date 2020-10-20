import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Models/Utils.dart';
import '../Components/Display.dart';
import '../Components/Keyboard.dart';


class Calculator extends StatefulWidget {

	@override
	_CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
	final Utils util = Utils();

	_onClick(String response){
		setState(() {
			util.applyCommand(response);  
		});
		
	}

	@override
	Widget build(BuildContext context) {	
		SystemChrome.setPreferredOrientations([
			DeviceOrientation.portraitUp
		]);
	return MaterialApp(
		debugShowCheckedModeBanner: false,
		home: Column(
			children: <Widget>[
				Display(util.value),
				KeyBoard(_onClick)
			],
		),
	);
	}
}
import 'package:flutter/material.dart';
import 'Buttons/ButtonIcon.dart';
import 'Buttons/Button.dart';
import 'Buttons/ButtonRow.dart';

class KeyBoard extends StatelessWidget {
final void Function(String) press;

KeyBoard(
	this.press
);

	@override
	Widget build(BuildContext context) {
	return Container(
		height: 500,
		child: Column(children: [
			ButtonRow(
				Buttons: [
					Button.big(param: "Clear",colorButton: Colors.blue, press: press),
					ButtonIcon(param: "<-", press: press),
					// Button(param: "<-", colorButton: Colors.blueAccent, press: press),
					Button(param: "+", colorButton: Colors.blueGrey, press: press),
				],
			),
			ButtonRow(
				Buttons: [
					Button(param: "1", press: press),
					Button(param: "2", press: press),
					Button(param: "3", press: press),
					Button(param: "/", colorButton: Colors.blueGrey, press: press)
				],
			),
			ButtonRow(
				Buttons: [
					Button(param: "4", press: press),
					Button(param: "5", press: press),
					Button(param: "6", press: press),
					Button(param: "x", colorButton: Colors.blueGrey, press: press)
				],
			),
			ButtonRow(
				Buttons: [
					Button(param: "7", press: press),
					Button(param: "8", press: press),
					Button(param: "9", press: press),
					Button(param: "-", colorButton: Colors.blueGrey, press: press),
				],
			),
			ButtonRow(
				Buttons: [
					Button(param: ".", press: press),
					Button(param: "0", press: press),
					Button.big(param: "=", colorButton: Colors.blueGrey, press: press)
				],
			)

			
		],),	

	);
  }
}
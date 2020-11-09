import 'package:flutter/material.dart';

class Button extends StatelessWidget {

final String param;
final Color colorButton;
final bool big;
final void Function(String) press;

	Button({
		@required this.param,
		this.colorButton = Colors.white,
		this.big = false,
		@required this.press
	});

	Button.big({
		@required this.param,
		this.colorButton = Colors.white,
		this.big = true,
		@required this.press
	});

	@override
	Widget build(BuildContext context) {
		return Expanded(
			flex: big ? 2 : 1,
			child: Padding(
				padding: const EdgeInsets.all(1.5),
				child: RaisedButton(
					color: colorButton,
					child: Text(
						param,
						style: TextStyle(
								fontSize: 30
							),
						),
					onPressed: () => press(param)
				),
			),
		);
	}
}
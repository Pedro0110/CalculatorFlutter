import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {

final String param;
final void Function(String) press;

	ButtonIcon({
		@required this.param,
		@required this.press
	});

	@override
	Widget build(BuildContext context) {
		return Expanded(
			child: Padding(
				child: IconButton(
					icon: Icon(Icons.backspace),
					// color: Colors.blueAccent,
					onPressed: () => press(param)
				),
				padding: const EdgeInsets.all(1.5),
			),
		);
	}
}
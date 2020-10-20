import 'package:flutter/material.dart';
import 'Button.dart';

class ButtonRow extends StatelessWidget {
	final List<Button> Buttons;

	ButtonRow({
		this.Buttons
	});

	@override
	Widget build(BuildContext context) {
		return Expanded(
			flex: 1,
			
			child: Row(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: Buttons
			),
		);
	}
}
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
	final  String text;

	Display(this.text);
	@override
	Widget build(BuildContext context) {
	return Expanded(
		flex: 1,
			child: Container(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.stretch,
					mainAxisAlignment: MainAxisAlignment.end,
				
					children: [
						Padding(
							padding: const EdgeInsets.all(8.0),
							child: AutoSizeText(
								text,
								minFontSize: 20,
								maxFontSize: 80,
								maxLines: 1,
								textAlign: TextAlign.end,
								style: TextStyle(
									decoration: TextDecoration.none,
									color: Colors.white,
									fontWeight: FontWeight.w200,
									fontSize: 80
									),
							),
						),
					],
				),
		),
	);
	}
}
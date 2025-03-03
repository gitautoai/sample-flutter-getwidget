import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButton widget test', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GFButton(
          onPressed: () {
            pressed = true;
          },
          text: 'Test Button',
        ),
      ),
    ));

    expect(find.text('Test Button'), findsOneWidget);
    await tester.tap(find.byType(GFButton));
    expect(pressed, isTrue);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GfButton displays text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: GfButton(
          onPressed: null,
          text: 'Click Me',
        ),
      ),
    ));

    expect(find.text('Click Me'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButtonBadge widget smoke test', (WidgetTester tester) async {
    bool pressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {
              pressed = true;
            },
            text: 'Test',
          ),
        ),
      ),
    );

    // Verify that the widget renders with provided text
    expect(find.text('Test'), findsOneWidget);

    // Tap the button and verify the onPressed callback is invoked
    await tester.tap(find.byType(GFButtonBadge));
    await tester.pump();
    expect(pressed, isTrue);
  });
}

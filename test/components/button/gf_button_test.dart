import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButton renders correctly and responds to tap', (WidgetTester tester) async {
    bool tapped = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GFButton(
          text: 'Test Button',
          onPressed: () {
            tapped = true;
          },
        ),
      ),
    ));

    // Verify the GFButton renders with correct text
    expect(find.text('Test Button'), findsOneWidget);

    // Tap the button.
    await tester.tap(find.byType(GFButton));
    await tester.pump();

    expect(tapped, isTrue);
  });

  testWidgets('GFButton disabled state works correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GFButton(
          text: 'Disabled Button',
          onPressed: null,
        ),
      ),
    ));

    // The button should be disabled, we check that text exists
    expect(find.text('Disabled Button'), findsOneWidget);

    // Tapping should not trigger anything
    await tester.tap(find.byType(GFButton));
    await tester.pump();
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/components/badge/gf_button_badge.dart';

void main() {
  testWidgets('GFBadgeButton displays text when provided', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFBadgeButton(text: 'Button Badge', onPressed: () {}),
        ),
      ),
    );
    expect(find.text('Button Badge'), findsOneWidget);
  });

  testWidgets('GFBadgeButton displays child widget when no text is provided', (WidgetTester tester) async {
    final childKey = Key('child_key');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFBadgeButton(icon: Container(key: childKey), onPressed: () {}),
        ),
      ),
    );
    expect(find.byKey(childKey), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFBadge displays text when text is provided', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFBadge(
            text: 'Test Badge',
          ),
        ),
      ),
    );

    expect(find.text('Test Badge'), findsOneWidget);
  });

  testWidgets('GFBadge displays child widget when no text is provided', (WidgetTester tester) async {
    final childKey = Key('child_key');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFBadge(
            child: Container(key: childKey),
          ),
        ),
      ),
    );

    expect(find.byKey(childKey), findsOneWidget);
  });

  testWidgets('GFBadge uses default size and color properties', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFBadge(
            text: 'Default',
          ),
        ),
      ),
    );

    final badge = tester.widget<GFBadge>(find.byType(GFBadge));
    expect(badge.color, GFColors.DANGER);
    expect(badge.size, GFSize.SMALL);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFIconBadge displays an icon when provided', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFIconBadge(child: Icon(Icons.star), counterChild: Container()),
        ),
      ),
    );
    expect(find.byIcon(Icons.star), findsOneWidget);
  });

  testWidgets('GFIconBadge displays an icon with default properties', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFIconBadge(child: Icon(Icons.favorite), counterChild: Container()),
        ),
      ),
    );
    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}

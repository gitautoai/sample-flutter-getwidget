import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFIconBadge displays child and counterChild correctly', (WidgetTester tester) async {
    final child = Icon(Icons.favorite);
    final counterChild = Text('1');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFIconBadge(
            child: child,
            counterChild: counterChild,
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
  });
}

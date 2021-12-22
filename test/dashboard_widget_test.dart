import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display the main image the dashboard started',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should display the first feature when dashboard starts',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final firstFeature = find.byType(FeatureItem);

    expect(firstFeature, findsWidgets);
  });
}

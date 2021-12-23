import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';
import '../mocks/mocks.dart';

void main() {
  testWidgets('should display the main image the dashboard started',
      (WidgetTester tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));
    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should display the transfer feature when dashboard starts',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));
    // Old cod
    // final iconTransferFeatureItem =
    //     find.widgetWithIcon(FeatureItem, Icons.monetization_on);

    // final nameTransferFeatureItem =
    //     find.widgetWithText(FeatureItem, 'Transfer');

    // expect(iconTransferFeatureItem, findsOneWidget);

    final transferFeatureItem = find.byWidgetPredicate((widget) {
      return featureItemMethod(widget, 'Transfer', Icons.monetization_on);
    });
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets(
      'Should display the transaction feed feature when dashboard starts',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester.pumpWidget(MaterialApp(
        home: Dashboard(
      contactDao: mockContactDao,
    )));

    final transactionFeedFeatureItem = find.byWidgetPredicate((widget) {
      return featureItemMethod(widget, 'Transaction Feed', Icons.description);
    });

    expect(transactionFeedFeatureItem, findsOneWidget);
  });
}

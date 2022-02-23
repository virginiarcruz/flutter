import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the value when create a transaction', () {
    final transaction = Transaction('', 200, Contact(0, 'Alex', 2000));
    expect(transaction.value, 200);
  });
  test('Should display error when transaction with value less than zero', () {
    expect(() => Transaction('', 0, Contact(0, 'Alex', 2000)),
        throwsAssertionError);
  });
}

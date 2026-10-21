import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_unimed/main.dart';

void main() {
  testWidgets('Menampilkan teks Hello, World!', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloApp());
    expect(find.text('Hello, World!'), findsOneWidget);
  });

  testWidgets('Tombol Sapa Saya menampilkan SnackBar', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelloApp());
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.text('Halo dari UNIMED!'), findsOneWidget);
  });
}

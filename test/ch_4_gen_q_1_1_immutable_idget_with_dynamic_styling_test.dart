import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ch_4_gen_q_1_1_immutable_idget_with_dynamic_styling/ch_4_gen_q_1_1_immutable_idget_with_dynamic_styling.dart';

void main() {
  testWidgets('Immutable widget changes style on button press', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: YourImmutableWidget()));
 
    final initialStyle = find.byType(Container).evaluate().single.widget as Container;
    expect(initialStyle.decoration, isInstanceOf<BoxDecoration>());
 
    // Simulate button press
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
 
    final changedStyle = find.byType(Container).evaluate().single.widget as Container;
    expect(changedStyle.decoration, isNot(equals(initialStyle.decoration)));
  });
}
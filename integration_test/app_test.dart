import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Tab host integration tests', () {
    testWidgets('Test tab host', (WidgetTester tester) async {

      const String snackBarMessage = 'Button is clicked';
      
      app.main();
      await tester.pumpAndSettle();
      
      // check if the 'Tab 1' is on the screen
      expect(find.text('Tab 1'), findsOneWidget);

      // check if the 'Tab 1' is on the screen
      expect(find.text('Tab 2'), findsOneWidget);

      // check if the text 'Text on the Tab 1' is on the screen
      expect(find.text('Text on the Tab 1'), findsOneWidget);

      // Find the Tab 1 and tap
      final Finder tabItem1 = find.byTooltip('Tab 1');
      await tester.tap(tabItem1);
      await tester.pumpAndSettle();


      // Find the Tab 1 and tap
      final Finder tabItem2 = find.byTooltip('Tab 2');
      await tester.tap(tabItem2);
      await tester.pumpAndSettle();

      // now the text 'Text on the Tab 1' shouldn't be on the screen
      expect(find.text('Text on the Tab 1'), findsNothing);

      // expect the button is visible on the screen 
      expect( find.byKey(Key('key_button')), findsOneWidget);
   
      // Snac bar is not visible before clicking on the button 
      expect(find.text(snackBarMessage), findsNothing);

      // find the button and click on it
      final Finder button = find.byKey(Key('key_button'));
      await tester.tap(button);
      await tester.pump();

      // Expect the SnackBar after button click
      expect(find.text(snackBarMessage), findsOneWidget);
      await tester.pumpAndSettle();

    });
  });
}

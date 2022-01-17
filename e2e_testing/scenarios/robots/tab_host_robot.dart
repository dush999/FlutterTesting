import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_testing/constants/string_constants.dart';
import 'package:test/test.dart';

/// Helper Class for End-To-End testing of TabHostPage
class TabHostPageRobot {
  final FlutterDriver driver;
  const TabHostPageRobot(this.driver);

  /// Function for testing the first tab's UIs
  Future<void> testFirstTab() async {
    await Future.delayed(const Duration(seconds: 2));

    testTab1Presence();
    testTab2Presence();
    checkTextPresence();
  }

  /// Function for testing the second tab's UIs
  Future<void> testSecondTab() async {
    await clickOnTheTab2();
    await checkButtonsPresence();
    await clickOnButton();
    await checkSnacBarMessageIsShown();
  }

  /// Verify the presence of the first tab ('Tab 1') in the screen
  Future<void> testTab1Presence() async {
    await driver.waitFor(find.byValueKey('key_bottom_nav_bar'));
    expect(await driver.getText(find.text(StringConstants.tabItem1Title)),
        'Tab 1'); 
  }

  /// Verify the presence of the scound tab('Tab 2') in the screen
  Future<void> testTab2Presence() async {
    expect(await driver.getText(find.text(StringConstants.tabItem2Title)),
        'Tab 2'); 
  }

  /// Verify the presence of the text under first tab
  Future<void> checkTextPresence() async {
    expect(await driver.getText(find.byValueKey('key_text')),
        'Text on the Tab 1');
  }

  /// Tap on the secound Tab
  Future<void> clickOnTheTab2() async {
    await driver.waitFor(find.byValueKey('key_bottom_nav_bar'));
    await driver.tap(find.text(StringConstants.tabItem2Title));
    await Future.delayed(const Duration(seconds: 1));
  }

  /// Verify the presence of the button under second tab
  Future<void> checkButtonsPresence() async {
    expect(await driver.getText(find.text(StringConstants.buttonTittle)),
        'Button on the Tab 2');
  }

  /// click on the button on Tab page 1
  Future<void> clickOnButton() async {
    await driver.waitFor(find.byValueKey('key_button'));
    await driver.tap(find.byValueKey('key_button'));
  }

  /// Check if the SnacBar message is shown after button click
  Future<void> checkSnacBarMessageIsShown() async {
    final welcomeMessageFinder = find.text(StringConstants.snacBarMessage);
    await driver.waitFor(welcomeMessageFinder);
    expect(await driver.getText(welcomeMessageFinder), 'Button is clicked');
  }
}

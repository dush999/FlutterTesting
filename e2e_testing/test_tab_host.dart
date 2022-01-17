import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'scenarios/robots/tab_host_robot.dart';

void main() {
  late final FlutterDriver driver;
  late final TabHostPageRobot tabHostPageRobot;

  setUpAll(() async {
    driver = await FlutterDriver.connect();
    tabHostPageRobot = TabHostPageRobot(driver);
  });

  tearDownAll(() async {
    await driver.close();
  });

  group('Test Tab host\'s End-To-End -> ', () {
    test('Test first tab\'s contents', () async {
      await tabHostPageRobot.testFirstTab();
    });

    test('Test second tab\'s contents ', () async {
      await tabHostPageRobot.testSecondTab();
    });
  });
}

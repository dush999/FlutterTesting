# flutter_testing

Project used to showcase the Automate UI testing and integration testing

## App constains the following screens/UIs
1. A screen with two tabs. Clicking on tabs will change the content of the screen.
2. A text is shown under the first tab
3. A button is shown under the second tab. Clicking on the button will show a Snackbar with message 'Button is clicked'

## Tests covers the following scenarios
1. Two bottom tabs of the screen.
2. Verify the presence of the text under the first tab.
3. Verify the presence of the button under the second tab. Make the button click under the second tab.
4. Verify the presence of a snackbar after clicking on the button in the second tab.

## Tasks 1: Run the Automated UI tests (end-to-end testing)
To test on a real iOS / Android device, first connect the device and run the following command from the root of the project:

flutter drive  --target=e2e_testing/e2e.dart --driver=e2e_testing/test_tab_host.dart

## Tasks 2: (Bonus Task) : Run the integration test
Run the following command from the root of the project:

flutter test integration_test/app_test.dart

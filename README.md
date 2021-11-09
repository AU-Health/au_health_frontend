# AUCares

AUCares mobile app developed by Capstone CS group for AU Health Department.

## Running development build

To run the dev build, use this command:
`flutter run -t lib/main_dev.dart`

The default `flutter run` will not work because of our environment configuration.

## Deploy a new build

To deploy a new build to Testflight, simply create a new GitHub Release. Once you publish the release the `Deploy` job will run. The action for this is in the `fastlane.yml` file.

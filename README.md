# react-native-admob-banner

## Getting started

`$ npm install react-native-admob-banner --save`

### Mostly automatic installation

`$ react-native link react-native-admob-banner`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-admob-banner` and add `LKAdmobBanner.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libLKAdmobBanner.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import lightkits.admobbanner.LKAdmobBannerPackage;` to the imports at the top of the file
  - Add `new LKAdmobBannerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-admob-banner'
  	project(':react-native-admob-banner').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-admob-banner/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-admob-banner')
  	```


## Usage
```javascript
import LKAdmobBanner from 'react-native-admob-banner';

// TODO: What to do with the module?
LKAdmobBanner;
```
create-react-native-module admob-banner --prefix LK --package-identifier lightkits.admobbanner
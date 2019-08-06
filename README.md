
# react-native-azure-adal-sdk

## Getting started

`$ npm install react-native-azure-adal-sdk --save`

### Mostly automatic installation

`$ react-native link react-native-azure-adal-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-azure-adal-sdk` and add `RNAzureAdalSdk.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAzureAdalSdk.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNAzureAdalSdkPackage;` to the imports at the top of the file
  - Add `new RNAzureAdalSdkPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-azure-adal-sdk'
  	project(':react-native-azure-adal-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-azure-adal-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-azure-adal-sdk')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNAzureAdalSdk.sln` in `node_modules/react-native-azure-adal-sdk/windows/RNAzureAdalSdk.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Azure.Adal.Sdk.RNAzureAdalSdk;` to the usings at the top of the file
  - Add `new RNAzureAdalSdkPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNAzureAdalSdk from 'react-native-azure-adal-sdk';

// TODO: What to do with the module?
RNAzureAdalSdk;
```
  
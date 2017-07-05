
# react-native-unmute-video

## Getting started

`$ npm install react-native-unmute-video --save`

### Mostly automatic installation

`$ react-native link react-native-unmute-video`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-unmute-video` and add `RNUnmuteVideo.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNUnmuteVideo.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNUnmuteVideoPackage;` to the imports at the top of the file
  - Add `new RNUnmuteVideoPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-unmute-video'
  	project(':react-native-unmute-video').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-unmute-video/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-unmute-video')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNUnmuteVideo.sln` in `node_modules/react-native-unmute-video/windows/RNUnmuteVideo.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNUnmuteVideo;` to the usings at the top of the file
  - Add `new RNUnmuteVideoPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNUnmuteVideo from 'react-native-unmute-video';

// TODO: What to do with the module?
RNUnmuteVideo;
```
  
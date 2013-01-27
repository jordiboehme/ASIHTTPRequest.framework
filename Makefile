default:
	xcodebuild -target "ASIHTTPRequest" -configuration Release build -sdk iphonesimulator
	xcodebuild -target "ASIHTTPRequest" -configuration Release build -sdk iphoneos
	BUILD_DIR="build" BUILD_STYLE="Release" sh Scripts/CombineLibs.sh
	sh Scripts/iPhoneFramework.sh

clean:
	-rm -rf build/*


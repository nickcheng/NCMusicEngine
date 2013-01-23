# NCMusicEngine #

A simple and easy-to-use music engine support playing-while-downloading feature.

## Features ##

* Playing music while downloading.
* Cache downloaded music to disk. You can specify the cache key.
* Tracking downloading and playing progress.
* Background playing.

## Dependence ##

* AFDownloadRequestOperation
* AFNetworking
* ARC only

## Usage ##

Just playing:

```objective-c
NCMusicEngine *player = [[NCMusicEngine alloc] init];
player.delegate = self; // If you need...
[player playUrl:url];
```

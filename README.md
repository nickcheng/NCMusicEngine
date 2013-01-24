# NCMusicEngine #

A simple and easy-to-use music engine support playing-while-downloading feature.

## Features ##

* Playing music while downloading.
* Cache downloaded music to disk. You can specify the cache key.
* Tracking downloading and playing progress.
* Background playing.

## Dependence ##

All dependences are setted as sub module.

* AFDownloadRequestOperation: 
* AFNetworking
* ARC only

## Usage ##

Just playing:

```objective-c
NCMusicEngine *player = [[NCMusicEngine alloc] init];
player.delegate = self; // If you need...
[player playUrl:url];
```

NCMusicEngine generates cache key from your music url by default. If you need to manage it yourself, you could use the following method:

```objective-c
[player playUrl:url withCacheKey:@"cachekey"];
```

Tracking progress please use the following delegates:

```objective-c
- (void)engine:(NCMusicEngine *)engine didChangePlayState:(NCMusicEnginePlayState)playState;
- (void)engine:(NCMusicEngine *)engine didChangeDownloadState:(NCMusicEngineDownloadState)downloadState;
- (void)engine:(NCMusicEngine *)engine downloadProgress:(CGFloat)progress;
- (void)engine:(NCMusicEngine *)engine playProgress:(CGFloat)progress;
```

## Future ##

I'll keep polishing this engine and keep adding new features. If you have any problems when using this engine, please feel free to drop me an issue or contact me:

* Twitter: http://twitter.com/nickcheng


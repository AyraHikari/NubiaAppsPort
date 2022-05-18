.class public Lcn/nubia/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcn/nubia/music/app/listener/INotificationListener;
.implements Lnubia/gesture/sensor/MotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/MediaPlaybackService$MediaPlayerState;,
        Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;,
        Lcn/nubia/music/MediaPlaybackService$c;,
        Lcn/nubia/music/MediaPlaybackService$b;,
        Lcn/nubia/music/MediaPlaybackService$d;,
        Lcn/nubia/music/MediaPlaybackService$a;,
        Lcn/nubia/music/MediaPlaybackService$e;,
        Lcn/nubia/music/MediaPlaybackService$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_FANCYICON_CHECK:Ljava/lang/String; = "cn.nubia.launcher.fancyicon.check"

.field public static final ACTION_HEADSET_UNPLUGGED:Ljava/lang/String; = "action_headset_unplugged"

.field public static final APPWIDGET_UPDATE_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.appwidgetupdate"

.field public static final ARG_ANIM_BG_RUNNING:Ljava/lang/String; = "anim_bg_running"

.field public static final ATTRIBUTE_EQUALIZER:B = 0x1t

.field public static final ATTRIBUTE_REPEATMODE:B = 0x2t

.field public static final ATTRIBUTE_SCANMODE:B = 0x4t

.field public static final ATTRIBUTE_SHUFFLEMODE:B = 0x3t

.field private static final ATTR_STRS:[Ljava/lang/String;

.field public static final AUDIO_TYPE_LOCAL:I = 0x0

.field public static final CMD_GET:Ljava/lang/String; = "get"

.field public static final CMD_SET:Ljava/lang/String; = "set"

.field public static final END_CLOS_ETIME_ACTION:Ljava/lang/String; = "cn.nubia.music.timer.closemusic"

.field public static final EXIT_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.service.exit"

.field private static final EXTRA_ATTR_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTR_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTR_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTR_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_BINDER:Ljava/lang/String; = "binder"

.field private static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_IS_END:Ljava/lang/String; = "end"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field private static final FADEDOWN:I = 0x5

.field private static final FADEDOWN_PAUSE:I = 0xd

.field private static final FADEUP:I = 0x6

.field private static final FADEUP_PLAY:I = 0xe

.field private static final FADE_IN_TIME_UNIT:I = 0xa

.field private static final FADE_NEXT:I = 0xf

.field private static final FADE_OUT_TIME_UNIT:I = 0xa

.field private static final FADE_PREV:I = 0x10

.field private static final FANCY_ICON_URI:Landroid/net/Uri;

.field public static final FAVORITE_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.favorite"

.field private static final FOCUS_CHANGE:I = 0x4

.field public static final FORCE_EXIT:Ljava/lang/String; = "force_exit"

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_ATTR_INVALID:B = 0x7ft

.field private static final GET_INVALID:I = 0xff

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field private static final IDLE_DELAY:I = 0xea60

.field private static final INDEX_ID_COLUMN:I = 0x0

.field public static final LAST:I = 0x3

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final META_CHANGED:Ljava/lang/String; = "cn.nubia.music.preset.metachanged"

.field private static final METHOD_FANCY_ICON:Ljava/lang/String; = "fancyIcon"

.field private static final MSG_GET_ALBUM:I = 0xb

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.next"

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.pause"

.field private static final PKG_NAME:Ljava/lang/String; = "cn.nubia.music.preset"

.field public static final PLAYBACK_SERVICE_STATUS:I = 0x1

.field private static final PLAYER_SETTINGS_REQUEST:Ljava/lang/String; = "com.qualcomm.music.playersettingsrequest"

.field private static final PLAYER_SETTINGS_RESPONSE:Ljava/lang/String; = "com.qualcomm.music.playersettingsresponse"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "cn.nubia.music.preset.playstatechanged"

.field public static final PLAY_PAUSE_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.togglepause"

.field private static final PLAY_STATUS_REQUEST:Ljava/lang/String; = "com.qualcomm.music.playstatusrequest"

.field private static final PLAY_STATUS_RESPONSE:Ljava/lang/String; = "com.qualcomm.music.playstatusresponse"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.previous"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "cn.nubia.music.preset.queuechanged"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SEEK_CHANGED:Ljava/lang/String; = "cn.nubia.music.preset.seekchanged"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final STOP_ACTION:Ljava/lang/String; = "cn.nubia.music.preset.musicservicecommand.stop"

.field private static final SUPPORTED_ATTRS:[B

.field private static final SUPPORTED_REPEAT_MODES:[B

.field private static final SUPPORTED_SHUFFLE_MODES:[B

.field private static final SYNC_MSG_ENQUEUE_MUTI:I = 0xc

.field private static final SYNC_MSG_ENQUEUE_SINGLE:I = 0xd

.field private static final SYNC_MSG_FADE_GO_NEXT:I = 0x17

.field private static final SYNC_MSG_FADE_GO_PREV:I = 0x18

.field private static final SYNC_MSG_FADE_PAUSE:I = 0x15

.field private static final SYNC_MSG_FADE_PLAY:I = 0x16

.field private static final SYNC_MSG_NOTIFICATIONCHANGE:I = 0x9

.field private static final SYNC_MSG_OPEN_LOCAL:I = 0xa

.field private static final SYNC_MSG_RELEASE_WAKELOCK:I = 0x6

.field private static final SYNC_MSG_SEEK:I = 0x4

.field private static final SYNC_MSG_SERVER_DIED:I = 0x7

.field private static final SYNC_MSG_TRACK_END:I = 0x5

.field private static final UNSUPPORTED_LIST:[B

.field public static final UPDATE_LINK:Ljava/lang/String; = "cn.nubia.music.preset.update.link"

.field private static final UPDATE_NOTIFICATION:I = 0x8

.field private static final UPDATE_WIDGET:I = 0x9

.field public static final VALUE_REPEATMODE_ALL:B = 0x3t

.field public static final VALUE_REPEATMODE_GROUP:B = 0x4t

.field public static final VALUE_REPEATMODE_OFF:B = 0x1t

.field public static final VALUE_REPEATMODE_SINGLE:B = 0x2t

.field public static final VALUE_SHUFFLE_MODE_ALL:B = 0x2t

.field public static final VALUE_SHUFFLE_MODE_GROUP:B = 0x3t

.field public static final VALUE_SHUFFLE_MODE_OFF:B = 0x1t

.field private static mMountMsgId:I

.field private static mPlayList:[J

.field private static mPlayListLen:I

.field private static mPlayPos:I

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final hexdigits:[C

.field private mA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mContext:Landroid/content/Context;

.field private mCopyBitmap:Landroid/graphics/Bitmap;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentPath:Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDetector:Lnubia/gesture/sensor/MotionProxy;

.field private mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFileToPlay:Ljava/lang/String;

.field private mForceTouchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHeadsetOnWhenCallingAndPausePlay:Z

.field private mIsPausedByStatusClosed:Z

.field private mIsReg:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsTurnoverStopMusic:Z

.field private mLikeObserver:Lcn/nubia/music/MediaPlaybackService$a;

.field private mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

.field private mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

.field private mMediaMountedCount:I

.field private mMediaPlayerHandler:Landroid/os/Handler;

.field private mNotification:Landroid/app/Notification;

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPausedInCall:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private mQuietMode:Z

.field private final mRand:Lcn/nubia/music/MediaPlaybackService$d;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepeatMode:I

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    .line 147
    sput v3, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 151
    sput v7, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 153
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "music_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "song_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->PROJECTION:[Ljava/lang/String;

    .line 186
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_ATTRS:[B

    .line 195
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_REPEAT_MODES:[B

    .line 203
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_SHUFFLE_MODES:[B

    .line 207
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Equalizer"

    aput-object v1, v0, v5

    const-string v1, "Repeat Mode"

    aput-object v1, v0, v4

    const-string v1, "Shuffle Mode"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Scan Mode"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->ATTR_STRS:[Ljava/lang/String;

    .line 211
    new-array v0, v5, [B

    aput-byte v3, v0, v3

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->UNSUPPORTED_LIST:[B

    .line 283
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->FANCY_ICON_URI:Landroid/net/Uri;

    .line 1980
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcn/nubia/music/MediaPlaybackService;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1983
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1984
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4168
    sput v7, Lcn/nubia/music/MediaPlaybackService;->mMountMsgId:I

    return-void

    .line 186
    nop

    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data

    .line 195
    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 203
    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsHeadsetOnWhenCallingAndPausePlay:Z

    .line 142
    iput v2, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    .line 144
    iput v2, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 145
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mAutoShuffleList:[J

    .line 148
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 152
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$d;

    invoke-direct {v0, v3}, Lcn/nubia/music/MediaPlaybackService$d;-><init>(Lcn/nubia/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    .line 163
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

    .line 168
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mForceTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceStartId:I

    .line 172
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceInUse:Z

    .line 173
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 174
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mQuietMode:Z

    .line 175
    iput v2, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 179
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 236
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 240
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedInCall:Z

    .line 247
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsReg:Z

    .line 248
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsTurnoverStopMusic:Z

    .line 269
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mCopyBitmap:Landroid/graphics/Bitmap;

    .line 272
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsPausedByStatusClosed:Z

    .line 288
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$1;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 535
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$10;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$10;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    .line 628
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$11;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$11;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 930
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->hexdigits:[C

    .line 1250
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$17;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$17;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 4063
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$c;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$c;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-void

    .line 930
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static synthetic access$100(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsHeadsetOnWhenCallingAndPausePlay:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsHeadsetOnWhenCallingAndPausePlay:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/MediaPlaybackService;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->updateUsingNetworksStatus(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->fadePauseComplete()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->preparePrev()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/music/MediaPlaybackService;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->updateNotificationUI(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->updateWidgetUI()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$e;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsPausedByStatusClosed:Z

    return v0
.end method

.method static synthetic access$1902(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsPausedByStatusClosed:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->setFavorButtonImage()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->registerCommandReceiver()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->registerMediaButtonReceiver()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->registerFancyIconReceiver()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->registerForceTouchReceiver()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/music/MediaPlaybackService;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2602(Lcn/nubia/music/MediaPlaybackService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$2700(Lcn/nubia/music/MediaPlaybackService;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->realShowNotification()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedInCall:Z

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/music/MediaPlaybackService;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->showIconAnim(Z)V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedInCall:Z

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3102(Lcn/nubia/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0

    .prologue
    .line 79
    sput p0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    return p0
.end method

.method static synthetic access$3300()[J
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/music/MediaPlaybackService;)[C
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->hexdigits:[C

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/music/MediaPlaybackService;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCardId:I

    return v0
.end method

.method static synthetic access$3600(Lcn/nubia/music/MediaPlaybackService;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3602(Lcn/nubia/music/MediaPlaybackService;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    return p1
.end method

.method static synthetic access$3700(Lcn/nubia/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3802(I)I
    .locals 0

    .prologue
    .line 79
    sput p0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    return p0
.end method

.method static synthetic access$3900(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$4100(Lcn/nubia/music/MediaPlaybackService;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcn/nubia/music/MediaPlaybackService;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$4300(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4402(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$4500(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->notifyAttributeIDs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->notifyValueIDs(Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic access$4700(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->notifyAttributesText(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;I[B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/MediaPlaybackService;->notifyAttributeValuesText(Ljava/lang/String;I[B)V

    return-void
.end method

.method static synthetic access$4900(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;[BI)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/MediaPlaybackService;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$5000(Lcn/nubia/music/MediaPlaybackService;[B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->setValidAttributes([B)V

    return-void
.end method

.method static synthetic access$5100(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method static synthetic access$5200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->FANCY_ICON_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5300(Lcn/nubia/music/MediaPlaybackService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$5400(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    return-void
.end method

.method static synthetic access$5900(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->removeNowPlayingTrack()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    return-void
.end method

.method static synthetic access$6000(Lcn/nubia/music/MediaPlaybackService;Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$6102(I)I
    .locals 0

    .prologue
    .line 79
    sput p0, Lcn/nubia/music/MediaPlaybackService;->mMountMsgId:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/music/MediaPlaybackService;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/music/MediaPlaybackService;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$902(Lcn/nubia/music/MediaPlaybackService;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method private addToPlayList([JI)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service postion::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_3

    if-ltz p2, :cond_3

    move v0, v1

    .line 1503
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 1504
    :goto_1
    sget v4, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v4, :cond_0

    .line 1505
    aget-wide v4, p1, v0

    sget-object v6, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v6, v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1510
    :cond_0
    sget v4, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v4, :cond_1

    .line 1511
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1504
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1515
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 1516
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1520
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1521
    if-gez p2, :cond_5

    .line 1522
    sput v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    move p2, v1

    .line 1525
    :cond_5
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1526
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v0, :cond_6

    .line 1527
    sget p2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1531
    :cond_6
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v0, p2

    .line 1532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tailsize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1533
    :goto_3
    if-lez v0, :cond_7

    .line 1534
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int v5, p2, v0

    sget-object v6, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int v7, p2, v0

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 1533
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1538
    :cond_7
    :goto_4
    if-ge v1, v2, :cond_8

    .line 1539
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int v5, p2, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1538
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1541
    :cond_8
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v0, v2

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1542
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_9

    .line 1543
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 1545
    :cond_9
    const-string v0, "service addToplayList---"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPlaylistLenght:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method private clearReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 924
    if-eqz p1, :cond_0

    .line 925
    invoke-virtual {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 928
    :cond_0
    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 1990
    if-eqz p1, :cond_0

    .line 1991
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1993
    :catch_0
    move-exception v0

    .line 1994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createChannelNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 2065
    const-string v0, "createChannelNotification"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2066
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2067
    const-string v1, "nubiaSort"

    const-string v2, "Running"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2069
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "60"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f020089

    .line 2070
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2072
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 2073
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "force_exit"

    .line 2074
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 2073
    invoke-static {v0, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2076
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->isFav()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2077
    const v0, 0x7f020109

    const-string v2, "Favorite"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.favorite"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2084
    :goto_0
    const v0, 0x7f02011d

    const-string v2, "Previous"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2087
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2089
    const v0, 0x7f020111

    const-string v2, "Pause"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2097
    :goto_1
    const v0, 0x7f02010b

    const-string v2, "Next"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2100
    const v0, 0x7f02013e

    const-string v2, "Delete"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "force_exit"

    .line 2101
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 2100
    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2102
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 2103
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 2104
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2107
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 2108
    if-eqz v0, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2109
    :cond_0
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2111
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2112
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2114
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 2115
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v2, 0x40

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 2116
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2117
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 2119
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/nubia/music/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2122
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2124
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2125
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2127
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    new-instance v3, Lcn/nubia/music/MediaPlaybackService$6;

    invoke-direct {v3, p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService$6;-><init>(Lcn/nubia/music/MediaPlaybackService;Landroid/app/Notification$Builder;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2148
    return-void

    .line 2080
    :cond_3
    const v0, 0x7f020275

    const-string v2, "Favorite"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.favorite"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 2093
    :cond_4
    const v0, 0x7f020117

    const-string v2, "Play"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 2103
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private createRemoteViewNotification()V
    .locals 10

    .prologue
    const v9, 0x7f100083

    const v8, 0x7f100080

    const/4 v7, 0x1

    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    .line 2152
    const-string v0, "createRemoteViewNotification"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 2154
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Running"

    .line 2155
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020089

    .line 2156
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2157
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 2158
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2159
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2160
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/nubia/music/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2162
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2163
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2165
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2167
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030042

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2168
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f030021

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2172
    const-string v3, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2175
    const v4, 0x7f100085

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2176
    const v4, 0x7f100085

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2179
    const-string v3, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2182
    const v4, 0x7f100084

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2183
    const v4, 0x7f100084

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2186
    const-string v3, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2187
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2189
    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2190
    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2193
    const-string v3, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    const-string v3, "force_exit"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2195
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2197
    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2198
    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2200
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 2201
    if-eqz v0, :cond_1

    const-string v3, "<unknown>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2202
    :cond_1
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2204
    :cond_2
    const v3, 0x7f100086

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2205
    const v3, 0x7f100087

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2206
    const v3, 0x7f100086

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2207
    const v3, 0x7f100087

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    .line 2210
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2212
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2213
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v1, v0, v5}, Lcn/nubia/music/MediaPlaybackService;->setNotificationColor(Landroid/widget/RemoteViews;ZZ)V

    .line 2214
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v2, v0, v7}, Lcn/nubia/music/MediaPlaybackService;->setNotificationColor(Landroid/widget/RemoteViews;ZZ)V

    .line 2215
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2217
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    new-instance v3, Lcn/nubia/music/MediaPlaybackService$7;

    invoke-direct {v3, p0, v2, v0}, Lcn/nubia/music/MediaPlaybackService$7;-><init>(Lcn/nubia/music/MediaPlaybackService;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2237
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2739
    .line 2742
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_5

    .line 2743
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v2, v0}, Lcn/nubia/music/MediaPlaybackService;->removeTracks(II)I

    move v0, v1

    .line 2747
    :goto_0
    sget v4, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    sub-int v3, v4, v3

    rsub-int/lit8 v4, v3, 0x7

    move v3, v2

    .line 2748
    :goto_2
    if-ge v3, v4, :cond_3

    .line 2751
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2754
    :goto_3
    iget-object v5, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    iget-object v6, p0, Lcn/nubia/music/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcn/nubia/music/MediaPlaybackService$d;->a(I)I

    move-result v5

    .line 2755
    invoke-direct {p0, v5, v0}, Lcn/nubia/music/MediaPlaybackService;->wasRecentlyUsed(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2760
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2761
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v6, 0x64

    if-le v0, v6, :cond_0

    .line 2762
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2764
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2765
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v6, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v7, p0, Lcn/nubia/music/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v8, v7, v5

    aput-wide v8, v0, v6

    .line 2748
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_2

    .line 2747
    :cond_1
    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2758
    :cond_2
    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 2768
    :cond_3
    if-eqz v0, :cond_4

    .line 2769
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2771
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private doInBackground()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$12;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$12;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6

    .prologue
    .line 1480
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    if-le p1, v0, :cond_3

    .line 1481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1485
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [J

    .line 1486
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    .line 1487
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1488
    sget-object v3, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    .line 1487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1486
    :cond_1
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 1490
    :cond_2
    sput-object v2, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    .line 1494
    :cond_3
    return-void
.end method

.method private fadePauseComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2386
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->g()V

    .line 2387
    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState(Z)V

    .line 2388
    iput-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2389
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2390
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    .line 2391
    return-void
.end method

.method private getAbsPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 4108
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4109
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "data"

    aput-object v4, v2, v1

    const-string v5, "_id"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4113
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4114
    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4115
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4116
    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 4120
    :goto_0
    return-object v0

    .line 4119
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 4120
    const-string v0, ""

    goto :goto_0
.end method

.method private getCursorForId(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1731
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1732
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1734
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 1738
    :goto_0
    return-object v4

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method private getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getAbsPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4104
    :cond_0
    return-object p1
.end method

.method private getNextPosition(Z)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2572
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v0, v1, :cond_4

    .line 2573
    const-string v0, "getNextPosition REPEAT_CURRENT "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2574
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    move v3, v4

    .line 2658
    :cond_0
    :goto_0
    return v3

    .line 2577
    :cond_1
    if-nez p1, :cond_2

    .line 2578
    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 2581
    :cond_2
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    move v3, v4

    .line 2582
    goto :goto_0

    .line 2584
    :cond_3
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    .line 2586
    :cond_4
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v1, :cond_d

    .line 2587
    const-string v0, "getNextPosition SHUFFLE_NORMAL "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2594
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_5

    .line 2595
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2597
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_6

    .line 2598
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 2601
    :cond_6
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 2602
    new-array v6, v2, [I

    move v0, v4

    .line 2603
    :goto_1
    if-ge v0, v2, :cond_7

    .line 2604
    aput v0, v6, v0

    .line 2603
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2607
    :cond_7
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    move v5, v4

    move v1, v2

    .line 2609
    :goto_2
    if-ge v5, v7, :cond_8

    .line 2610
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2611
    if-ge v8, v2, :cond_12

    aget v0, v6, v8

    if-ltz v0, :cond_12

    .line 2612
    add-int/lit8 v0, v1, -0x1

    .line 2613
    aput v3, v6, v8

    .line 2609
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_2

    .line 2619
    :cond_8
    if-gtz v1, :cond_b

    .line 2621
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v9, :cond_9

    if-eqz p1, :cond_0

    .line 2624
    :cond_9
    :goto_4
    if-ge v4, v2, :cond_a

    .line 2625
    aput v4, v6, v4

    .line 2624
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    move v1, v2

    .line 2632
    :cond_b
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$d;->a(I)I

    move-result v0

    move v1, v0

    move v0, v3

    .line 2636
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 2637
    aget v2, v6, v0

    if-ltz v2, :cond_c

    .line 2638
    add-int/lit8 v1, v1, -0x1

    .line 2639
    if-gez v1, :cond_c

    move v3, v0

    .line 2643
    goto/16 :goto_0

    .line 2644
    :cond_d
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v9, :cond_e

    .line 2645
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2646
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v0, 0x1

    goto/16 :goto_0

    .line 2648
    :cond_e
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_11

    .line 2650
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_f

    if-eqz p1, :cond_0

    .line 2653
    :cond_f
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v9, :cond_10

    if-eqz p1, :cond_0

    :cond_10
    move v3, v4

    .line 2654
    goto/16 :goto_0

    .line 2658
    :cond_11
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v0, 0x1

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto :goto_3
.end method

.method public static getStorageMsg()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 4219
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 4220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4243
    :cond_0
    :goto_0
    return v0

    .line 4227
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4230
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4231
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4232
    const v0, 0x7f0b00f4

    goto :goto_0

    .line 4234
    :cond_3
    const v0, 0x7f0b00f5

    goto :goto_0

    .line 4236
    :cond_4
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4237
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4238
    const v0, 0x7f0b00fc

    goto :goto_0

    .line 4240
    :cond_5
    const v0, 0x7f0b00fd

    goto :goto_0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 2729
    const-string v0, "gotoIdleState"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2731
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2732
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2734
    return-void
.end method

.method private gotoIdleState(Z)V
    .locals 4

    .prologue
    .line 2722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2723
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2724
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2725
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2726
    return-void
.end method

.method private hasForegroundActivity()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4144
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4145
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 4146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4148
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 4152
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isFav()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2054
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2060
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide v2, v1, v0

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v0

    :goto_0
    return v0

    .line 2055
    :catch_0
    move-exception v1

    .line 2056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNeedFadePause()Z
    .locals 4

    .prologue
    .line 2452
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSongBegin()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x7d0

    .line 2456
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->position()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSongEnd()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 2460
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->position()J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRepeatMode(B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3529
    if-nez p1, :cond_1

    .line 3536
    :cond_0
    :goto_0
    return v0

    .line 3532
    :cond_1
    add-int/lit8 v1, p1, -0x1

    int-to-byte v1, v1

    .line 3533
    if-ltz v1, :cond_0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 3534
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidShuffleMode(B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3543
    if-nez p1, :cond_1

    .line 3551
    :cond_0
    :goto_0
    return v0

    .line 3546
    :cond_1
    add-int/lit8 v1, p1, -0x1

    int-to-byte v1, v1

    .line 3548
    if-ltz v1, :cond_0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 3549
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeAutoShuffleList()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2815
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2818
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "limit 60"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2821
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2822
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2835
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    move v0, v7

    .line 2837
    :goto_0
    return v0

    .line 2825
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 2826
    new-array v3, v2, [J

    move v1, v7

    .line 2827
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2828
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2829
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2827
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2831
    :cond_2
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2835
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    move v0, v6

    .line 2832
    goto :goto_0

    .line 2833
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 2835
    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    move v0, v7

    .line 2837
    goto :goto_0

    .line 2835
    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v8}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 2833
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyAttributeIDs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3329
    const-string v1, "Response"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3330
    const-string v1, "Attributes"

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_ATTRS:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3331
    const-string v1, "notifying attributes"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3332
    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3333
    return-void
.end method

.method private notifyAttributeValues(Ljava/lang/String;[BI)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3417
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3418
    const-string v0, "Response"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3420
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    move v0, v1

    .line 3421
    :goto_0
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    .line 3422
    aput-byte v1, v3, v0

    .line 3421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3425
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 3426
    aget-byte v4, p2, v1

    packed-switch v4, :pswitch_data_0

    .line 3438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3425
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3428
    :pswitch_0
    aget-byte v4, p2, v1

    aput-byte v4, v3, v0

    .line 3429
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    invoke-virtual {p0, v5}, Lcn/nubia/music/MediaPlaybackService;->getMappingRepeatVal(I)B

    move-result v5

    aput-byte v5, v3, v4

    .line 3430
    add-int/lit8 v0, v0, 0x2

    .line 3431
    goto :goto_2

    .line 3433
    :pswitch_1
    aget-byte v4, p2, v1

    aput-byte v4, v3, v0

    .line 3434
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {p0, v5}, Lcn/nubia/music/MediaPlaybackService;->getMappingShuffleVal(I)B

    move-result v5

    aput-byte v5, v3, v4

    .line 3435
    add-int/lit8 v0, v0, 0x2

    .line 3436
    goto :goto_2

    .line 3442
    :cond_1
    const-string v0, "AttribValuePairs"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3443
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3444
    return-void

    .line 3426
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyAttributeValuesText(Ljava/lang/String;I[B)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 3380
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3381
    array-length v0, p3

    new-array v3, v0, [Ljava/lang/String;

    .line 3382
    const-string v0, "Response"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3383
    const-string v0, "Attribute"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attrib is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3385
    const/4 v0, 0x0

    .line 3386
    packed-switch p2, :pswitch_data_0

    .line 3401
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_2

    .line 3402
    if-eqz v0, :cond_0

    aget-byte v4, p3, v1

    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 3403
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "which is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3404
    const-string v4, ""

    aput-object v4, v3, v1

    .line 3401
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3388
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v1

    const v4, 0x7f0b00df

    .line 3389
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const v4, 0x7f0b00de

    .line 3390
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const v4, 0x7f0b00dd

    .line 3391
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    goto :goto_0

    .line 3395
    :pswitch_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v1

    const v4, 0x7f0b011b

    .line 3396
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const v4, 0x7f0b011c

    .line 3397
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    goto :goto_0

    .line 3406
    :cond_1
    aget-byte v4, p3, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 3409
    :cond_2
    const-string v0, "ValueStrings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3410
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3411
    return-void

    .line 3386
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyAttributesText(Ljava/lang/String;[B)V
    .locals 5

    .prologue
    .line 3361
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 3362
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3363
    const-string v0, "Response"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3364
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 3365
    aget-byte v3, p2, v0

    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->ATTR_STRS:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 3366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attrib id is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "which is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3367
    const-string v3, ""

    aput-object v3, v1, v0

    .line 3364
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3369
    :cond_0
    sget-object v3, Lcn/nubia/music/MediaPlaybackService;->ATTR_STRS:[Ljava/lang/String;

    aget-byte v4, p2, v0

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    goto :goto_1

    .line 3372
    :cond_1
    const-string v0, "AttributeStrings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3373
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3374
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1398
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1399
    invoke-direct {p0, v4, v3}, Lcn/nubia/music/MediaPlaybackService;->updateNotificationUI(Landroid/graphics/Bitmap;Z)V

    .line 1400
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1401
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 1427
    :cond_0
    :goto_1
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1428
    invoke-direct {p0, v3}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    .line 1432
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    const-string v1, "id"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1436
    const-string v1, "artist"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    const-string v1, "album"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string v1, "track"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const-string v1, "playing"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1440
    const-string v1, "albumid"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1441
    const-string v1, "innerstate"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getInnerPlayerState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    const-string v1, "path"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1446
    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1447
    return-void

    .line 1401
    :cond_1
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1403
    :cond_2
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-direct {p0, v4, v2}, Lcn/nubia/music/MediaPlaybackService;->updateNotificationUI(Landroid/graphics/Bitmap;Z)V

    .line 1407
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$4;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1430
    :cond_3
    invoke-direct {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    goto/16 :goto_2
.end method

.method private notifyValueIDs(Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 3339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3340
    const-string v1, "Response"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3341
    const-string v1, "Attribute"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 3342
    packed-switch p2, :pswitch_data_0

    .line 3350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3351
    const-string v1, "Values"

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->UNSUPPORTED_LIST:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3354
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3355
    return-void

    .line 3344
    :pswitch_0
    const-string v1, "Values"

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_REPEAT_MODES:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 3347
    :pswitch_1
    const-string v1, "Values"

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_SHUFFLE_MODES:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 3342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openCurrentAndNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1742
    monitor-enter p0

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 1744
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1745
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentPath:Ljava/lang/String;

    .line 1748
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1749
    monitor-exit p0

    .line 1802
    :goto_0
    return-void

    .line 1751
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1754
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mMountMsgId:I

    if-lez v0, :cond_3

    .line 1755
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mMountMsgId:I

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1757
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 1758
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_2

    .line 1759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1760
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1762
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1801
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1765
    :cond_3
    :try_start_1
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    .line 1768
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->open(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1801
    monitor-exit p0

    goto :goto_0

    .line 1772
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 1774
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_7

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v2, :cond_7

    .line 1775
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 1776
    if-gez v0, :cond_6

    .line 1777
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 1778
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_5

    .line 1779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1780
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1782
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1784
    :cond_6
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1785
    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1786
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 1788
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1789
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_8

    .line 1790
    const v0, 0x7f0b00cb

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1792
    :cond_8
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 1793
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_9

    .line 1794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1795
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1797
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private preparePrev()V
    .locals 3

    .prologue
    .line 2536
    monitor-enter p0

    .line 2537
    :try_start_0
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2539
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2540
    if-nez v0, :cond_1

    .line 2542
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    if-lez v0, :cond_0

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    sget-object v1, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$d;->a(I)I

    move-result v0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2545
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    .line 2546
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2550
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2551
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    .line 2552
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2562
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2563
    monitor-exit p0

    .line 2564
    return-void

    .line 2556
    :cond_3
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_4

    .line 2557
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 2563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2559
    :cond_4
    :try_start_1
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private realShowNotification()V
    .locals 2

    .prologue
    .line 2278
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 2280
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 2292
    :cond_0
    return-void
.end method

.method private registerCommandReceiver()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$13;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$13;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 809
    const-string v1, "cn.nubia.music.preset.musicservicecommand.favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v1, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v1, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v1, "cn.nubia.music.timer.closemusic"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    return-void
.end method

.method private registerFancyIconReceiver()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$14;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$14;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 845
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 846
    const-string v1, "cn.nubia.launcher.fancyicon.check"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    return-void
.end method

.method private registerForceTouchReceiver()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mForceTouchReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcn/nubia/music/widget/ForceTouchProvider;

    invoke-direct {v0}, Lcn/nubia/music/widget/ForceTouchProvider;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mForceTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 856
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 857
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mForceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 860
    return-void
.end method

.method private registerMediaButtonReceiver()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

    if-nez v0, :cond_0

    .line 822
    new-instance v0, Lcn/nubia/music/app/MediaButtonIntentReceiver;

    invoke-direct {v0}, Lcn/nubia/music/app/MediaButtonIntentReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

    .line 825
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 826
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 828
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    return-void
.end method

.method private registerSensorListener()V
    .locals 1

    .prologue
    .line 2296
    monitor-enter p0

    .line 2297
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsReg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDetector:Lnubia/gesture/sensor/MotionProxy;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDetector:Lnubia/gesture/sensor/MotionProxy;

    invoke-virtual {v0, p0}, Lnubia/gesture/sensor/MotionProxy;->registerListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 2299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsReg:Z

    .line 2301
    :cond_0
    monitor-exit p0

    .line 2302
    return-void

    .line 2301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reloadQueue()V
    .locals 15

    .prologue
    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1008
    const/4 v2, 0x0

    .line 1009
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCardId:I

    .line 1010
    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "cardid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    iget v4, p0, Lcn/nubia/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1013
    :cond_0
    iget v3, p0, Lcn/nubia/music/MediaPlaybackService;->mCardId:I

    if-ne v0, v3, :cond_13

    .line 1016
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "queue"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1018
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    .line 1019
    :goto_1
    if-le v5, v10, :cond_7

    move v4, v1

    move v2, v1

    move v0, v1

    move v3, v1

    .line 1023
    :goto_2
    if-ge v4, v5, :cond_5

    .line 1024
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1025
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    .line 1026
    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1027
    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    int-to-long v8, v0

    aput-wide v8, v2, v3

    .line 1028
    add-int/lit8 v0, v3, 0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 1023
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v14, v0

    move v0, v2

    move v2, v14

    goto :goto_2

    :cond_1
    move v5, v1

    .line 1018
    goto :goto_1

    .line 1032
    :cond_2
    if-lt v7, v12, :cond_3

    if-gt v7, v13, :cond_3

    .line 1033
    add-int/lit8 v7, v7, -0x30

    shl-int/2addr v7, v2

    add-int/2addr v0, v7

    .line 1041
    :goto_4
    add-int/lit8 v2, v2, 0x4

    move v14, v2

    move v2, v0

    move v0, v14

    goto :goto_3

    .line 1034
    :cond_3
    const/16 v8, 0x61

    if-lt v7, v8, :cond_4

    const/16 v8, 0x66

    if-gt v7, v8, :cond_4

    .line 1035
    add-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, -0x61

    shl-int/2addr v7, v2

    add-int/2addr v0, v7

    goto :goto_4

    :cond_4
    move v3, v1

    .line 1044
    :cond_5
    sput v3, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1046
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "curpos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1047
    if-ltz v0, :cond_6

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v2, :cond_8

    .line 1049
    :cond_6
    sput v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1164
    :cond_7
    :goto_5
    return-void

    .line 1052
    :cond_8
    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1089
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1090
    iput-boolean v10, p0, Lcn/nubia/music/MediaPlaybackService;->mQuietMode:Z

    .line 1091
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1092
    iput-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService;->mQuietMode:Z

    .line 1093
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1095
    sput v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_5

    .line 1099
    :cond_9
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "repeatmode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1100
    if-eq v0, v11, :cond_a

    if-eq v0, v10, :cond_a

    move v0, v1

    .line 1103
    :cond_a
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    .line 1105
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "shufflemode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1106
    if-eq v0, v11, :cond_b

    if-eq v0, v10, :cond_b

    move v0, v1

    .line 1109
    :cond_b
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    .line 1111
    if-eqz v0, :cond_c

    .line 1113
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1114
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v2

    .line 1115
    :goto_6
    if-le v5, v10, :cond_c

    .line 1118
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v4, v1

    move v3, v1

    move v2, v1

    .line 1119
    :goto_7
    if-ge v4, v5, :cond_c

    .line 1120
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1121
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_10

    .line 1122
    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v2, v3, :cond_f

    .line 1124
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1146
    :cond_c
    :goto_8
    if-ne v0, v11, :cond_d

    .line 1147
    new-instance v1, Lcn/nubia/music/MediaPlaybackService$16;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/MediaPlaybackService$16;-><init>(Lcn/nubia/music/MediaPlaybackService;I)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1157
    :cond_d
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "seekpos"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1158
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    .line 1159
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1160
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1161
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_e
    move v5, v1

    .line 1114
    goto :goto_6

    .line 1127
    :cond_f
    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v1

    move v3, v1

    .line 1119
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move v14, v2

    move v2, v3

    move v3, v14

    goto :goto_7

    .line 1131
    :cond_10
    if-lt v7, v12, :cond_11

    if-gt v7, v13, :cond_11

    .line 1132
    add-int/lit8 v7, v7, -0x30

    shl-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 1140
    :goto_a
    add-int/lit8 v3, v3, 0x4

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_9

    .line 1133
    :cond_11
    const/16 v8, 0x61

    if-lt v7, v8, :cond_12

    const/16 v8, 0x66

    if-gt v7, v8, :cond_12

    .line 1134
    add-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, -0x61

    shl-int/2addr v7, v3

    add-int/2addr v2, v7

    goto :goto_a

    .line 1137
    :cond_12
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_8

    :cond_13
    move-object v6, v2

    goto/16 :goto_0
.end method

.method private removeCurrentTrack()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2929
    monitor-enter p0

    .line 2930
    :try_start_0
    sget-object v1, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v2, v1, v2

    .line 2932
    new-instance v1, Lcn/nubia/music/MediaPlaybackService$8;

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/music/MediaPlaybackService$8;-><init>(Lcn/nubia/music/MediaPlaybackService;J)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 2941
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 2942
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2943
    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/2addr v3, v0

    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v5, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    .line 2942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2945
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 2947
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_2

    .line 2948
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2949
    const/4 v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2950
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 2958
    :cond_1
    :goto_1
    monitor-exit p0

    .line 2959
    return-void

    .line 2952
    :cond_2
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_1

    .line 2953
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2958
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeNowPlayingTrack()V
    .locals 3

    .prologue
    .line 3067
    const/4 v0, 0x0

    .line 3068
    monitor-enter p0

    .line 3069
    :try_start_0
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v1, :cond_0

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3070
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3072
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    if-lez v0, :cond_1

    .line 3074
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3076
    :cond_1
    return-void

    .line 3072
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeTracksInternal(II)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2962
    monitor-enter p0

    .line 2963
    if-ge p2, p1, :cond_0

    .line 2964
    :try_start_0
    monitor-exit p0

    .line 3004
    :goto_0
    return v0

    .line 2966
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 2969
    :cond_1
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_2

    .line 2970
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 2973
    :cond_2
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v2, :cond_3

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 2974
    sput p1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2979
    :goto_1
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    .line 2980
    :goto_2
    if-ge v0, v2, :cond_5

    .line 2981
    sget-object v3, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p1, v0

    sget-object v5, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, p2, 0x1

    add-int/2addr v6, v0

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    .line 2980
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2976
    :cond_3
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-le v1, p2, :cond_4

    .line 2977
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    :cond_4
    move v1, v0

    goto :goto_1

    .line 2983
    :cond_5
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 2985
    if-eqz v1, :cond_7

    .line 2986
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_8

    .line 2987
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2988
    const/4 v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2989
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 2990
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3002
    :cond_6
    :goto_3
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3004
    :cond_7
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3005
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2992
    :cond_8
    :try_start_1
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_9

    .line 2993
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2995
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2996
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2997
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2998
    if-eqz v0, :cond_6

    .line 2999
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private removeTracksInternal([J)I
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2868
    monitor-enter p0

    .line 2869
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_1

    .line 2870
    :cond_0
    monitor-exit p0

    .line 2923
    :goto_0
    return v0

    .line 2873
    :cond_1
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    new-array v5, v1, [Z

    .line 2876
    array-length v6, p1

    move v4, v0

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v4, v6, :cond_5

    aget-wide v8, p1, v4

    .line 2877
    sget v7, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 2878
    monitor-exit p0

    goto :goto_0

    .line 2924
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2881
    :cond_2
    :try_start_1
    sget v7, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    move v2, v3

    .line 2885
    :cond_3
    sget v7, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 2886
    add-int/lit8 v1, v1, 0x1

    .line 2889
    :cond_4
    long-to-int v7, v8

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 2876
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2891
    :cond_5
    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sub-int v1, v3, v1

    sput v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    move v1, v0

    .line 2894
    :goto_2
    sget v3, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_8

    .line 2895
    if-lez v0, :cond_6

    sub-int v3, v1, v0

    if-ltz v3, :cond_6

    aget-boolean v3, v5, v1

    if-nez v3, :cond_6

    .line 2896
    sget-object v3, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sub-int v4, v1, v0

    sget-object v6, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v6, v6, v1

    aput-wide v6, v3, v4

    .line 2899
    :cond_6
    aget-boolean v3, v5, v1

    if-eqz v3, :cond_7

    .line 2900
    add-int/lit8 v0, v0, 0x1

    .line 2894
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2903
    :cond_8
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 2905
    if-eqz v2, :cond_a

    .line 2906
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_b

    .line 2907
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2908
    const/4 v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2909
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 2921
    :cond_9
    :goto_3
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2923
    :cond_a
    array-length v0, p1

    monitor-exit p0

    goto :goto_0

    .line 2911
    :cond_b
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_c

    .line 2912
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2914
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2915
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2916
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2917
    if-eqz v0, :cond_9

    .line 2918
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveQueueAsync(Z)V
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mQueueIsSaveable:Z

    if-nez v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$15;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/MediaPlaybackService$15;-><init>(Lcn/nubia/music/MediaPlaybackService;Z)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setFavorButtonImage()V
    .locals 2

    .prologue
    .line 2047
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->updateNotificationUI(Landroid/graphics/Bitmap;Z)V

    .line 2048
    return-void
.end method

.method private setNotificationColor(Landroid/widget/RemoteViews;ZZ)V
    .locals 7

    .prologue
    const v6, 0x7f10007f

    const v5, 0x7f0f003f

    const v4, 0x7f0200fe

    const v3, 0x7f0f0012

    const v2, 0x7f100080

    .line 2246
    invoke-static {}, Lcn/nubia/music/utils/NotificationUtil;->isDarkNotificationTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2248
    const v0, 0x7f100085

    const v1, 0x7f020121

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2249
    const v1, 0x7f100084

    if-eqz p2, :cond_0

    const v0, 0x7f020115

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2251
    const v0, 0x7f100083

    const v1, 0x7f02010f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2252
    if-eqz p3, :cond_1

    .line 2253
    const v0, 0x7f020108

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2254
    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2258
    :goto_1
    const v0, 0x7f100086

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2259
    const v0, 0x7f100087

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2275
    :goto_2
    return-void

    .line 2249
    :cond_0
    const v0, 0x7f02011b

    goto :goto_0

    .line 2256
    :cond_1
    const v0, 0x7f0200ff

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 2262
    :cond_2
    const v0, 0x7f100085

    const v1, 0x7f02011c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2263
    const v1, 0x7f100084

    if-eqz p2, :cond_3

    const v0, 0x7f020110

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2265
    const v0, 0x7f100083

    const v1, 0x7f02010a

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2266
    if-eqz p3, :cond_4

    .line 2267
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2268
    invoke-static {v5}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2272
    :goto_4
    const v0, 0x7f100086

    invoke-static {v5}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2273
    const v0, 0x7f100087

    const v1, 0x7f0f003e

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_2

    .line 2263
    :cond_3
    const v0, 0x7f020116

    goto :goto_3

    .line 2270
    :cond_4
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4
.end method

.method private setValidAttributes([B)V
    .locals 4

    .prologue
    .line 3452
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3453
    aget-byte v1, p1, v0

    .line 3454
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    .line 3455
    packed-switch v1, :pswitch_data_0

    .line 3467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3452
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3457
    :pswitch_0
    invoke-direct {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->isValidRepeatMode(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3458
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->getMappingRepeatMode(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->setRepeatMode(I)V

    goto :goto_1

    .line 3462
    :pswitch_1
    invoke-direct {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->isValidShuffleMode(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3463
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->getMappingShuffleMode(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1

    .line 3471
    :cond_1
    return-void

    .line 3455
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showIconAnim(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1452
    const-string v1, "packageName"

    const-string v2, "cn.nubia.music.preset"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v1, "className"

    const-class v2, Lcn/nubia/music/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    if-eqz p1, :cond_0

    .line 1455
    const-string v1, "binder"

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1459
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getInnerPlayerState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1460
    const-string v1, "showWidget"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1465
    :goto_1
    new-instance v1, Lcn/nubia/music/MediaPlaybackService$5;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/MediaPlaybackService$5;-><init>(Lcn/nubia/music/MediaPlaybackService;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1477
    return-void

    .line 1457
    :cond_0
    const-string v1, "end"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1462
    :cond_1
    const-string v1, "showWidget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private stop(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2330
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-nez v0, :cond_1

    .line 2347
    :cond_0
    :goto_0
    return-void

    .line 2333
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->c()V

    .line 2336
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    .line 2338
    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->updateUsingNetworksStatus(Z)V

    .line 2340
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 2341
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 2342
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 2343
    if-eqz p1, :cond_0

    .line 2344
    iput-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    goto :goto_0
.end method

.method private stopWhenNotSupport()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2351
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-nez v0, :cond_0

    .line 2362
    :goto_0
    return-void

    .line 2354
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->c()V

    .line 2356
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    .line 2357
    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->updateUsingNetworksStatus(Z)V

    .line 2359
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 2361
    iput-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    goto :goto_0
.end method

.method private unregisterSensorListener()V
    .locals 1

    .prologue
    .line 2305
    monitor-enter p0

    .line 2306
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsReg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDetector:Lnubia/gesture/sensor/MotionProxy;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDetector:Lnubia/gesture/sensor/MotionProxy;

    invoke-virtual {v0, p0}, Lnubia/gesture/sensor/MotionProxy;->unregisterListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 2308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsReg:Z

    .line 2310
    :cond_0
    monitor-exit p0

    .line 2311
    return-void

    .line 2310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateForceTouchUI()V
    .locals 2

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/widget/ForceTouchProvider;->setDisplayInfo(Ljava/lang/String;Z)V

    .line 2004
    return-void
.end method

.method private updateNotification(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 2314
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2315
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2316
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2317
    return-void
.end method

.method private updateNotificationUI(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 2007
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    const-string v0, "getPath is null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2010
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stopForeground(Z)V

    .line 2020
    :goto_0
    if-nez p2, :cond_0

    .line 2021
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->updateWidgetUI()V

    .line 2024
    :cond_0
    return-void

    .line 2017
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->createRemoteViewNotification()V

    goto :goto_0
.end method

.method private updateUsingNetworksStatus(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4157
    const-string v1, "isUsingNetworks"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4158
    if-eqz p1, :cond_0

    .line 4159
    const-string v1, "UsingNetworksReason"

    const-string v2, "play net music"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    :goto_0
    const-string v1, "content://cn.nubia.music.preset.UsingNetworksProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4165
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4166
    return-void

    .line 4161
    :cond_0
    const-string v1, "UsingNetworksReason"

    const-string v2, "stopped"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateWidgetUI()V
    .locals 0

    .prologue
    .line 1999
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->updateForceTouchUI()V

    .line 2000
    return-void
.end method

.method private wasRecentlyUsed(II)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2778
    if-nez p2, :cond_0

    move v0, v1

    .line 2794
    :goto_0
    return v0

    .line 2782
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2783
    if-ge v0, p2, :cond_1

    .line 2784
    const-string v2, "lookback too big"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move p2, v0

    .line 2787
    :cond_1
    add-int/lit8 v3, v0, -0x1

    move v2, v1

    .line 2788
    :goto_1
    if-ge v2, p2, :cond_3

    .line 2789
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 2790
    int-to-long v6, p1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 2791
    const/4 v0, 0x1

    goto :goto_0

    .line 2788
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2794
    goto :goto_0
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    :cond_0
    const-string v0, "in stop"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1279
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1280
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1282
    :cond_1
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 3266
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->h()J

    move-result-wide v0

    .line 3269
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2

    .prologue
    .line 1566
    monitor-enter p0

    .line 1567
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1568
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1569
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1581
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1582
    const-string v0, "service mPlayPos<0 openCurrentAndNext---"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1583
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1584
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1585
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 1587
    :cond_1
    monitor-exit p0

    .line 1588
    :goto_0
    return-void

    .line 1571
    :cond_2
    const-string v0, "service enque NOMAL_MODE"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1572
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1573
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1574
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1575
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1576
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1577
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 1578
    monitor-exit p0

    goto :goto_0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueueAsync([JI)V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1560
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1561
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1562
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1563
    return-void
.end method

.method public enqueueLocal(JI)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1598
    monitor-enter p0

    .line 1601
    :try_start_0
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_3

    .line 1602
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v1, :cond_0

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    :goto_0
    move v1, v2

    .line 1604
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1606
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v1

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    move v0, v1

    .line 1614
    :goto_2
    if-eqz v2, :cond_2

    .line 1615
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0, p3}, Lcn/nubia/music/MediaPlaybackService;->enqueue([JI)V

    .line 1619
    :goto_3
    monitor-exit p0

    .line 1620
    return-void

    .line 1602
    :cond_0
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    goto :goto_0

    .line 1604
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1617
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->setQueuePosition(I)V

    goto :goto_3

    .line 1619
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_2
.end method

.method public enqueueLocalAsync(JI)V
    .locals 3

    .prologue
    .line 1591
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1592
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1593
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1594
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1595
    return-void
.end method

.method public fadeNext(Z)V
    .locals 2

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2425
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->isSongEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    invoke-virtual {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    .line 2436
    :goto_0
    return-void

    .line 2428
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2429
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2430
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2431
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2434
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    goto :goto_0
.end method

.method public fadePause()V
    .locals 2

    .prologue
    .line 2394
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->isNeedFadePause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2397
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2399
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessage(I)Z

    .line 2404
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    goto :goto_0
.end method

.method public fadePlay()V
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isServiceEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->play(Z)V

    .line 2421
    :cond_0
    return-void
.end method

.method public fadePrev()V
    .locals 2

    .prologue
    .line 2439
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2440
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->isSongBegin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->prev()V

    .line 2449
    :goto_0
    return-void

    .line 2443
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2444
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2447
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->prev()V

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 3239
    monitor-enter p0

    .line 3240
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3241
    :cond_0
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 3244
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    .line 3245
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3244
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 3247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumImageUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3194
    monitor-enter p0

    .line 3195
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3196
    :cond_0
    monitor-exit p0

    .line 3200
    :goto_0
    return-object v0

    .line 3198
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v3, "album_art"

    .line 3199
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 3198
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 3201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3227
    monitor-enter p0

    .line 3228
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3229
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 3232
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "album"

    .line 3233
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3232
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3233
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 3215
    monitor-enter p0

    .line 3216
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3217
    :cond_0
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 3220
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    .line 3221
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3220
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 3223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3205
    monitor-enter p0

    .line 3206
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3207
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 3209
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    .line 3210
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3210
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 3155
    monitor-enter p0

    .line 3156
    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3157
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 3160
    :goto_0
    return-wide v0

    .line 3159
    :cond_0
    monitor-exit p0

    .line 3160
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3316
    monitor-enter p0

    .line 3317
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->j()I

    move-result v0

    monitor-exit p0

    .line 3321
    :goto_0
    return v0

    .line 3320
    :cond_0
    monitor-exit p0

    .line 3321
    const/4 v0, 0x0

    goto :goto_0

    .line 3320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferingPrecent()I
    .locals 1

    .prologue
    .line 2481
    const/16 v0, 0x64

    return v0
.end method

.method public getInnerPlayerState()I
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->d()I

    move-result v0

    .line 2477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMappingRepeatMode(B)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3500
    packed-switch p1, :pswitch_data_0

    .line 3509
    :goto_0
    :pswitch_0
    return v0

    .line 3504
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3507
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getMappingRepeatVal(I)B
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3474
    packed-switch p1, :pswitch_data_0

    .line 3482
    :goto_0
    :pswitch_0
    return v0

    .line 3478
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3480
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getMappingShuffleMode(B)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3514
    packed-switch p1, :pswitch_data_0

    .line 3521
    :goto_0
    :pswitch_0
    return v0

    .line 3519
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getMappingShuffleVal(I)B
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 3487
    packed-switch p1, :pswitch_data_0

    .line 3495
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 3491
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 3493
    goto :goto_0

    .line 3487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3135
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 6

    .prologue
    .line 1720
    monitor-enter p0

    .line 1721
    :try_start_0
    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1722
    new-array v2, v1, [J

    .line 1723
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1724
    sget-object v3, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1726
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1727
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3170
    monitor-enter p0

    .line 3171
    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 3172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3124
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3113
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3251
    monitor-enter p0

    .line 3252
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3253
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 3255
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "title"

    .line 3256
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3255
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3256
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoNext(Z)V
    .locals 3

    .prologue
    .line 2692
    monitor-enter p0

    .line 2693
    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2694
    const-string v0, "No play queue"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2695
    monitor-exit p0

    .line 2718
    :goto_0
    return-void

    .line 2697
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoNext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2698
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoNext pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2700
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 2701
    monitor-exit p0

    goto :goto_0

    .line 2717
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2703
    :cond_1
    if-gez v0, :cond_3

    .line 2704
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 2705
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_2

    .line 2706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2707
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2709
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2711
    :cond_3
    const-string v1, "gotoNext play"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2712
    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2713
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2714
    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2715
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2716
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 2717
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isServiceEmpty()Z
    .locals 2

    .prologue
    .line 2407
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    .line 2408
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 2410
    :cond_0
    const/4 v0, 0x1

    .line 2412
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveQueueItem(II)V
    .locals 8

    .prologue
    .line 1680
    monitor-enter p0

    .line 1681
    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v0, :cond_7

    .line 1682
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v0, -0x1

    .line 1684
    :goto_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v0, :cond_0

    .line 1685
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v0, -0x1

    .line 1687
    :cond_0
    if-ge v1, p2, :cond_4

    .line 1688
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1689
    :goto_1
    if-ge v0, p2, :cond_1

    .line 1690
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget-object v5, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v0

    .line 1689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1692
    :cond_1
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1693
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_3

    .line 1694
    sput p2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1710
    :cond_2
    :goto_2
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1711
    monitor-exit p0

    .line 1712
    return-void

    .line 1695
    :cond_3
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-lt v0, v1, :cond_2

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, p2, :cond_2

    .line 1696
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1698
    :cond_4
    if-ge p2, v1, :cond_2

    .line 1699
    :try_start_1
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1700
    :goto_3
    if-le v0, p2, :cond_5

    .line 1701
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    sget-object v5, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v0

    .line 1700
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1703
    :cond_5
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1704
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_6

    .line 1705
    sput p2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1706
    :cond_6
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-lt v0, p2, :cond_2

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, v1, :cond_2

    .line 1707
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    move v1, p1

    goto :goto_0
.end method

.method public notifyupdateNotificationUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4126
    const-string v0, "notifyupdateNotificationUI "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 4127
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4128
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4129
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4131
    :cond_0
    return-void
.end method

.method public notifyupdateNotificationUIBm(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 4136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyupdateNotificationUIBm bm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 4137
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4138
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4140
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/MediaPlaybackService;->updateNotificationUI(Landroid/graphics/Bitmap;Z)V

    .line 4141
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1170
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onClickFavSongBtn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2030
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2036
    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v2

    .line 2037
    if-eqz v2, :cond_0

    .line 2038
    invoke-static {v0, v1}, Lcn/nubia/music/utils/MusicUtils;->removeFavoList(J)V

    .line 2042
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->setFavorButtonImage()V

    .line 2043
    :goto_1
    return-void

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 2040
    :cond_0
    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->addToPlayFavorite([J)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 636
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 637
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 638
    const-string v0, "check permission in mediaplayservice"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 639
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    .line 691
    :goto_0
    return-void

    .line 643
    :cond_0
    iput-object p0, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->stopForeground(Z)V

    .line 647
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    .line 648
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaPlayback_Handler_Thread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHandleThread:Landroid/os/HandlerThread;

    .line 649
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 650
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$e;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcn/nubia/music/MediaPlaybackService$e;-><init>(Landroid/os/Looper;Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    .line 651
    const-string v0, "Music"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 652
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getCardId()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCardId:I

    .line 653
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$b;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$b;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    .line 654
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(Landroid/os/Handler;)V

    .line 656
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 658
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 663
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 666
    new-instance v0, Lnubia/gesture/sensor/MotionProxy;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, p0, v1}, Lnubia/gesture/sensor/MotionProxy;-><init>(Landroid/content/Context;[I)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDetector:Lnubia/gesture/sensor/MotionProxy;

    .line 670
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 671
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/nubia/music/app/MediaButtonIntentReceiver;

    .line 672
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 674
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 676
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 677
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 678
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 679
    const/16 v0, 0xbd

    .line 684
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 685
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->reloadQueue()V

    .line 686
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 687
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->doInBackground()V

    .line 689
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/MediaPlaybackService$a;-><init>(Lcn/nubia/music/MediaPlaybackService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mLikeObserver:Lcn/nubia/music/MediaPlaybackService$a;

    .line 690
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mLikeObserver:Lcn/nubia/music/MediaPlaybackService$a;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 666
    :array_0
    .array-data 4
        0x6
        0x0
    .end array-data
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 867
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 868
    iput-boolean v4, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceInUse:Z

    .line 869
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v0, v3}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 870
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    .line 872
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHandleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 874
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 875
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 876
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 877
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    .line 878
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    invoke-virtual {v0, v3}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 879
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 887
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->c()V

    .line 888
    invoke-direct {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->updateUsingNetworksStatus(Z)V

    .line 889
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->e()V

    .line 890
    iput-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    .line 892
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 893
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 894
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V

    .line 896
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMediaIntentReceiver:Lcn/nubia/music/app/MediaButtonIntentReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 897
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 898
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFancyIconChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 901
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mForceTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->clearReceiver(Landroid/content/BroadcastReceiver;)V

    .line 903
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 905
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->recycle()V

    .line 906
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 908
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    .line 911
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCopyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCopyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCopyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 918
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mLikeObserver:Lcn/nubia/music/MediaPlaybackService$a;

    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mLikeObserver:Lcn/nubia/music/MediaPlaybackService$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 921
    :cond_2
    return-void
.end method

.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4067
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 4068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_RLSHAKE motion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 4069
    const/16 v0, 0x14

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4070
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4071
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4072
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4098
    :cond_0
    :goto_0
    return-void

    .line 4074
    :cond_1
    const/16 v0, -0x14

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4075
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4076
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0x17

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4077
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4082
    :cond_2
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 4083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_TURNOVER motion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 4084
    const/16 v0, 0x1e

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 4085
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4086
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->fadePause()V

    .line 4087
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsTurnoverStopMusic:Z

    goto :goto_0

    .line 4089
    :cond_3
    const/16 v0, -0x1e

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4090
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsTurnoverStopMusic:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsTurnoverStopMusic:Z

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1177
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1182
    iput p3, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceStartId:I

    .line 1183
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1187
    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1189
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1190
    invoke-virtual {p0, v5}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    .line 1214
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1215
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1217
    return v5

    .line 1191
    :cond_1
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 1193
    :cond_2
    const-string v1, "cn.nubia.music.preset.musicservicecommand.favorite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1195
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1196
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1197
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->fadePause()V

    .line 1198
    iput-boolean v4, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1200
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->fadePlay()V

    goto :goto_0

    .line 1202
    :cond_4
    const-string v1, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "action_headset_unplugged"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1204
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    .line 1208
    :goto_1
    iput-boolean v4, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1206
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->fadePause()V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v4}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    .line 1227
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_2

    .line 1247
    :cond_0
    :goto_1
    return v4

    .line 1223
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1238
    :cond_2
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1239
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1241
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1246
    :cond_4
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stopSelf(I)V

    goto :goto_1
.end method

.method public open([JI)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1638
    monitor-enter p0

    .line 1639
    :try_start_0
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1640
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    .line 1642
    :cond_0
    array-length v3, p1

    .line 1644
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 1647
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1648
    aget-wide v4, p1, v2

    sget-object v6, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v6, v6, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 1656
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1657
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1658
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1661
    :cond_2
    if-ltz p2, :cond_4

    .line 1662
    sput p2, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 1666
    :goto_2
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1667
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 1669
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 1670
    monitor-exit p0

    .line 1671
    return-void

    .line 1647
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$d;->a(I)I

    move-result v0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public open(J)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1812
    monitor-enter p0

    .line 1813
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1814
    :try_start_0
    monitor-exit p0

    move v0, v6

    .line 1874
    :goto_0
    return v0

    .line 1817
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 1818
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1823
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1824
    const-string v3, "_id=?"

    .line 1825
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1826
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    :try_start_1
    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    .line 1831
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1833
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1834
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    goto :goto_0

    .line 1836
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1837
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1838
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1839
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1840
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1847
    :cond_2
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "type"

    .line 1848
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1847
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1849
    if-nez v0, :cond_3

    .line 1850
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const-string v2, "data"

    .line 1851
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1850
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1852
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1855
    const-string v0, "file not exists"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1856
    const v0, 0x7f0b0228

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1857
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->removeCurrentTrack()V

    .line 1858
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1859
    monitor-exit p0

    move v0, v6

    goto/16 :goto_0

    .line 1863
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1864
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1867
    monitor-exit p0

    move v0, v7

    goto/16 :goto_0

    .line 1869
    :cond_4
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->stopWhenNotSupport()V

    .line 1870
    monitor-exit p0

    move v0, v6

    goto/16 :goto_0

    .line 1873
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1874
    monitor-exit p0

    move v0, v6

    goto/16 :goto_0

    .line 1875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1843
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public open(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pathParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1886
    monitor-enter p0

    .line 1887
    if-nez p1, :cond_0

    .line 1888
    :try_start_0
    monitor-exit p0

    move v0, v6

    .line 1938
    :goto_0
    return v0

    .line 1893
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1897
    const-string v1, "content://media/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1898
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v3, v4

    .line 1917
    :goto_1
    :try_start_1
    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    .line 1918
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1920
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->close(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    :cond_1
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1932
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1934
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1935
    monitor-exit p0

    move v0, v7

    goto :goto_0

    .line 1901
    :cond_2
    const-string v1, "GlobalResearch@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1903
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1905
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1908
    const/4 v5, 0x2

    aget-object p1, v2, v5

    goto :goto_1

    .line 1910
    :cond_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1911
    const-string v3, "_data=?"

    .line 1912
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    goto :goto_1

    .line 1939
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1922
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1924
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    .line 1925
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mCurrentCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1926
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1929
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1937
    :cond_5
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 1938
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    goto/16 :goto_0
.end method

.method public openAsync([JI)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1630
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->removeMessages(I)V

    .line 1631
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1632
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1633
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1634
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1635
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause start: playing state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 2369
    monitor-enter p0

    .line 2370
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2371
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->f()V

    .line 2373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState(Z)V

    .line 2374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->updateNotification(Z)V

    .line 2376
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2378
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->unregisterSensorListener()V

    .line 2380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->updateUsingNetworksStatus(Z)V

    .line 2382
    :cond_0
    monitor-exit p0

    .line 2383
    return-void

    .line 2382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 1946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->play(Z)V

    .line 1947
    return-void
.end method

.method public play(Z)V
    .locals 4

    .prologue
    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "justUpdateState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1951
    monitor-enter p0

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1954
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/nubia/music/app/MediaButtonIntentReceiver;

    .line 1955
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsPausedByStatusClosed:Z

    .line 1959
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->b()V

    .line 1964
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1965
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mVolumeHandler:Lcn/nubia/music/MediaPlaybackService$e;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessage(I)Z

    .line 1968
    if-eqz p1, :cond_0

    .line 1969
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1975
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->registerSensorListener()V

    .line 1976
    monitor-exit p0

    .line 1977
    return-void

    .line 1971
    :cond_0
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1976
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3276
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3277
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->i()J

    move-result-wide v0

    .line 3279
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prepareNext(Z)V
    .locals 2

    .prologue
    .line 2666
    monitor-enter p0

    .line 2667
    :try_start_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2668
    const-string v0, "No play queue"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2669
    monitor-exit p0

    .line 2689
    :goto_0
    return-void

    .line 2671
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->getNextPosition(Z)I

    move-result v0

    .line 2672
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 2673
    monitor-exit p0

    goto :goto_0

    .line 2687
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2675
    :cond_1
    if-gez v0, :cond_3

    .line 2676
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->gotoIdleState()V

    .line 2677
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_2

    .line 2678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2679
    const-string v0, "cn.nubia.music.preset.playstatechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2681
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2683
    :cond_3
    const-string v1, "prepareNext play"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2684
    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2686
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2687
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public prev()V
    .locals 3

    .prologue
    .line 2502
    monitor-enter p0

    .line 2503
    :try_start_0
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2505
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2506
    if-nez v0, :cond_1

    .line 2508
    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    if-lez v0, :cond_0

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mRand:Lcn/nubia/music/MediaPlaybackService$d;

    sget-object v1, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$d;->a(I)I

    move-result v0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2511
    :cond_0
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    .line 2512
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sget v1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2517
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2518
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    .line 2519
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2520
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 2529
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2530
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 2531
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 2532
    monitor-exit p0

    .line 2533
    return-void

    .line 2523
    :cond_3
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_4

    .line 2524
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2526
    :cond_4
    :try_start_1
    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerA2dpServiceListener()V
    .locals 2

    .prologue
    .line 1317
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$3;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1378
    const-string v1, "com.qualcomm.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1379
    const-string v1, "com.qualcomm.music.playersettingsrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1380
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1382
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1291
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$2;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1305
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1309
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1310
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1311
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1312
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1314
    :cond_0
    return-void
.end method

.method public removeListTracks([J)I
    .locals 2

    .prologue
    .line 2860
    invoke-direct {p0, p1}, Lcn/nubia/music/MediaPlaybackService;->removeTracksInternal([J)I

    move-result v0

    .line 2861
    if-lez v0, :cond_0

    .line 2862
    const-string v1, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2864
    :cond_0
    return v0
.end method

.method public removeTrack(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3015
    .line 3016
    monitor-enter p0

    move v1, v0

    .line 3017
    :goto_0
    :try_start_0
    sget v2, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 3018
    sget-object v2, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 3019
    invoke-direct {p0, v0, v0}, Lcn/nubia/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3020
    add-int/lit8 v0, v0, -0x1

    .line 3017
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3023
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    if-lez v1, :cond_2

    .line 3025
    const-string v0, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3027
    :cond_2
    return v1

    .line 3023
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeTracks(II)I
    .locals 2

    .prologue
    .line 2849
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 2850
    if-lez v0, :cond_0

    .line 2851
    const-string v1, "cn.nubia.music.preset.queuechanged"

    invoke-direct {p0, v1}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2853
    :cond_0
    return v0
.end method

.method public removeTracksAudioId([J)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 3037
    .line 3038
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    monitor-enter p0

    move v2, v0

    .line 3040
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    move v1, v0

    .line 3041
    :goto_1
    sget v4, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v4, :cond_1

    .line 3042
    sget-object v4, Lcn/nubia/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v1

    aget-wide v6, p1, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 3043
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3041
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3040
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3050
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3051
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [J

    move v1, v0

    .line 3052
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3053
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 3052
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3050
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3056
    :cond_3
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->removeListTracks([J)I

    move-result v0

    .line 3058
    return v0
.end method

.method public seek(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 3288
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v2}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3289
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3291
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcn/nubia/music/app/MediaButtonIntentReceiver;

    .line 3292
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService;->mIsPausedByStatusClosed:Z

    .line 3295
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 3299
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->h()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 3300
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->h()J

    move-result-wide p1

    .line 3303
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mPlayer:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService$b;->a(J)J

    move-result-wide v0

    .line 3304
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.music.preset.seekchanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3305
    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3308
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public sendSyncHandler(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->disabledOnlyPlayInWifi()V

    .line 611
    const/4 v0, 0x0

    .line 612
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 619
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0187

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;II)V

    goto :goto_0

    .line 614
    :cond_3
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 616
    :cond_4
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService;->mMainHandler:Lcn/nubia/music/MediaPlaybackService$MainHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public setQueuePosition(I)V
    .locals 2

    .prologue
    .line 3181
    monitor-enter p0

    .line 3182
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 3183
    sput p1, Lcn/nubia/music/MediaPlaybackService;->mPlayPos:I

    .line 3184
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->openCurrentAndNext()V

    .line 3185
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 3186
    const-string v0, "cn.nubia.music.preset.metachanged"

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3187
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3188
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 3190
    :cond_0
    monitor-exit p0

    .line 3191
    return-void

    .line 3190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1

    .prologue
    .line 3117
    monitor-enter p0

    .line 3118
    :try_start_0
    iput p1, p0, Lcn/nubia/music/MediaPlaybackService;->mRepeatMode:I

    .line 3119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    .line 3120
    monitor-exit p0

    .line 3121
    return-void

    .line 3120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 3

    .prologue
    .line 3079
    monitor-enter p0

    .line 3080
    :try_start_0
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    sget v0, Lcn/nubia/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 3081
    monitor-exit p0

    .line 3110
    :goto_0
    return-void

    .line 3083
    :cond_0
    iput p1, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    .line 3084
    const-string v0, "com.qualcomm.music.playersettingsresponse"

    sget-object v1, Lcn/nubia/music/MediaPlaybackService;->SUPPORTED_ATTRS:[B

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;[BI)V

    .line 3086
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3088
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$9;-><init>(Lcn/nubia/music/MediaPlaybackService;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 3108
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->saveQueueAsync(Z)V

    .line 3109
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/MediaPlaybackService;->stop(Z)V

    .line 2324
    return-void
.end method

.class public Lcn/nubia/music/app/scan/MusicScanService;
.super Landroid/app/Service;
.source "MusicScanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/scan/MusicScanService$c;,
        Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;,
        Lcn/nubia/music/app/scan/MusicScanService$d;,
        Lcn/nubia/music/app/scan/MusicScanService$b;,
        Lcn/nubia/music/app/scan/MusicScanService$a;
    }
.end annotation


# static fields
.field private static final INSERTNUM_PER_TIME:I = 0xc8

.field public static final SCAN_MUSIC:Ljava/lang/String; = "cn.nubia.music.app.scanmusic"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_SCAN_COMPLETE:I = 0x4

.field private static mUIHandler:Landroid/os/Handler;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcn/nubia/music/app/scan/MusicScanService$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

.field private mFilterCount:I

.field private mIsRuning:Z

.field private mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanService;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanService;->mUIHandler:Landroid/os/Handler;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanService;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanService$d;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/scan/MusicScanService$d;-><init>(Lcn/nubia/music/app/scan/MusicScanService;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mBinder:Landroid/os/IBinder;

    .line 28
    iput-boolean v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mIsRuning:Z

    .line 29
    iput v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mFilterCount:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mAlbumArtMap:Ljava/util/HashMap;

    .line 221
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/music/app/scan/MusicScanService;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mIsRuning:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/music/app/scan/MusicScanService;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/music/app/scan/MusicScanService;->syncMediaProviderWithTaskState(Z)V

    return-void
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 473
    if-nez v0, :cond_1

    .line 476
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 477
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanService$c;

    invoke-direct {v0, p1}, Lcn/nubia/music/app/scan/MusicScanService$c;-><init>(Landroid/content/ServiceConnection;)V

    .line 478
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    sget-object v2, Lcn/nubia/music/app/scan/MusicScanService;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 483
    :goto_1
    return-object v0

    .line 482
    :cond_0
    const-string v0, "Failed to bind to service"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private getAlbumArtMap()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 124
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_art"

    aput-object v3, v2, v0

    .line 127
    const-string v3, "album_art != \'\' "

    .line 128
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mAlbumArtMap:Ljava/util/HashMap;

    const-string v2, "_id"

    .line 132
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 131
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album_art"

    .line 134
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 133
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    return-void
.end method

.method private getLastCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 428
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "music_id DESC"

    invoke-static {v1, v3, v3, v3, v2}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private makeSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 376
    const-string v2, "time_filter"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 378
    const-string v3, "size_filter"

    invoke-static {v1, v3, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v4

    .line 380
    const-string v3, "type_filter"

    invoke-static {v1, v3, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v5

    .line 383
    if-ne v0, v2, :cond_2

    move v3, v0

    .line 384
    :goto_0
    if-ne v0, v4, :cond_3

    move v2, v0

    .line 385
    :goto_1
    if-ne v0, v5, :cond_4

    .line 387
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    if-eqz v0, :cond_5

    .line 391
    const-string v0, "is_music"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 1 "

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :goto_3
    if-eqz v3, :cond_0

    .line 406
    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "duration"

    .line 407
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " >= "

    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0xea60

    .line 409
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    :cond_0
    if-eqz v2, :cond_1

    .line 414
    const-string v0, " and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_size"

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v2, 0x80000

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "builder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v3, v1

    .line 383
    goto :goto_0

    :cond_3
    move v2, v1

    .line 384
    goto :goto_1

    :cond_4
    move v0, v1

    .line 385
    goto :goto_2

    .line 395
    :cond_5
    const-string v0, "( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_music"

    .line 396
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 1 "

    .line 397
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " or "

    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_ringtone"

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 1 "

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    .line 401
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method private notifyScanComplete()V
    .locals 3

    .prologue
    .line 196
    const-string v0, "notifyScanComplete--"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mIsRuning:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRunning notifyScanComplete-- mTotalCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFilterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mFilterCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x4

    iget v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mTotalCount:I

    iget v2, p0, Lcn/nubia/music/app/scan/MusicScanService;->mFilterCount:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/app/scan/MusicScanService;->sendMessageToMainHandler(III)V

    .line 202
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/music/app/scan/MusicScanService$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/app/scan/MusicScanService$1;-><init>(Lcn/nubia/music/app/scan/MusicScanService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method private sendMessageToMainHandler(III)V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanService;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 149
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 150
    sget-object v1, Lcn/nubia/music/app/scan/MusicScanService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static declared-synchronized setUiHandler(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 185
    const-class v0, Lcn/nubia/music/app/scan/MusicScanService;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcn/nubia/music/app/scan/MusicScanService;->mUIHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private syncMediaProviderWithTaskState(Z)V
    .locals 14

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    .line 366
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getAlbumArtMap()V

    .line 281
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 282
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "_size"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "mime_type"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "duration"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "album"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "artist"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string v3, "date_modified"

    aput-object v3, v2, v0

    .line 290
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService;->makeSelection()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 294
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getLastCount()I

    move-result v6

    .line 296
    const/16 v7, 0x3c

    .line 297
    const/4 v1, 0x0

    .line 298
    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 300
    if-le v8, v6, :cond_2

    sub-int v0, v8, v6

    :goto_1
    iput v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mTotalCount:I

    .line 301
    new-array v9, v8, [Landroid/content/ContentValues;

    .line 302
    div-int/lit16 v0, v8, 0xc8

    add-int/lit8 v10, v0, 0x1

    .line 303
    const/4 v2, 0x0

    .line 304
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v10, :cond_4

    if-nez p1, :cond_4

    .line 305
    const/16 v0, 0xc8

    mul-int/lit16 v3, v4, 0xc8

    sub-int v3, v8, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 307
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_3
    if-ge v2, v11, :cond_3

    .line 308
    new-instance v0, Lcn/nubia/music/app/scan/MediaInfo;

    invoke-direct {v0, v5}, Lcn/nubia/music/app/scan/MediaInfo;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    .line 316
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    const/4 v12, 0x1

    iput v12, v0, Lcn/nubia/music/app/scan/MediaInfo;->mInsertTag:I

    .line 317
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 318
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mAlbumArtMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mAlbumArtMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    iget-object v12, v12, Lcn/nubia/music/app/scan/MediaInfo;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v12, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mAlbumArtMap:Ljava/util/HashMap;

    iget-object v13, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    iget-object v13, v13, Lcn/nubia/music/app/scan/MediaInfo;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcn/nubia/music/app/scan/MediaInfo;->setAlbumArt(Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mCurrentMedia:Lcn/nubia/music/app/scan/MediaInfo;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MediaInfo;->convertToContentValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v9, v3

    .line 322
    add-int/lit8 v3, v3, 0x1

    .line 307
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 325
    :cond_3
    if-ne v3, v7, :cond_b

    .line 326
    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/musicInfos"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 328
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->doSyncComplete()V

    .line 304
    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v3

    move v1, v0

    goto :goto_2

    .line 332
    :cond_4
    if-eqz v1, :cond_7

    .line 334
    sub-int v0, v8, v7

    .line 335
    if-lez v0, :cond_5

    .line 336
    new-array v1, v0, [Landroid/content/ContentValues;

    .line 337
    const/4 v2, 0x0

    invoke-static {v9, v7, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/musicInfos"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 345
    :cond_5
    :goto_5
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->deleteUnExistTracks(Landroid/content/Context;)V

    .line 346
    if-le v8, v6, :cond_8

    sub-int v0, v8, v6

    :goto_6
    iput v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mTotalCount:I

    .line 361
    :goto_7
    if-eqz v5, :cond_6

    .line 362
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_6
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService;->updateInsertTag()V

    goto/16 :goto_0

    .line 342
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 343
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->doSyncComplete()V

    goto :goto_5

    .line 346
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 355
    :cond_9
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 356
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->deleteUnExistTracks(Landroid/content/Context;)V

    .line 358
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->doSyncComplete()V

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_4
.end method

.method public static unbindFromService(Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;)V
    .locals 2

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 488
    const-string v0, "Trying to unbind with null token"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 499
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 492
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanService;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService$c;

    .line 493
    if-nez v0, :cond_1

    .line 494
    const-string v0, "Trying to unbind for unknown Context"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method private updateInsertTag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    const-string v0, "content://nubia.music.preset/musicInfos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 191
    const-string v2, "insert_tag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method


# virtual methods
.method public doSyncComplete()V
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mIsRuning:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService;->notifyScanComplete()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 225
    const-string v0, "onBind() +++ "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 443
    const-string v0, "onCreate() +++ "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 444
    iput-object p0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mContext:Landroid/content/Context;

    .line 445
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 242
    const-string v0, "onDestroy() +++ "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->stopScan()V

    .line 244
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanService$a;->a(Lcn/nubia/music/app/scan/MusicScanService$a;)V

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    .line 248
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 237
    const-string v0, "onRebind() +++ "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 450
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 451
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.music.app.scanmusic"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->startScan()V

    .line 458
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 454
    :cond_0
    const-string v0, "ScanService Restart!!!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcn/nubia/music/app/scan/MusicScanService;->stopSelf()V

    .line 456
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 231
    const-string v0, "onUnbind() +++ "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public startScan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const-string v0, "scan() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 162
    iput v2, p0, Lcn/nubia/music/app/scan/MusicScanService;->mTotalCount:I

    .line 163
    iput v2, p0, Lcn/nubia/music/app/scan/MusicScanService;->mFilterCount:I

    .line 165
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcn/nubia/music/app/scan/MusicScanService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/app/scan/MusicScanService$a;-><init>(Lcn/nubia/music/app/scan/MusicScanService;Lcn/nubia/music/app/scan/MusicScanService$1;)V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    .line 167
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService$a;->start()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "startScan,add scan task"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    new-instance v1, Lcn/nubia/music/app/scan/MusicScanService$b;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/app/scan/MusicScanService$b;-><init>(Lcn/nubia/music/app/scan/MusicScanService;Z)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/scan/MusicScanService$a;->a(Lcn/nubia/music/app/scan/MusicScanService$b;)V

    .line 174
    :cond_1
    return-void
.end method

.method public startScanService()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v1, "cn.nubia.music.app.scanmusic"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcn/nubia/music/app/scan/MusicScanService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mScanThread:Lcn/nubia/music/app/scan/MusicScanService$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/scan/MusicScanService$a;->a(Z)V

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService;->mIsRuning:Z

    .line 182
    return-void
.end method

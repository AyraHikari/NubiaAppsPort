.class public Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/hpplay/sdk/source/browse/api/IAPI;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOOP_MODE_ALL:I = 0x2

.field public static final LOOP_MODE_DEFAULT:I = 0x0

.field public static final LOOP_MODE_SINGLE:I = 0x1

.field public static final LOOP_MODE_UNDEFINED:I = -0x1

.field public static final MONITOR_PAUSE:I = 0x3

.field public static final MONITOR_RESUME:I = 0x4

.field public static final MONITOR_START:I = 0x1

.field public static final MONITOR_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LelinkPlayerInfo"

.field public static final TYPE_AUDIO:I = 0x65

.field public static final TYPE_IMAGE:I = 0x67

.field public static final TYPE_MIRROR:I = 0x2

.field public static final TYPE_SCREEN:I = 0x64

.field public static final TYPE_URL:I = 0x1

.field public static final TYPE_VIDEO:I = 0x66


# instance fields
.field private bitRate:I

.field private bitRateLevel:I

.field private danmukuInfo:Lcom/hpplay/sdk/source/bean/DanmakuBean;

.field private frame:I

.field private frameInterval:I

.field private header:Ljava/lang/String;

.field private height:I

.field private intent:Landroid/content/Intent;

.field private isAutoBitrate:Z

.field private isFullScreen:Z

.field private isUseCurrentConnection:Z

.field private isZoom:Z

.field private localPath:Ljava/lang/String;

.field private loopMode:I

.field private mLelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

.field private mMonitors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaAssetBean:Lcom/hpplay/sdk/source/bean/MediaAssetBean;

.field private mirrorAudioEnable:Z

.field private mirrorInner:Z

.field private playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

.field private resolutionLevel:I

.field private screenCode:Ljava/lang/String;

.field private screenShotPath:Ljava/lang/String;

.field private startPosition:I

.field private type:I

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    .line 60
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    .line 61
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    .line 63
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    .line 66
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    .line 71
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    .line 73
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    .line 80
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z

    .line 93
    new-instance v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->getAesBean()Lcom/hpplay/sdk/source/bean/AesBean;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/bean/AesBean;->setMode(I)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    .line 60
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    .line 61
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    .line 63
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    .line 66
    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    .line 71
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    .line 73
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    .line 80
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z

    .line 363
    :try_start_0
    const-class v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mLelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 364
    const-class v0, Lcom/hpplay/sdk/source/bean/DanmakuBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DanmakuBean;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->danmukuInfo:Lcom/hpplay/sdk/source/bean/DanmakuBean;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->url:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->localPath:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->startPosition:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->type:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenCode:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->header:Ljava/lang/String;

    .line 375
    const-class v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mediaAssetBean:Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    .line 377
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    .line 379
    const-class v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isFullScreen:Z

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenShotPath:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    .line 384
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->uri:Landroid/net/Uri;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->width:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->height:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frame:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRate:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_6
    return-void

    :cond_0
    move v0, v2

    .line 371
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 373
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 380
    goto :goto_2

    :cond_3
    move v0, v2

    .line 381
    goto :goto_3

    :cond_4
    move v0, v2

    .line 383
    goto :goto_4

    :cond_5
    move v0, v2

    .line 390
    goto :goto_5

    .line 391
    :catch_0
    move-exception v0

    .line 392
    const-string v1, "LelinkPlayerInfo"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRate:I

    return v0
.end method

.method public getBitRateLevel()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    return v0
.end method

.method public getDanmukuInfo()Lcom/hpplay/sdk/source/bean/DanmakuBean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->danmukuInfo:Lcom/hpplay/sdk/source/bean/DanmakuBean;

    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frame:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->height:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mLelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    return-object v0
.end method

.method public getLoaclUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLoopMode()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    return v0
.end method

.method public getMediaAsset()Lcom/hpplay/sdk/source/bean/MediaAssetBean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mediaAssetBean:Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    return-object v0
.end method

.method public getMonitors()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    return-object v0
.end method

.method public varargs getOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    const v0, 0x10006

    if-ne v0, p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenCode:Ljava/lang/String;

    .line 293
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const v0, 0x100010

    if-ne v0, p1, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isFullScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    const v0, 0x100018

    if-ne v0, p1, :cond_2

    .line 281
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    const v0, 0x100019

    if-ne v0, p1, :cond_3

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenShotPath:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_3
    const v0, 0x100022

    if-ne v0, p1, :cond_4

    .line 285
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_4
    const v0, 0x100031

    if-ne v0, p1, :cond_5

    .line 287
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_5
    const v0, 0x100038

    if-ne v0, p1, :cond_6

    .line 289
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_6
    const v0, 0x100039

    if-ne v0, p1, :cond_7

    .line 291
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayInfoBean()Lcom/hpplay/sdk/source/bean/PlayerInfoBean;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    return-object v0
.end method

.method public getResolutionLevel()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->startPosition:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->width:I

    return v0
.end method

.method public isMirrorAudioEnable()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    return v0
.end method

.method public varargs performAction(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public putMonitor(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    .line 264
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 268
    const-string v0, "LelinkPlayerInfo"

    const-string v1, "putMonitor serviceNumber is invalid"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setAesIv(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->getAesBean()Lcom/hpplay/sdk/source/bean/AesBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/bean/AesBean;->setIv(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setAesKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/PlayerInfoBean;->getAesBean()Lcom/hpplay/sdk/source/bean/AesBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/bean/AesBean;->setKey(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRate:I

    .line 210
    return-void
.end method

.method public setBitRateLevel(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    .line 111
    return-void
.end method

.method public setDanmukuInfo(Lcom/hpplay/sdk/source/bean/DanmakuBean;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->danmukuInfo:Lcom/hpplay/sdk/source/bean/DanmakuBean;

    .line 138
    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frame:I

    .line 202
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->header:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->height:I

    .line 194
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->intent:Landroid/content/Intent;

    .line 218
    return-void
.end method

.method public setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 3

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "LelinkPlayerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLelinkServiceInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mLelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 130
    return-void
.end method

.method public setLoaclUri(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->uri:Landroid/net/Uri;

    .line 89
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->localPath:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLoopMode(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    .line 242
    return-void
.end method

.method public setMediaAsset(Lcom/hpplay/sdk/source/bean/MediaAssetBean;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mediaAssetBean:Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    .line 226
    return-void
.end method

.method public setMirrorAudioEnable(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    .line 119
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    const v0, 0x10006

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    aget-object v0, p2, v1

    if-eqz v0, :cond_1

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 299
    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenCode:Ljava/lang/String;

    .line 315
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_1
    const v0, 0x100010

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_2

    aget-object v0, p2, v1

    if-eqz v0, :cond_2

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 301
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isFullScreen:Z

    goto :goto_0

    .line 302
    :cond_2
    const v0, 0x100018

    if-ne v0, p1, :cond_3

    .line 303
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    goto :goto_0

    .line 304
    :cond_3
    const v0, 0x100019

    if-ne v0, p1, :cond_4

    if-eqz p2, :cond_4

    aget-object v0, p2, v1

    if-eqz v0, :cond_4

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 305
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenShotPath:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_4
    const v0, 0x100022

    if-ne v0, p1, :cond_5

    if-eqz p2, :cond_5

    aget-object v0, p2, v1

    if-eqz v0, :cond_5

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 307
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    goto :goto_0

    .line 308
    :cond_5
    const v0, 0x100031

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_6

    aget-object v0, p2, v1

    if-eqz v0, :cond_6

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 309
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    goto :goto_0

    .line 310
    :cond_6
    const v0, 0x100038

    if-ne v0, p1, :cond_7

    if-eqz p2, :cond_7

    aget-object v0, p2, v1

    if-eqz v0, :cond_7

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 311
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z

    goto/16 :goto_0

    .line 312
    :cond_7
    const v0, 0x100039

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 313
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    goto/16 :goto_0
.end method

.method public setResolutionLevel(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    .line 103
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->startPosition:I

    .line 170
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->type:I

    .line 178
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->url:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    .line 158
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->width:I

    .line 186
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mLelinkServiceInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 332
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->danmukuInfo:Lcom/hpplay/sdk/source/bean/DanmakuBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 333
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->localPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->startPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->resolutionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRateLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorAudioEnable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 340
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isZoom:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 342
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mediaAssetBean:Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->loopMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mMonitors:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 346
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->urls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 347
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->playerInfoBean:Lcom/hpplay/sdk/source/bean/PlayerInfoBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isFullScreen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 349
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isUseCurrentConnection:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 350
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->screenShotPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->isAutoBitrate:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->frameInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->mirrorInner:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 359
    return-void

    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    :cond_1
    move v0, v2

    .line 341
    goto :goto_1

    :cond_2
    move v0, v2

    .line 348
    goto :goto_2

    :cond_3
    move v0, v2

    .line 349
    goto :goto_3

    :cond_4
    move v0, v2

    .line 351
    goto :goto_4

    :cond_5
    move v1, v2

    .line 358
    goto :goto_5
.end method

.class public Lcn/nubia/video/player/common/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/common/PlayerManager$Helper;,
        Lcn/nubia/video/player/common/PlayerManager$VideoInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerManager"

.field private static mPlayeMode:I

.field private static mSlomoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPlayer(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 11

    const/4 v0, 0x0

    .line 47
    sput v0, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    .line 49
    new-instance v1, Lcn/nubia/video/player/common/PlayerManager$Helper;

    invoke-direct {v1, p0, p2}, Lcn/nubia/video/player/common/PlayerManager$Helper;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 50
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->checkFile()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->isSimplePlayer()Z

    move-result v2

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->isSWCheckError()Z

    move-result v2

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getVideoInfo()Lcn/nubia/video/player/common/PlayerManager$VideoInfo;

    move-result-object v4

    .line 56
    iget v2, v4, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->frameRate:I

    invoke-virtual {v1, v2}, Lcn/nubia/video/player/common/PlayerManager$Helper;->isSlomoVideo(I)I

    move-result v2

    sput v2, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    if-nez v2, :cond_4

    .line 72
    :cond_3
    sget p1, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    if-lez p1, :cond_5

    .line 73
    :cond_4
    sput v0, Lcn/nubia/video/player/common/PlayerManager;->mPlayeMode:I

    .line 74
    new-instance p0, Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-direct {p0}, Lcn/nubia/video/player/common/AndroidPlayer;-><init>()V

    if-eqz v4, :cond_a

    .line 76
    sget v6, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    iget v7, v4, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->frameRate:I

    iget v8, v4, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->rotation:I

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getRecordTime()J

    move-result-wide v9

    move-object v5, p0

    invoke-interface/range {v5 .. v10}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeedParams(IIIJ)V

    .line 77
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getPlaySpeedChangeStartTime()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getPlaySpeedChangeEndTime()I

    move-result p2

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getCameraFps()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeedChangeTime(III)V

    goto :goto_3

    .line 80
    :cond_5
    invoke-static {p0}, Lzte/com/cn/drm/JBDrmImpl;->startDrmService(Landroid/content/Context;)V

    .line 81
    invoke-static {p0, p2}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    .line 83
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_6
    invoke-static {p0}, Lzte/com/cn/drm/JBDrmImpl;->isDrmFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 86
    new-instance p0, Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-direct {p0}, Lcn/nubia/video/player/common/AndroidPlayer;-><init>()V

    goto :goto_2

    .line 87
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->isSimplePlayer()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 88
    new-instance p0, Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-direct {p0}, Lcn/nubia/video/player/common/AndroidPlayer;-><init>()V

    goto :goto_2

    .line 90
    :cond_8
    sput v3, Lcn/nubia/video/player/common/PlayerManager;->mPlayeMode:I

    .line 91
    new-instance p0, Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-direct {p0}, Lcn/nubia/video/player/common/NubiaPlayer;-><init>()V

    if-eqz v4, :cond_9

    .line 93
    move-object v5, p0

    check-cast v5, Lcn/nubia/video/player/common/NubiaPlayer;

    sget v6, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    iget v7, v4, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->frameRate:I

    iget v8, v4, Lcn/nubia/video/player/common/PlayerManager$VideoInfo;->rotation:I

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getRecordTime()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcn/nubia/video/player/common/NubiaPlayer;->setPlaySpeedParams(IIIJ)V

    .line 94
    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getPlaySpeedChangeStartTime()I

    move-result p1

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getPlaySpeedChangeEndTime()I

    move-result p2

    invoke-virtual {v1}, Lcn/nubia/video/player/common/PlayerManager$Helper;->getCameraFps()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeedChangeTime(III)V

    .line 97
    :cond_9
    :goto_2
    invoke-static {}, Lzte/com/cn/drm/JBDrmImpl;->stopDrmService()V

    :cond_a
    :goto_3
    return-object p0
.end method

.method public static getHWPlayer()Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 1

    .line 38
    new-instance v0, Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-direct {v0}, Lcn/nubia/video/player/common/AndroidPlayer;-><init>()V

    return-object v0
.end method

.method public static getMediaPlayer(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 33
    sput v0, Lcn/nubia/video/player/common/PlayerManager;->mPlayeMode:I

    .line 34
    invoke-static {p0, p1, p2}, Lcn/nubia/video/player/common/PlayerManager;->createPlayer(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerMode()I
    .locals 1

    .line 103
    sget v0, Lcn/nubia/video/player/common/PlayerManager;->mPlayeMode:I

    return v0
.end method

.method public static getSWPlayer()Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 1

    .line 42
    new-instance v0, Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-direct {v0}, Lcn/nubia/video/player/common/NubiaPlayer;-><init>()V

    return-object v0
.end method

.method public static isSlomoVideo()Z
    .locals 1

    .line 107
    sget v0, Lcn/nubia/video/player/common/PlayerManager;->mSlomoType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

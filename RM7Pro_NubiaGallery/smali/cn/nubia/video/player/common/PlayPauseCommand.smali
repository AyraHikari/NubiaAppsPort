.class public Lcn/nubia/video/player/common/PlayPauseCommand;
.super Lcn/nubia/video/player/common/BaseCommand;
.source "PlayPauseCommand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/player/common/BaseCommand;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/nubia/video/player/common/PlayPauseCommand;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getVideoView()Lcn/nubia/video/player/VideoView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/nubia/video/player/common/PlayPauseCommand;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/nubia/video/player/common/PlayPauseCommand;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->onPlayPause()V

    return-void
.end method

.method public getCmdType()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

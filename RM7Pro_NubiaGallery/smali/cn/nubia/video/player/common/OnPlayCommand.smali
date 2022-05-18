.class public Lcn/nubia/video/player/common/OnPlayCommand;
.super Lcn/nubia/video/player/common/BaseCommand;
.source "OnPlayCommand.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/video/player/common/BaseCommand;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/video/player/common/OnPlayCommand;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcn/nubia/video/player/common/OnPlayCommand;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcn/nubia/video/player/common/OnPlayCommand;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/common/OnPlayCommand;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public getCmdType()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public needExcuteImmediately()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

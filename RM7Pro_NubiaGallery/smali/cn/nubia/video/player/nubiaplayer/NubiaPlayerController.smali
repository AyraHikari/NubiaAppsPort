.class public Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;
.super Lcn/nubia/video/player/ControllerBase;
.source "NubiaPlayerController.java"

# interfaces
.implements Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPlayerController"


# instance fields
.field private mAudioTrackIndex:I

.field private mIsLock:Z

.field private mLastSeekTime:J

.field private mListener:Lcn/nubia/video/player/FragmentListener;

.field private mPlayerType:I

.field private mSeekTime:I

.field private mVideoEditorHelper:Lcn/nubia/video/editor/VideoEditorHelper;

.field private mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

.field private mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Lcn/nubia/video/player/FragmentListener;Z)V
    .locals 7

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/video/player/ControllerBase;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mLastSeekTime:J

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mPlayerType:I

    .line 35
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mSeekTime:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mAudioTrackIndex:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoEditorHelper:Lcn/nubia/video/editor/VideoEditorHelper;

    .line 39
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    .line 43
    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    .line 44
    iput-object p4, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mListener:Lcn/nubia/video/player/FragmentListener;

    .line 45
    new-instance p3, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    move-object v1, p3

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;Z)V

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    .line 46
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    .line 47
    new-instance p1, Lcn/nubia/video/player/common/CommandManager;

    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;

    invoke-direct {p2, p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$OnCommandNotify;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;)V

    invoke-direct {p1, p2}, Lcn/nubia/video/player/common/CommandManager;-><init>(Lcn/nubia/video/player/common/CommandManager$Listener;)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mCmdManager:Lcn/nubia/video/player/common/CommandManager;

    .line 48
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->init()V

    .line 50
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcn/nubia/video/player/common/Utils;->getVideoTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->setMediaNotify()V

    return-void
.end method

.method private releaseVideoTrim()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->release()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    :cond_0
    return-void
.end method

.method private setMediaNotify()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setOnNotifyMediaStateListener(Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;)V

    return-void
.end method


# virtual methods
.method public getBaseView()Lcn/nubia/video/player/ViewBase;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    return-object v0
.end method

.method public isLock()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mIsLock:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mIsPrepared:Z

    return v0
.end method

.method public onDefaultTrim()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onDefaultTrim()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mListener:Lcn/nubia/video/player/FragmentListener;

    invoke-interface {v0}, Lcn/nubia/video/player/FragmentListener;->onFinish()V

    return-void
.end method

.method public onPlayPause()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->unregistAudioFocus()V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->registAudioFocus()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mCmdManager:Lcn/nubia/video/player/common/CommandManager;

    new-instance v1, Lcn/nubia/video/player/common/PlayPauseCommand;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/video/player/common/PlayPauseCommand;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/common/CommandManager;->addCommand(Lcn/nubia/video/player/common/BaseCommand;)V

    return-void
.end method

.method public onTrim(II)V
    .locals 6

    .line 144
    new-instance v3, Lcn/nubia/video/editor/VideoEditorInfo;

    invoke-direct {v3}, Lcn/nubia/video/editor/VideoEditorInfo;-><init>()V

    int-to-long v0, p1

    .line 145
    iput-wide v0, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    int-to-long p1, p2

    .line 146
    iput-wide p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    .line 147
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->supportPlaySpeedShift()Z

    move-result p1

    iput-boolean p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    .line 148
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->is4kVideo()Z

    move-result p1

    iput-boolean p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->is4kVideo:Z

    .line 149
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameRate()I

    move-result p1

    iput p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    .line 150
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameInterVal()J

    move-result-wide p1

    iput-wide p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameInterval:J

    .line 151
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getVideoRotation()I

    move-result p1

    iput p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    .line 152
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result p1

    iput p1, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    .line 153
    new-instance p1, Lcn/nubia/video/editor/VideoEditorHelper;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/video/editor/VideoEditorHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/video/editor/VideoEditorInfo;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;Z)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoEditorHelper:Lcn/nubia/video/editor/VideoEditorHelper;

    .line 154
    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->startEditVideo()V

    return-void
.end method

.method public onTrim(IIII)V
    .locals 8

    .line 158
    invoke-virtual {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->onPause()V

    .line 159
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getFrameRate()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getSlomoVideoType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v5, Lcn/nubia/video/editor/VideoEditorInfo;

    invoke-direct {v5}, Lcn/nubia/video/editor/VideoEditorInfo;-><init>()V

    int-to-long v0, p1

    .line 161
    iput-wide v0, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    int-to-long p1, p2

    .line 162
    iput-wide p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    int-to-long p1, p4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 163
    iput-wide p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    int-to-long p1, p3

    mul-long/2addr p1, v0

    .line 164
    iput-wide p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    .line 165
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->supportPlaySpeedShift()Z

    move-result p1

    iput-boolean p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    .line 166
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->is4kVideo()Z

    move-result p1

    iput-boolean p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->is4kVideo:Z

    .line 167
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameRate()I

    move-result p1

    iput p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameRate:I

    .line 168
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameInterVal()J

    move-result-wide p1

    iput-wide p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mFrameInterval:J

    .line 169
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getSlomoSkipCount()I

    move-result p1

    iput p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    .line 170
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getVideoRotation()I

    move-result p1

    iput p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mRotation:I

    .line 171
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result p1

    iput p1, v5, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    .line 172
    new-instance p1, Lcn/nubia/video/editor/VideoEditorHelper;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/video/editor/VideoEditorHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/video/editor/VideoEditorInfo;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;Z)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoEditorHelper:Lcn/nubia/video/editor/VideoEditorHelper;

    .line 173
    invoke-virtual {p1}, Lcn/nubia/video/editor/VideoEditorHelper;->startEditVideo()V

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoTrimInfo;-><init>()V

    int-to-long v1, p1

    .line 176
    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    int-to-long p1, p2

    .line 177
    iput-wide p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    int-to-long p1, p4

    .line 178
    iput-wide p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    int-to-long p1, p3

    .line 179
    iput-wide p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 180
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->supportPlaySpeedShift()Z

    move-result p1

    iput-boolean p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    .line 181
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->is4kVideo()Z

    move-result p1

    iput-boolean p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->is4kVideo:Z

    .line 182
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getFrameRate()I

    move-result p1

    iput p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->frameRate:I

    .line 183
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getVideoRotation()I

    move-result p1

    iput p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->rotation:I

    .line 184
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result p1

    iput p1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    .line 185
    new-instance p1, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;-><init>(Landroid/content/Context;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;)V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    .line 186
    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->setParams(Lcn/nubia/video/editor/VideoTrimInfo;)V

    .line 187
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoTrimHelper:Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mUri:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->trimVideo(Landroid/net/Uri;Z)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcn/nubia/video/player/ControllerBase;->release()V

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mIsPrepared:Z

    .line 203
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->stopPlayback()V

    .line 204
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mCmdManager:Lcn/nubia/video/player/common/CommandManager;

    invoke-virtual {v0}, Lcn/nubia/video/player/common/CommandManager;->removeCommand()V

    .line 205
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->releaseVideoTrim()V

    .line 206
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onRelease()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->mView:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->show()V

    return-void
.end method

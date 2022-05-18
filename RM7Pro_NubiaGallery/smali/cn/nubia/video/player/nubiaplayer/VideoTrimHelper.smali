.class public Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;
.super Ljava/lang/Object;
.source "VideoTrimHelper.java"

# interfaces
.implements Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTrimHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

.field private mUri:Landroid/net/Uri;

.field private mVideoTrim:Lcn/nubia/video/editor/VideoTrim;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Landroid/app/ProgressDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->showToast(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->startTrimVideo(I)V

    return-void
.end method

.method private isScreenLocked()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 183
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private showProgressDialog()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$3;-><init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showToast(I)V
    .locals 2

    .line 130
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    return-void
.end method

.method private showTrimTypeDialog()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v2, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$4;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$4;-><init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)V

    const v3, 0x7f10004e

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v2, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$5;-><init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startTrimVideo(I)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoTrimInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    .line 60
    :cond_0
    new-instance v0, Lcn/nubia/video/editor/VideoTrim;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/video/editor/VideoTrim;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/video/editor/VideoTrimInfo;)V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mVideoTrim:Lcn/nubia/video/editor/VideoTrim;

    .line 61
    invoke-virtual {v0, p0}, Lcn/nubia/video/editor/VideoTrim;->setListener(Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mVideoTrim:Lcn/nubia/video/editor/VideoTrim;

    invoke-virtual {v0, p1}, Lcn/nubia/video/editor/VideoTrim;->trimVideo(I)V

    return-void
.end method


# virtual methods
.method public onVideoTrimComplete(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$1;-><init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoTrimError(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper$2;-><init>(Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoTrimProgress(I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->showProgressDialog()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mHandler:Landroid/os/Handler;

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mVideoTrim:Lcn/nubia/video/editor/VideoTrim;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Lcn/nubia/video/editor/VideoTrim;->setListener(Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;)V

    .line 72
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mVideoTrim:Lcn/nubia/video/editor/VideoTrim;

    .line 74
    :cond_1
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setParams(Lcn/nubia/video/editor/VideoTrimInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    return-void
.end method

.method public trimVideo(Landroid/net/Uri;Z)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    .line 46
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->showTrimTypeDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/VideoTrimHelper;->startTrimVideo(I)V

    :goto_0
    return-void
.end method

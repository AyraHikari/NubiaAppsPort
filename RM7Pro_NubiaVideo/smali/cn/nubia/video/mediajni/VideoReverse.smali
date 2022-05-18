.class public Lcn/nubia/video/mediajni/VideoReverse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediajni/VideoReverse$MyHandler;,
        Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;,
        Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;
    }
.end annotation


# static fields
.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoReverse"


# instance fields
.field private mDstVideoPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;

.field private mNativeContext:J

.field private mSrcVideoPath:Ljava/lang/String;

.field private mVideoSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_media_player"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcn/nubia/video/mediajni/VideoReverse$onCompleteListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mSrcVideoPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mDstVideoPath:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mVideoSize:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mListener:Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;

    .line 6
    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse;->mSrcVideoPath:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcn/nubia/video/mediajni/VideoReverse;->mDstVideoPath:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse;->mVideoSize:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcn/nubia/video/mediajni/VideoReverse;->mListener:Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;

    .line 10
    new-instance p1, Lcn/nubia/video/mediajni/VideoReverse$MyHandler;

    invoke-direct {p1, p0, v0}, Lcn/nubia/video/mediajni/VideoReverse$MyHandler;-><init>(Lcn/nubia/video/mediajni/VideoReverse;Lcn/nubia/video/mediajni/VideoReverse$1;)V

    iput-object p1, p0, Lcn/nubia/video/mediajni/VideoReverse;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/video/mediajni/VideoReverse;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/mediajni/VideoReverse;)Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediajni/VideoReverse;->mListener:Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/mediajni/VideoReverse;I[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediajni/VideoReverse;->native_startReverse(I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private execute([Ljava/lang/String;Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/video/mediajni/VideoReverse$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/video/mediajni/VideoReverse$2;-><init>(Lcn/nubia/video/mediajni/VideoReverse;Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private executeFFmpegCmd([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcn/nubia/video/mediajni/VideoReverse$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediajni/VideoReverse$1;-><init>(Lcn/nubia/video/mediajni/VideoReverse;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/video/mediajni/VideoReverse;->execute([Ljava/lang/String;Lcn/nubia/video/mediajni/VideoReverse$OnHandleListener;)V

    return-void
.end method

.method private native native_startReverse(I[Ljava/lang/String;)I
.end method

.method private reverseCmd()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcn/nubia/video/mediajni/VideoReverse;->mSrcVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/video/mediajni/VideoReverse;->mDstVideoPath:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ffmpeg;-i;%s;-b;7M;-vf;reverse;%s;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private videoReverse()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediajni/VideoReverse;->reverseCmd()[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/mediajni/VideoReverse;->executeFFmpegCmd([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startReverse()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediajni/VideoReverse;->videoReverse()V

    return-void
.end method

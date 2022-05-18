.class public Lcn/nubia/video/player/common/VideoRender;
.super Ljava/lang/Object;
.source "VideoRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRender"


# instance fields
.field private mInitialized:Z

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_media_player"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/player/common/VideoRender;->mInitialized:Z

    return-void
.end method

.method private native native_flush()V
.end method

.method private native native_release()V
.end method

.method private native native_renderFrame([BIIII)V
.end method

.method private native native_setSurface(Landroid/view/Surface;I)V
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/video/player/common/VideoRender;->native_flush()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/player/common/VideoRender;->native_release()V

    return-void
.end method

.method public renderFrame([BIIII)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcn/nubia/video/player/common/VideoRender;->native_renderFrame([BIIII)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/common/VideoRender;->native_setSurface(Landroid/view/Surface;I)V

    return-void
.end method

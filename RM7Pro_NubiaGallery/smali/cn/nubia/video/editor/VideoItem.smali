.class public Lcn/nubia/video/editor/VideoItem;
.super Ljava/lang/Object;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/VideoItem$NativeGetThumbnailListCallback;,
        Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoItem"


# instance fields
.field private mInitialized:Z

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nubia_media_player"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    return-void
.end method

.method private native native_cancel()V
.end method

.method private native native_getDuration()I
.end method

.method private native native_getFrameRate()I
.end method

.method private native native_getHeight()I
.end method

.method private native native_getKeyFrameAt([IIIJ)I
.end method

.method private native native_getRotation()I
.end method

.method private native native_getThumbnailList([IIIJJILcn/nubia/video/editor/VideoItem$NativeGetThumbnailListCallback;)I
.end method

.method private native native_getVideoMime()Ljava/lang/String;
.end method

.method private native native_getWidth()I
.end method

.method private native native_is10BitVideo()Z
.end method

.method private native native_release()V
.end method

.method private native native_setDataSource(Ljava/lang/String;Z)I
.end method

.method private native native_snapShot(Ljava/lang/String;J)I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_cancel()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    iget-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoItem"

    const-string v1, "VideoItem without released."

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getDegrees()I
    .locals 1

    .line 100
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getRotation()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 96
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 112
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getFrameRate()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 118
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getHeight()I

    move-result v0

    return v0
.end method

.method public getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;
    .locals 9

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, -0x2

    const/16 v0, 0x38

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p2, p2, -0x2

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    mul-int p2, p1, v0

    .line 50
    new-array v7, p2, [I

    .line 51
    invoke-static {p2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v8

    move-object v1, p0

    move-object v2, v7

    move v3, p1

    move v4, v0

    move-wide v5, p3

    .line 53
    invoke-direct/range {v1 .. v6}, Lcn/nubia/video/editor/VideoItem;->native_getKeyFrameAt([IIIJ)I

    move-result p3

    if-gez p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_2
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 58
    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p3, 0x0

    .line 59
    invoke-virtual {v8, v7, p3, p2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 60
    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p1, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public getThumbnailList(IIJJILcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;)V
    .locals 12

    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, -0x2

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, p2, 0x1

    and-int/lit8 v2, v2, -0x2

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    mul-int v8, v0, v1

    .line 72
    new-array v10, v8, [I

    .line 73
    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 75
    new-instance v11, Lcn/nubia/video/editor/VideoItem$1;

    move-object v2, v11

    move-object v3, p0

    move v4, v0

    move v5, v1

    move-object v7, v10

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcn/nubia/video/editor/VideoItem$1;-><init>(Lcn/nubia/video/editor/VideoItem;IILjava/nio/IntBuffer;[IILcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;)V

    move-object v2, p0

    move-object v3, v10

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcn/nubia/video/editor/VideoItem;->native_getThumbnailList([IIIJJILcn/nubia/video/editor/VideoItem$NativeGetThumbnailListCallback;)I

    return-void
.end method

.method public getVideoMime()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getVideoMime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 115
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_getWidth()I

    move-result v0

    return v0
.end method

.method public is10BitVideo()Z
    .locals 1

    .line 123
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_is10BitVideo()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    .line 109
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoItem;->native_release()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)I
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcn/nubia/video/editor/VideoItem;->native_setDataSource(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setDataSource(Ljava/lang/String;Z)I
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcn/nubia/video/editor/VideoItem;->mInitialized:Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/editor/VideoItem;->native_setDataSource(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public snapShot(Ljava/lang/String;J)I
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/video/editor/VideoItem;->native_snapShot(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.class public Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V
    .locals 8

    .line 176
    invoke-static {p3}, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;->changeType(I)I

    move-result v3

    invoke-static {p3}, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;->changeType(I)I

    move-result p3

    invoke-static {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/data/ImageCacheRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V

    .line 177
    iput-object p6, p0, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method

.method private static changeType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method


# virtual methods
.method public onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 194
    new-instance v0, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    .line 195
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 196
    invoke-static {p2}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 197
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->getWidth()I

    move-result v3

    .line 198
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->getHeight()I

    move-result v4

    const-wide/16 v5, 0x0

    .line 203
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->getDuration()I

    move-result v7

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_0

    const-wide/16 v5, 0x3e8

    :cond_0
    const/4 v7, 0x5

    if-eq p2, v7, :cond_2

    const/4 v7, 0x6

    if-eq p2, v7, :cond_1

    .line 223
    invoke-virtual {v0, v3, v4, v5, v6}, Lcn/nubia/video/editor/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    int-to-float p2, v1

    int-to-float v1, v3

    div-float v3, p2, v1

    int-to-float v4, v4

    div-float/2addr p2, v4

    .line 215
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr v1, p2

    float-to-int v1, v1

    mul-float/2addr v4, p2

    float-to-int p2, v4

    .line 219
    invoke-virtual {v0, v1, p2, v5, v6}, Lcn/nubia/video/editor/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    int-to-float p2, v1

    int-to-float v1, v3

    div-float v3, p2, v1

    int-to-float v4, v4

    div-float/2addr p2, v4

    .line 208
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v1, p2

    float-to-int v1, v1

    mul-float/2addr v4, p2

    float-to-int p2, v4

    .line 212
    invoke-virtual {v0, v1, p2, v5, v6}, Lcn/nubia/video/editor/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v2

    .line 227
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/video/editor/VideoItem;->release()V

    .line 229
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 230
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_4
    move-object v2, p2

    :goto_1
    return-object v2
.end method

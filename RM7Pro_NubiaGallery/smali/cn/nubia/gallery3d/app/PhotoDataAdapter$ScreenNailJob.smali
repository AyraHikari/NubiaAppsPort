.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Lcn/nubia/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz p2, :cond_0

    .line 1022
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->isSetColorSpace()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1023
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSetColorSpace(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/MediaItem;->setNeedColorSpace(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 6

    .line 1031
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object p1

    return-object p1

    .line 1042
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isASyncLoadImage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    new-instance v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;

    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v5, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1044
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/Path;)V

    .line 1043
    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    .line 1044
    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1046
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1051
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    if-eqz v0, :cond_8

    .line 1055
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMimeType(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "image/*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1056
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    .line 1058
    :goto_1
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "wait"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1059
    invoke-static {v0}, Lcn/nubia/gallery3d/util/BlurUtil;->BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1061
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1062
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result p1

    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v3

    sub-int/2addr p1, v3

    .line 1061
    invoke-static {v0, p1, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1063
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getShareMode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1066
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1067
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    iget p1, p1, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoPortraitHeight:I

    int-to-float p1, p1

    .line 1068
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 1069
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v3

    iget v3, v3, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoPortraitWidthLimit:I

    .line 1070
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-lez v4, :cond_8

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 1072
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1071
    invoke-static {v0, p1, v3, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->cropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1075
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    iget p1, p1, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoLandscapeHeight:I

    int-to-float p1, p1

    .line 1076
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 1077
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v3

    iget v3, v3, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoLandscapeWidthLimit:I

    .line 1078
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-lez v4, :cond_8

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 1080
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1079
    invoke-static {v0, p1, v3, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->cropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    goto :goto_3

    .line 1085
    :cond_9
    new-instance v1, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v1, v0}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    :goto_3
    return-object v1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1017
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object p1

    return-object p1
.end method

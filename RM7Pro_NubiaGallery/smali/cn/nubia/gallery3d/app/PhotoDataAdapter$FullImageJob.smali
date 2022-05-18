.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;
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
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageEntry:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

.field private mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1095
    iput-object p3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mImageEntry:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 5

    .line 1100
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mImageEntry:Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSetColorSpace(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->setNeedColorSpace(Z)V

    .line 1102
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1105
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1000(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    .line 1108
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->isIs_heic_check()Z

    move-result v1

    const-string v3, ".heic"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    .line 1109
    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1110
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v4}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1400(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1111
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    return-object p1

    .line 1113
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    .line 1115
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "wait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 1118
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1089
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$FullImageJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method

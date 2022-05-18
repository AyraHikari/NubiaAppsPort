.class Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    iput-object p2, p0, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1218
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1220
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestRenameImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1211
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/CropImage$LoadBitmapDataTask;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

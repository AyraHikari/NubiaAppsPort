.class Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/FutureListener<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 95
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v3, 0x44800000    # 1024.0f

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 96
    invoke-static {v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v4, p1, v0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.class Lcn/nubia/gallery3d/app/CropImage$SaveOutput;
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
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 9

    .line 391
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 392
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 394
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 395
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    .line 396
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "cropped-rect"

    .line 399
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_f

    const-string v5, "output"

    .line 403
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 405
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v4

    .line 407
    :cond_0
    iget-object v7, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v7, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 408
    iget-object v8, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v8, p1, v7, v5}, Lcn/nubia/gallery3d/app/CropImage;->access$800(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v3

    move-object v7, v4

    :goto_0
    const-string v8, "return-data"

    .line 410
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 411
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    if-nez v7, :cond_4

    .line 413
    iget-object v5, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v5, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v7, v5

    :cond_4
    const-string v5, "data"

    .line 414
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move v5, v6

    :cond_5
    const-string v8, "issavedata"

    .line 416
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 417
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v4

    :cond_6
    if-nez v7, :cond_7

    .line 419
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 420
    :cond_7
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, p1, v7}, Lcn/nubia/gallery3d/app/CropImage;->access$900(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)V

    :cond_8
    move v3, v6

    goto :goto_1

    :cond_9
    const-string v8, "set-as-wallpaper"

    .line 421
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 422
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v4

    :cond_a
    if-nez v7, :cond_b

    .line 424
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 425
    :cond_b
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, p1, v7}, Lcn/nubia/gallery3d/app/CropImage;->access$1000(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v4

    :cond_c
    move v3, v5

    .line 427
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.android.camera.action.CROP"

    if-ne v1, v5, :cond_10

    .line 428
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v4

    :cond_d
    if-nez v7, :cond_e

    .line 429
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 430
    :cond_e
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, p1, v7}, Lcn/nubia/gallery3d/app/CropImage;->access$1100(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_f
    move-object v7, v4

    :cond_10
    :goto_2
    if-nez v3, :cond_13

    .line 435
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v4

    :cond_11
    if-nez v7, :cond_12

    .line 436
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/CropImage;->access$700(Lcn/nubia/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 437
    :cond_12
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {v1, p1, v7}, Lcn/nubia/gallery3d/app/CropImage;->access$1100(Lcn/nubia/gallery3d/app/CropImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 438
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_13
    return-object v0
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 383
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/CropImage$SaveOutput;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.class Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
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
.field private final mCount:Ljava/lang/String;

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 361
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 362
    iput p4, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    .line 367
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$000(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v0

    .line 369
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 370
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 371
    iget-object v3, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    iget v4, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$600(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v3, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v3

    .line 378
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v4

    iget-object v6, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$200(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v6

    iget-object v7, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v7}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x2

    .line 383
    iget v6, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/lit8 v6, v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_0
    move-object v8, v4

    .line 387
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 388
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 389
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    .line 388
    invoke-virtual {v4, v7, v7, v6, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/high16 v6, -0x70000000

    .line 390
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 395
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    return-object v7

    :cond_1
    const-string v6, "("

    .line 398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 400
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 401
    iget-object v6, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    iget v9, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    add-int/2addr v6, v9

    .line 404
    iget v15, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    add-int v14, v6, v2

    if-le v3, v14, :cond_2

    sub-int v9, v3, v6

    sub-int/2addr v9, v2

    .line 407
    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    goto :goto_0

    :cond_2
    sub-int v9, v3, v2

    :goto_0
    move v10, v9

    .line 411
    iget v9, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int v9, v3, v9

    iget v0, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    sub-int v13, v9, v0

    iget-object v0, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v0

    move-object v9, v4

    move v11, v15

    move/from16 v16, v14

    move-object v14, v0

    invoke-static/range {v9 .. v14}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 414
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v7

    :cond_3
    move/from16 v0, v16

    if-le v3, v0, :cond_4

    sub-int v0, v3, v6

    sub-int/2addr v0, v2

    .line 418
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    sub-int v6, v3, v2

    .line 421
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    move-object v2, v4

    move v3, v0

    move v4, v15

    invoke-static/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    return-object v8

    :catchall_0
    move-exception v0

    .line 379
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

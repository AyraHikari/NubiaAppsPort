.class Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;
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
    name = "ImprovedAlbumLabelJob"
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

    .line 291
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 293
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mCount:Ljava/lang/String;

    .line 294
    iput p4, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mSourceType:I

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    .line 299
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$000(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v1

    .line 301
    iget-object v5, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 302
    iget-object v9, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mCount:Ljava/lang/String;

    .line 304
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    .line 305
    invoke-static {}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->getInstance()Lcn/nubia/gallery3d/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$200(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v3

    iget-object v4, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/gallery3d/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$200(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v2

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 309
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    move-object v12, v2

    .line 311
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 313
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 314
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    return-object v14

    .line 332
    :cond_1
    iget v15, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textLimit:I

    .line 333
    iget v3, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 334
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v2

    iget v4, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->bottomMargin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 336
    iget-object v4, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v11

    move-object v6, v13

    move v7, v3

    move v8, v2

    move v10, v15

    invoke-static/range {v6 .. v11}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 337
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v14

    :cond_2
    int-to-float v2, v2

    .line 340
    iget v4, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    int-to-float v4, v4

    iget-object v6, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v6}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    add-float/2addr v4, v6

    sub-float/2addr v2, v4

    float-to-int v4, v2

    .line 341
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    move-object v2, v13

    move v6, v15

    invoke-static/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 345
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    iget v3, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->mSourceType:I

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$600(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 347
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$100(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v1, v1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconXMargin:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->this$0:Lcn/nubia/gallery3d/ui/AlbumLabelMaker;

    invoke-static {v3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I

    move-result v3

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 347
    invoke-virtual {v13, v2, v1, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-object v12
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

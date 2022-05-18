.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
    }
.end annotation


# instance fields
.field protected final cornerRadius:I

.field protected final margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cornerRadiusPixels"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cornerRadiusPixels"    # I
    .param p2, "marginPixels"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    .line 52
    iput p2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->margin:I

    .line 53
    return-void
.end method

.method public static centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "edgeLength"    # I

    .prologue
    const/4 v10, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    :cond_0
    move-object v3, v10

    .line 92
    :cond_1
    :goto_0
    return-object v3

    .line 68
    :cond_2
    move-object v3, p0

    .line 69
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 70
    .local v7, "widthOrg":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 71
    .local v1, "heightOrg":I
    if-le v7, p1, :cond_1

    if-le v1, p1, :cond_1

    .line 72
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    mul-int/2addr v11, p1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    div-int v2, v11, v12

    .line 73
    .local v2, "longerEdge":I
    if-le v7, v1, :cond_3

    move v6, v2

    .line 74
    .local v6, "scaledWidth":I
    :goto_1
    if-le v7, v1, :cond_4

    move v5, p1

    .line 77
    .local v5, "scaledHeight":I
    :goto_2
    const/4 v11, 0x1

    :try_start_0
    invoke-static {p0, v6, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 82
    .local v4, "scaledBitmap":Landroid/graphics/Bitmap;
    sub-int v11, v6, p1

    div-int/lit8 v8, v11, 0x2

    .line 83
    .local v8, "xTopLeft":I
    sub-int v11, v5, p1

    div-int/lit8 v9, v11, 0x2

    .line 85
    .local v9, "yTopLeft":I
    :try_start_1
    invoke-static {v4, v8, v9, p1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v10

    .line 89
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "scaledHeight":I
    .end local v6    # "scaledWidth":I
    .end local v8    # "xTopLeft":I
    .end local v9    # "yTopLeft":I
    :cond_3
    move v6, p1

    .line 73
    goto :goto_1

    .restart local v6    # "scaledWidth":I
    :cond_4
    move v5, v2

    .line 74
    goto :goto_2

    .line 79
    .restart local v5    # "scaledHeight":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v10

    .line 80
    goto :goto_0
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 57
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 63
    return-void
.end method

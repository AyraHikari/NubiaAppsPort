.class public Lcom/android/gallery3d/filtershow/mosaic/MosaicBitmapUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/MosaicBitmapUtil;->getBlurBitmap(Landroid/graphics/Bitmap;II)V

    return-object p0
.end method

.method public static native getBlurBitmap(Landroid/graphics/Bitmap;II)V
.end method

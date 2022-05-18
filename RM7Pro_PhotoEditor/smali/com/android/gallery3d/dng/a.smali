.class public Lcom/android/gallery3d/dng/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/dng/ImageRGB;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/dng/a;->a:Lcom/android/gallery3d/dng/ImageRGB;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/dng/a;->e:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    iput-object p1, p0, Lcom/android/gallery3d/dng/a;->d:Ljava/lang/String;

    new-instance p1, Lcom/android/gallery3d/dng/ImageRGB;

    invoke-direct {p1}, Lcom/android/gallery3d/dng/ImageRGB;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/dng/a;->a:Lcom/android/gallery3d/dng/ImageRGB;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CImage getDNG2Bitmap mPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/dng/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " m_nWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/dng/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m_nHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/dng/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyg"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/android/gallery3d/dng/a;->a:Lcom/android/gallery3d/dng/ImageRGB;

    iget-object v3, p0, Lcom/android/gallery3d/dng/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/dng/ImageRGB;->dng2rgb(Ljava/lang/String;[I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, p0, Lcom/android/gallery3d/dng/a;->b:I

    const/4 v4, 0x1

    aget v5, v0, v4

    iput v5, p0, Lcom/android/gallery3d/dng/a;->c:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " out_width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  out_height = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/gallery3d/dng/a;->b:I

    iget v1, p0, Lcom/android/gallery3d/dng/a;->c:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/android/gallery3d/dng/a;->b:I

    int-to-double v0, v0

    const-wide v2, 0x4090e00000000000L    # 1080.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jyzhou"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v7, p0, Lcom/android/gallery3d/dng/a;->b:I

    iget v8, p0, Lcom/android/gallery3d/dng/a;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/dng/a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/dng/a;->b:I

    return v0
.end method

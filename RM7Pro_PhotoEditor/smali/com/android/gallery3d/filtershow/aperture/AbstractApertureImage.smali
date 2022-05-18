.class public abstract Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;
    }
.end annotation


# static fields
.field static o:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:F

.field g:F

.field h:F

.field i:I

.field j:I

.field k:Landroid/graphics/Bitmap;

.field l:Landroid/graphics/Bitmap;

.field volatile m:Z

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    return-void
.end method

.method private a(F)F
    .locals 2

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const v0, 0x3f7ff972    # 0.9999f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private c(Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;II)V
    .locals 9

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$a;-><init>(Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;III)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)I
    .locals 10

    invoke-static {}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->isUseArcsoft()Z

    move-result v0

    const-string v1, "AbstractApertureImage"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lb/a/c/a;->g(Ljava/lang/String;)Lb/a/c/a;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lb/a/c/a;->e(I)I

    move-result v6

    invoke-static {v6}, Lb/a/c/b;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v2}, Lb/a/c/a;->e(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    sget v0, Lb/a/c/a;->b:I

    :cond_0
    sget v4, Lb/a/c/a;->b:I

    if-ne v0, v4, :cond_1

    const-string v0, "fileCheck 2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/aperture/a;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->isUseAltek()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x24

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p0, 0x8

    new-array p0, p0, [B

    invoke-virtual {v5, p0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i([BI)I

    move-result v0

    const/4 v6, 0x4

    invoke-static {p0, v6}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i([BI)I

    move-result p0

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v0, v6, :cond_2

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p0, v0, :cond_2

    const-string p0, "fileCheck 1"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/a;->f(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return v2

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw p0

    :catch_4
    :goto_1
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_4
    :goto_2
    const-string p0, "fileCheck 0"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static i([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x20

    or-int/2addr p0, p1

    return p0
.end method

.method public static final native isUseAltek()Z
.end method

.method public static final native isUseArcsoft()Z
.end method

.method private m(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x6

    if-eq v7, p2, :cond_1

    const/16 v7, 0x8

    if-ne v7, p2, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    int-to-float p2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {v4, v5, v6, p2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1

    :cond_1
    :goto_0
    div-int/lit8 v0, v0, 0x2

    int-to-float p2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {v4, v6, v5, p2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {v3, p1, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static n()Z
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private t(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lc/b/a/c/c;

    invoke-direct {v2}, Lc/b/a/c/c;-><init>()V

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->B(Ljava/lang/String;)V

    sget p1, Lc/b/a/c/c;->x:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lc/b/a/c/c;->a(IJLjava/util/TimeZone;)Z

    sget p1, Lc/b/a/c/c;->n:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    invoke-virtual {v2}, Lc/b/a/c/c;->C()V

    sget p1, Lc/b/a/c/c;->h0:I

    const/4 p4, 0x2

    invoke-virtual {v2, p1, p4}, Lc/b/a/c/c;->g(II)V

    new-instance p1, Lc/b/a/c/l;

    iget p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/aperture/a;->e(F)F

    move-result p4

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr p4, v3

    float-to-int p4, p4

    int-to-long v3, p4

    const-wide/16 v5, 0xa

    invoke-direct {p1, v3, v4, v5, v6}, Lc/b/a/c/l;-><init>(JJ)V

    sget p4, Lc/b/a/c/c;->L:I

    invoke-virtual {v2, p4, p1}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    sget p1, Lc/b/a/c/c;->n0:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    sget p1, Lc/b/a/c/c;->o0:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Lc/b/a/c/c;->c(ILjava/lang/Object;)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->D(Lc/b/a/c/h;)Lc/b/a/c/h;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/b/a/c/c;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x62

    invoke-virtual {p3, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move v0, p1

    :catchall_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return v0

    :catch_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    return v0
.end method


# virtual methods
.method protected b()V
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    :cond_2
    :goto_1
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method abstract exit(I)V
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    return v0
.end method

.method abstract j()I
.end method

.method public k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method l(Ljava/lang/String;II)Landroid/graphics/Rect;
    .locals 9

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFixSizeBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ori = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "AbstractApertureImage"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    iget v6, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr v1, p2

    div-int/2addr v1, v7

    mul-int/2addr v6, p2

    div-int/2addr v6, v7

    rem-int/lit8 v8, v1, 0x2

    if-ne v8, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    rem-int/lit8 v8, v6, 0x2

    if-ne v8, v0, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_0
    div-int/lit8 v8, v7, 0x2

    if-lt v8, p2, :cond_2

    shr-int/lit8 v7, v7, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v2

    if-eq v0, v2, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v7, v6

    move v6, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c(Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/e/b;->u(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    return-object p1
.end method

.method o(Ljava/lang/String;)V
    .locals 10

    const-string v0, ";"

    const-string v1, ","

    const-string v2, "]"

    const-string v3, "AbstractApertureImage"

    const-string v4, ""

    :try_start_0
    new-instance v5, Lc/b/a/c/c;

    invoke-direct {v5}, Lc/b/a/c/c;-><init>()V

    invoke-virtual {v5, p1}, Lc/b/a/c/c;->B(Ljava/lang/String;)V

    sget p1, Lc/b/a/c/c;->h0:I

    invoke-virtual {v5, p1}, Lc/b/a/c/c;->o(I)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lc/b/a/c/h;->x()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readaperture userComment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-direct {p0, v7}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    const/4 v7, 0x2

    aget-object v8, p1, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    invoke-direct {p0, v8}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    const/4 v8, 0x3

    aget-object v9, p1, v8

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object p1, p1, v8

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    aget-object v0, p1, v7

    if-eqz v0, :cond_0

    aget-object v0, p1, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p1, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    :cond_0
    aget-object v0, p1, v8

    if-eqz v0, :cond_1

    aget-object v0, p1, v8

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object p1, p1, v8

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New version camera aperture  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mUserCommentDegree = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mMirror is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget p1, Lc/b/a/c/c;->L:I

    invoke-virtual {v5, p1}, Lc/b/a/c/c;->o(I)Lc/b/a/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lc/b/a/c/h;->w()[Lc/b/a/c/l;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1}, Lc/b/a/c/l;->c()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Old version camera aperture  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    sget-object p1, Lcom/android/gallery3d/filtershow/aperture/a;->d:[F

    aget p1, p1, v6

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    const-string p1, "readaperture info wrong"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public p()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit   mInitOver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractApertureImage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    if-nez v3, :cond_0

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exit   times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->exit(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public q(Landroid/content/Context;FFF)Landroid/net/Uri;
    .locals 7

    const-string v0, "AbstractApertureImage"

    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-direct {p0, p3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    iput p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    const/4 p2, 0x0

    :try_start_0
    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->d:I

    iget p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "save mbitmap"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " *  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    const/4 p4, 0x1

    if-ne p4, p3, :cond_2

    const/4 p3, 0x6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p3, v1, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    goto :goto_1

    :cond_1
    :goto_0
    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    :cond_2
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dxd save mCurX "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCurY "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " aperture "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p0, p3, v1, v2, v3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->saveParam(Landroid/graphics/Bitmap;FFF)V

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    if-ne p4, p3, :cond_3

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    invoke-direct {p0, p3, v1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    :cond_3
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "IMG_"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "save bitmap:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v1

    invoke-direct {p0, p3, v3, p4, v1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->t(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "save success!  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result p3

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/utils/b;->g(I)I

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcn/nubia/collage/k;->d(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;JI)Landroid/content/ContentValues;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public r(FFF)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    const-string v1, "AbstractApertureImage"

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a(F)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    :cond_2
    :goto_1
    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lyh setApert "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " bitmapwidth"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h:F

    invoke-virtual {p0, p1, p3, v0, v2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->setParam(Landroid/graphics/Bitmap;FFF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j:I

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "error   setApert bitmap null!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->b:I

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->c:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set over   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method s()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->n:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractApertureImage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to aperture failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract saveParam(Landroid/graphics/Bitmap;FFF)V
.end method

.method abstract setParam(Landroid/graphics/Bitmap;FFF)V
.end method

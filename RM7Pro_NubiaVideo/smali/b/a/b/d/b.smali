.class public Lb/a/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/d/b$a;
    }
.end annotation


# direct methods
.method public static a(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    :cond_0
    new-instance v0, Lb/a/b/d/b$a;

    invoke-direct {v0, p4}, Lb/a/b/d/b$a;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lb/a/b/e/d$d;->b(Lb/a/b/e/d$b;)V

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lb/a/b/d/b;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lb/a/b/d/e;->c(Z)V

    .line 2
    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    new-instance v0, Lb/a/b/d/b$a;

    invoke-direct {v0, p4}, Lb/a/b/d/b$a;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lb/a/b/e/d$d;->b(Lb/a/b/e/d$b;)V

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method public static c(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lb/a/b/d/b;->e(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 6
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lb/a/b/d/b;->a(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    .line 8
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object v1

    iget-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lb/a/b/c/a/d;->f(Landroid/graphics/Bitmap;)Z

    .line 9
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object v0

    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lb/a/b/c/a/d;->f(Landroid/graphics/Bitmap;)Z

    .line 13
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lb/a/b/d/b;->a(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    throw v0
.end method

.method public static d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static e(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lb/a/b/d/b;->b(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 2
    invoke-static {}, Lb/a/b/c/a/d;->c()Lb/a/b/c/a/d;

    move-result-object p0

    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, p2}, Lb/a/b/c/a/d;->b(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

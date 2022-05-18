.class public Lb/a/e/a/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/e/a/d$a;
    }
.end annotation


# instance fields
.field private a:Lb/a/e/a/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lb/a/e/b/d;

.field private f:Landroid/view/Surface;

.field private g:Lb/a/e/a/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/e/a/d;->d:Z

    return-void
.end method

.method private c(Ljava/io/Closeable;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d(F)I
    .locals 1

    float-to-int p1, p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    goto :goto_0

    :cond_1
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private f(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    invoke-virtual {v1, p1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x10e

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0xb4

    :cond_3
    :goto_1
    return v1
.end method

.method private h(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float p2, p2

    div-float/2addr v3, p2

    int-to-float p2, v4

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x0

    iput-boolean p3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0, p2}, Lb/a/e/a/d;->d(F)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v1}, Lb/a/e/a/d;->c(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lb/a/e/a/d;->c(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lb/a/e/a/d;->c(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public e(Landroid/view/Surface;II)V
    .locals 1

    iput-object p1, p0, Lb/a/e/a/d;->f:Landroid/view/Surface;

    new-instance v0, Lb/a/e/a/b;

    invoke-direct {v0, p1, p2, p3}, Lb/a/e/a/b;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lb/a/e/a/d;->e:Lb/a/e/b/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/a/e/b/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public i(Lb/a/e/b/d;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/a/d;->e:Lb/a/e/b/d;

    return-void
.end method

.method public j()V
    .locals 7

    iget-object v0, p0, Lb/a/e/a/d;->g:Lb/a/e/a/d$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/e/a/d;->f:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lb/a/e/a/d$a;->a(Landroid/view/Surface;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/a/e/a/b;->e()V

    iput-object v1, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    iget-boolean v4, p0, Lb/a/e/a/d;->d:Z

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    :try_start_0
    iget-object v4, p0, Lb/a/e/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    invoke-virtual {v5}, Lb/a/e/a/b;->d()I

    move-result v5

    iget-object v6, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    invoke-virtual {v6}, Lb/a/e/a/b;->c()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lb/a/e/a/d;->h(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v4, "ImageRender"

    const-string v5, "Create Bitmap failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lb/a/e/a/d;->f(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    iget-object v4, p0, Lb/a/e/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    iget-object v6, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    invoke-virtual {v6, v5, v4}, Lb/a/e/a/b;->b(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    invoke-virtual {p0, v4}, Lb/a/e/a/d;->g(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    iget-object v0, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lb/a/e/a/b;->e()V

    iput-object v1, p0, Lb/a/e/a/d;->a:Lb/a/e/a/b;

    :cond_9
    iput-boolean v2, p0, Lb/a/e/a/d;->d:Z

    invoke-virtual {p0}, Lb/a/e/a/d;->b()V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/e/a/d;->d:Z

    return-void
.end method

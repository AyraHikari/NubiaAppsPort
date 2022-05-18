.class public Lcn/nubia/video/mediaeditorview/gifmaker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/gifmaker/a$c;,
        Lcn/nubia/video/mediaeditorview/gifmaker/a$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

.field private b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

.field private c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

    .line 4
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e:F

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->f:I

    .line 8
    new-instance p2, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;-><init>(Lcn/nubia/video/mediaeditorview/gifmaker/a;)V

    invoke-direct {p2, p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;-><init>(Ljava/io/InputStream;Lcn/nubia/video/mediaeditorview/gifmaker/b/b;)V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/gifmaker/a;)Lcn/nubia/video/mediaeditorview/gifmaker/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;FFLandroid/graphics/RectF;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->m(F)I

    move-result p2

    .line 3
    invoke-virtual {p0, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->m(F)I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p0, v1, p4}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->f()[I

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->h(Ljava/util/List;Ljava/lang/String;[I)Z

    move-result p2

    .line 7
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p3, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d()Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->h()I

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e:F

    return v0
.end method

.method public h(Ljava/util/List;Ljava/lang/String;[I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "[I)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;

    invoke-direct {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;-><init>()V

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j(Ljava/io/OutputStream;)Z

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->h(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8
    :try_start_0
    aget v5, p3, v2

    invoke-virtual {v0, v5}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->g(I)V

    .line 9
    invoke-virtual {v0, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a(Landroid/graphics/Bitmap;)Z

    .line 10
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

    if-eqz v4, :cond_1

    .line 11
    invoke-interface {v4, v2, v3}, Lcn/nubia/video/mediaeditorview/gifmaker/a$c;->c(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 12
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Lcn/nubia/video/mediaeditorview/gifmaker/a$c;->b(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->d()Z

    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 19
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 21
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 23
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 25
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 26
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->h()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->f:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {v3, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->i(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e:F

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {v4, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public j(Lcn/nubia/video/mediaeditorview/gifmaker/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    return-void
.end method

.method public k(Lcn/nubia/video/mediaeditorview/gifmaker/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->b:Lcn/nubia/video/mediaeditorview/gifmaker/a$c;

    return-void
.end method

.method public l(F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->m(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public m(F)I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->e:F

    div-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->f:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

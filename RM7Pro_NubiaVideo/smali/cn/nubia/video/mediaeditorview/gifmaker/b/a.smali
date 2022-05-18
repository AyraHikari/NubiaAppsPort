.class public Lcn/nubia/video/mediaeditorview/gifmaker/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Ljava/io/OutputStream;

.field protected k:Landroid/graphics/Bitmap;

.field protected l:[B

.field protected m:[B

.field protected n:I

.field protected o:[B

.field protected p:[Z

.field protected q:I

.field protected r:I

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->c:I

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->d:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->e:I

    .line 5
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->g:I

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->h:I

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i:Z

    const/16 v2, 0x100

    new-array v2, v2, [Z

    .line 8
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->p:[Z

    const/4 v2, 0x7

    .line 9
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q:I

    .line 10
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->r:I

    .line 11
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->s:Z

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z

    .line 13
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->u:Z

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->v:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->u:Z

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i(II)V

    .line 4
    :cond_1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->f()V

    .line 6
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b()V

    .line 7
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->m()V

    .line 9
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o()V

    .line 10
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->g:I

    if-ltz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->n()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k()V

    .line 13
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l()V

    .line 14
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o()V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->p()V

    .line 17
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method protected b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    array-length v1, v0

    .line 2
    div-int/lit8 v2, v1, 0x3

    .line 3
    new-array v3, v2, [B

    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->m:[B

    .line 4
    new-instance v3, Lcn/nubia/video/mediaeditorview/gifmaker/b/e;

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->v:I

    invoke-direct {v3, v0, v1, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/b/e;-><init>([BII)V

    .line 5
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/gifmaker/b/e;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 7
    aget-byte v5, v4, v1

    add-int/lit8 v6, v1, 0x2

    .line 8
    aget-byte v7, v4, v6

    aput-byte v7, v4, v1

    .line 9
    aput-byte v5, v4, v6

    .line 10
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->p:[Z

    div-int/lit8 v5, v1, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 11
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v1, v5, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/b/e;->g(III)I

    move-result v1

    .line 12
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->p:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 13
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->m:[B

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    const/16 v0, 0x8

    .line 15
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->n:I

    const/4 v0, 0x7

    .line 16
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q:I

    .line 17
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 18
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->c(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->f:I

    :cond_2
    return-void
.end method

.method protected c(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    const/high16 v4, 0x1000000

    .line 2
    array-length v0, v0

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    sub-int v3, v1, v3

    add-int/lit8 v8, v7, 0x1

    .line 4
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v2, v7

    .line 5
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    sub-int v6, p1, v6

    mul-int/2addr v3, v3

    mul-int/2addr v7, v7

    add-int/2addr v3, v7

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    .line 6
    div-int/lit8 v6, v8, 0x3

    .line 7
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->p:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    if-ge v3, v5, :cond_1

    move v5, v3

    move v4, v6

    :cond_1
    add-int/lit8 v3, v8, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i:Z

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 5
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->s:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    .line 7
    :goto_0
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->f:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    .line 9
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    .line 10
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    .line 11
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->m:[B

    .line 12
    iput-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    .line 13
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->s:Z

    .line 14
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z

    return v2
.end method

.method protected e(Landroid/graphics/Bitmap;)[I
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 3
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    move v3, v6

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v8
.end method

.method protected f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    if-eq v1, v0, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->e(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 9
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 11
    aget v2, v0, v1

    mul-int/lit8 v3, v1, 0x3

    .line 12
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->l:[B

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v2, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 13
    aput-byte v6, v4, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 14
    aput-byte v2, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->h:I

    return-void
.end method

.method public h(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->g:I

    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    .line 2
    iput p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x140

    .line 3
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    :cond_0
    if-ge p2, v0, :cond_1

    const/16 p1, 0xf0

    .line 4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    .line 5
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->u:Z

    return-void
.end method

.method public j(Ljava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->s:Z

    .line 2
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    :try_start_0
    const-string p1, "GIF89a"

    .line 3
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4
    :catch_0
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->i:Z

    return v0
.end method

.method protected k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v1

    .line 5
    :goto_0
    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->r:I

    if-ltz v4, :cond_1

    and-int/lit8 v3, v4, 0x7

    :cond_1
    shl-int/lit8 v1, v3, 0x2

    .line 6
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    or-int/2addr v1, v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->h:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->f:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->c:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->d:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->t:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected m()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 4
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->r(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->g:I

    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->q(I)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->o:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 5

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/d;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->a:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->b:I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->m:[B

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->n:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/b/d;-><init>(II[BI)V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/d;->f(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected r(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/a;->j:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

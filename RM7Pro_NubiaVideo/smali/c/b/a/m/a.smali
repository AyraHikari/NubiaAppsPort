.class public Lc/b/a/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/graphics/Bitmap;

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/b/a/m/a;->c:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/b/a/m/a;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lc/b/a/m/a;->f:I

    .line 5
    iput-boolean v1, p0, Lc/b/a/m/a;->g:Z

    const/16 v2, 0x100

    new-array v2, v2, [Z

    .line 6
    iput-object v2, p0, Lc/b/a/m/a;->n:[Z

    const/4 v2, 0x7

    .line 7
    iput v2, p0, Lc/b/a/m/a;->o:I

    .line 8
    iput v0, p0, Lc/b/a/m/a;->p:I

    .line 9
    iput-boolean v1, p0, Lc/b/a/m/a;->q:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lc/b/a/m/a;->r:Z

    .line 11
    iput-boolean v1, p0, Lc/b/a/m/a;->s:Z

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lc/b/a/m/a;->t:I

    return-void
.end method

.method private b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->j:[B

    array-length v1, v0

    .line 2
    div-int/lit8 v2, v1, 0x3

    .line 3
    new-array v3, v2, [B

    iput-object v3, p0, Lc/b/a/m/a;->k:[B

    .line 4
    new-instance v3, Lc/b/a/m/c;

    iget v4, p0, Lc/b/a/m/a;->t:I

    invoke-direct {v3, v0, v1, v4}, Lc/b/a/m/c;-><init>([BII)V

    .line 5
    invoke-virtual {v3}, Lc/b/a/m/c;->h()[B

    move-result-object v0

    iput-object v0, p0, Lc/b/a/m/a;->m:[B

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v4, p0, Lc/b/a/m/a;->m:[B

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
    iget-object v4, p0, Lc/b/a/m/a;->n:[Z

    div-int/lit8 v5, v1, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_1

    .line 11
    iget-object v5, p0, Lc/b/a/m/a;->j:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v4, v6, v5}, Lc/b/a/m/c;->g(III)I

    move-result v4

    .line 12
    iget-object v5, p0, Lc/b/a/m/a;->n:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 13
    iget-object v5, p0, Lc/b/a/m/a;->k:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lc/b/a/m/a;->j:[B

    const/16 v1, 0x8

    .line 15
    iput v1, p0, Lc/b/a/m/a;->l:I

    const/4 v1, 0x7

    .line 16
    iput v1, p0, Lc/b/a/m/a;->o:I

    .line 17
    iget-object v1, p0, Lc/b/a/m/a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lc/b/a/m/a;->c(I)I

    move-result v0

    iput v0, p0, Lc/b/a/m/a;->d:I

    goto :goto_2

    .line 19
    :cond_2
    iget-boolean v1, p0, Lc/b/a/m/a;->u:Z

    if-eqz v1, :cond_3

    .line 20
    invoke-direct {p0, v0}, Lc/b/a/m/a;->c(I)I

    move-result v0

    iput v0, p0, Lc/b/a/m/a;->d:I

    :cond_3
    :goto_2
    return-void
.end method

.method private c(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->m:[B

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/high16 v2, 0x1000000

    .line 5
    iget-object v3, p0, Lc/b/a/m/a;->m:[B

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    .line 6
    iget-object v6, p0, Lc/b/a/m/a;->m:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v4, v0, v4

    add-int/lit8 v8, v7, 0x1

    .line 7
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v1, v7

    .line 8
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    sub-int v6, p1, v6

    mul-int/2addr v4, v4

    mul-int/2addr v7, v7

    add-int/2addr v4, v7

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    .line 9
    div-int/lit8 v6, v8, 0x3

    .line 10
    iget-object v7, p0, Lc/b/a/m/a;->n:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    if-ge v4, v2, :cond_1

    move v2, v4

    move v5, v6

    :cond_1
    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2
    iget-object v0, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3
    iget v0, p0, Lc/b/a/m/a;->a:I

    if-ne v7, v0, :cond_0

    iget v1, p0, Lc/b/a/m/a;->b:I

    if-eq v8, v1, :cond_1

    .line 4
    :cond_0
    iget v1, p0, Lc/b/a/m/a;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    iput-object v0, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    :cond_1
    mul-int v0, v7, v8

    .line 8
    new-array v9, v0, [I

    .line 9
    iget-object v1, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v1, v0, 0x3

    .line 10
    new-array v1, v1, [B

    iput-object v1, p0, Lc/b/a/m/a;->j:[B

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lc/b/a/m/a;->u:Z

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 12
    aget v5, v9, v2

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 13
    :cond_2
    iget-object v6, p0, Lc/b/a/m/a;->j:[B

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 14
    aput-byte v8, v6, v7

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 15
    aput-byte v5, v6, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x64

    int-to-double v2, v3

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    const/4 v1, 0x1

    .line 16
    :cond_4
    iput-boolean v1, p0, Lc/b/a/m/a;->u:Z

    const-string v0, "AnimatedGifEncoder"

    const/4 v1, 0x3

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got pixels for frame with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "% transparent pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v0, p0, Lc/b/a/m/a;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/b/a/m/a;->u:Z

    if-nez v0, :cond_0

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v1

    .line 5
    :goto_0
    iget v4, p0, Lc/b/a/m/a;->p:I

    if-ltz v4, :cond_1

    and-int/lit8 v3, v4, 0x7

    :cond_1
    shl-int/lit8 v1, v3, 0x2

    .line 6
    iget-object v3, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    or-int/2addr v1, v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lc/b/a/m/a;->f:I

    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 8
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/b/a/m/a;->d:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 3
    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 4
    iget v1, p0, Lc/b/a/m/a;->a:I

    invoke-direct {p0, v1}, Lc/b/a/m/a;->o(I)V

    .line 5
    iget v1, p0, Lc/b/a/m/a;->b:I

    invoke-direct {p0, v1}, Lc/b/a/m/a;->o(I)V

    .line 6
    iget-boolean v1, p0, Lc/b/a/m/a;->r:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/b/a/m/a;->o:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/m/a;->a:I

    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 2
    iget v0, p0, Lc/b/a/m/a;->b:I

    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/b/a/m/a;->o:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 4
    invoke-direct {p0, v0}, Lc/b/a/m/a;->p(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lc/b/a/m/a;->e:I

    invoke-direct {p0, v0}, Lc/b/a/m/a;->o(I)V

    .line 8
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lc/b/a/m/a;->m:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iget-object v0, p0, Lc/b/a/m/a;->m:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    new-instance v0, Lc/b/a/m/b;

    iget v1, p0, Lc/b/a/m/a;->a:I

    iget v2, p0, Lc/b/a/m/a;->b:I

    iget-object v3, p0, Lc/b/a/m/a;->k:[B

    iget v4, p0, Lc/b/a/m/a;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Lc/b/a/m/b;-><init>(II[BI)V

    .line 2
    iget-object v1, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lc/b/a/m/b;->f(Ljava/io/OutputStream;)V

    return-void
.end method

.method private o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    iget-boolean v1, p0, Lc/b/a/m/a;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lc/b/a/m/a;->s:Z

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lc/b/a/m/a;->g(II)V

    .line 4
    :cond_1
    iput-object p1, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    .line 5
    invoke-direct {p0}, Lc/b/a/m/a;->e()V

    .line 6
    invoke-direct {p0}, Lc/b/a/m/a;->b()V

    .line 7
    iget-boolean p1, p0, Lc/b/a/m/a;->r:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Lc/b/a/m/a;->k()V

    .line 9
    invoke-direct {p0}, Lc/b/a/m/a;->m()V

    .line 10
    iget p1, p0, Lc/b/a/m/a;->e:I

    if-ltz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lc/b/a/m/a;->l()V

    .line 12
    :cond_2
    invoke-direct {p0}, Lc/b/a/m/a;->i()V

    .line 13
    invoke-direct {p0}, Lc/b/a/m/a;->j()V

    .line 14
    iget-boolean p1, p0, Lc/b/a/m/a;->r:Z

    if-nez p1, :cond_3

    .line 15
    invoke-direct {p0}, Lc/b/a/m/a;->m()V

    .line 16
    :cond_3
    invoke-direct {p0}, Lc/b/a/m/a;->n()V

    .line 17
    iput-boolean v0, p0, Lc/b/a/m/a;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/b/a/m/a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lc/b/a/m/a;->g:Z

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v2, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 5
    iget-boolean v2, p0, Lc/b/a/m/a;->q:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

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
    iput v1, p0, Lc/b/a/m/a;->d:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    .line 9
    iput-object v3, p0, Lc/b/a/m/a;->i:Landroid/graphics/Bitmap;

    .line 10
    iput-object v3, p0, Lc/b/a/m/a;->j:[B

    .line 11
    iput-object v3, p0, Lc/b/a/m/a;->k:[B

    .line 12
    iput-object v3, p0, Lc/b/a/m/a;->m:[B

    .line 13
    iput-boolean v1, p0, Lc/b/a/m/a;->q:Z

    .line 14
    iput-boolean v0, p0, Lc/b/a/m/a;->r:Z

    return v2
.end method

.method public f(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lc/b/a/m/a;->f:I

    return-void
.end method

.method public g(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/m/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/b/a/m/a;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lc/b/a/m/a;->a:I

    .line 3
    iput p2, p0, Lc/b/a/m/a;->b:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/16 p1, 0x140

    .line 4
    iput p1, p0, Lc/b/a/m/a;->a:I

    :cond_1
    if-ge p2, v0, :cond_2

    const/16 p1, 0xf0

    .line 5
    iput p1, p0, Lc/b/a/m/a;->b:I

    .line 6
    :cond_2
    iput-boolean v0, p0, Lc/b/a/m/a;->s:Z

    return-void
.end method

.method public h(Ljava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/m/a;->q:Z

    .line 2
    iput-object p1, p0, Lc/b/a/m/a;->h:Ljava/io/OutputStream;

    :try_start_0
    const-string p1, "GIF89a"

    .line 3
    invoke-direct {p0, p1}, Lc/b/a/m/a;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4
    :catch_0
    iput-boolean v0, p0, Lc/b/a/m/a;->g:Z

    return v0
.end method

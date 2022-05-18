.class public abstract Lcn/nubia/camera/panorama/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/panorama/PanoPreviewView$a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcn/nubia/camera/panorama/PanoPreviewView;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:I

.field private n:[I

.field private o:Landroid/graphics/Bitmap;

.field private p:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/PanoPreviewView;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/nubia/camera/panorama/f;->a:I

    iput v0, p0, Lcn/nubia/camera/panorama/f;->b:I

    .line 20
    iput v0, p0, Lcn/nubia/camera/panorama/f;->i:I

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcn/nubia/camera/panorama/f;->n:[I

    .line 32
    iput v0, p0, Lcn/nubia/camera/panorama/f;->p:I

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->j:Lcn/nubia/camera/panorama/PanoPreviewView;

    .line 36
    invoke-virtual {p1, p0}, Lcn/nubia/camera/panorama/PanoPreviewView;->setListener(Lcn/nubia/camera/panorama/PanoPreviewView$a;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 228
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    .line 229
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    rem-int/lit16 p1, p1, 0xb4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 234
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->g()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->l()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    goto :goto_1

    .line 237
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->f()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->m()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 240
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->l()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->m()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcn/nubia/camera/panorama/f;->j:Lcn/nubia/camera/panorama/PanoPreviewView;

    iget p1, p1, Lcn/nubia/camera/panorama/PanoPreviewView;->a:I

    mul-int/lit8 p1, p1, 0x8

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 14

    .line 181
    iget v0, p0, Lcn/nubia/camera/panorama/f;->b:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/camera/panorama/f;->a:I

    if-eqz v0, :cond_5

    iget v1, p0, Lcn/nubia/camera/panorama/f;->f:I

    if-eqz v1, :cond_5

    iget v2, p0, Lcn/nubia/camera/panorama/f;->e:I

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x8

    .line 186
    invoke-virtual {p0, v1, v0, v2}, Lcn/nubia/camera/panorama/f;->a(III)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/panorama/f;->m:I

    if-nez v0, :cond_1

    .line 188
    iput v1, p0, Lcn/nubia/camera/panorama/f;->m:I

    :cond_1
    const-string v0, "PanoDraw"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rgbFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/panorama/f;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mPreviewW, mPreviewH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/panorama/f;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/panorama/f;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mViewW, mViewH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/panorama/f;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/panorama/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p0, Lcn/nubia/camera/panorama/f;->i:I

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    const/16 v2, 0xa

    if-eqz v0, :cond_3

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_3

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 201
    :cond_2
    iget v0, p0, Lcn/nubia/camera/panorama/f;->e:I

    iget v2, p0, Lcn/nubia/camera/panorama/f;->m:I

    div-int/2addr v0, v2

    .line 202
    iget v3, p0, Lcn/nubia/camera/panorama/f;->f:I

    div-int v2, v3, v2

    goto :goto_0

    .line 196
    :cond_3
    iget v0, p0, Lcn/nubia/camera/panorama/f;->f:I

    iget v2, p0, Lcn/nubia/camera/panorama/f;->m:I

    div-int/2addr v0, v2

    .line 197
    iget v3, p0, Lcn/nubia/camera/panorama/f;->e:I

    div-int v2, v3, v2

    :goto_0
    move v13, v2

    move v2, v0

    move v0, v13

    .line 207
    :goto_1
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 209
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    .line 210
    iput-object v3, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    .line 213
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget v3, p0, Lcn/nubia/camera/panorama/f;->a:I

    div-int/2addr v3, v1

    iput v3, p0, Lcn/nubia/camera/panorama/f;->g:I

    .line 217
    iget v3, p0, Lcn/nubia/camera/panorama/f;->b:I

    div-int/2addr v3, v1

    iput v3, p0, Lcn/nubia/camera/panorama/f;->h:I

    .line 218
    new-instance v1, Landroid/graphics/Rect;

    mul-int/lit8 v2, v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    .line 219
    iget v0, p0, Lcn/nubia/camera/panorama/f;->i:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/f;->a(I)V

    .line 220
    iget v0, p0, Lcn/nubia/camera/panorama/f;->i:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/f;->c(I)Landroid/graphics/Rect;

    .line 221
    iget-object v4, p0, Lcn/nubia/camera/panorama/f;->j:Lcn/nubia/camera/panorama/PanoPreviewView;

    iget-object v5, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/camera/panorama/f;->l:Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/camera/panorama/f;->g:I

    iget v8, p0, Lcn/nubia/camera/panorama/f;->h:I

    iget v9, p0, Lcn/nubia/camera/panorama/f;->a:I

    iget v10, p0, Lcn/nubia/camera/panorama/f;->b:I

    iget v11, p0, Lcn/nubia/camera/panorama/f;->e:I

    iget v12, p0, Lcn/nubia/camera/panorama/f;->f:I

    invoke-virtual/range {v4 .. v12}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->j:Lcn/nubia/camera/panorama/PanoPreviewView;

    iget-object v1, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/camera/panorama/f;->i:I

    iget v4, p0, Lcn/nubia/camera/panorama/f;->p:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Bitmap;III)V

    return-void

    :catchall_0
    move-exception v0

    .line 214
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method private c(I)Landroid/graphics/Rect;
    .locals 6

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 269
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 253
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->m()I

    move-result v1

    .line 254
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    sub-int v4, v0, v3

    div-int/lit8 p1, p1, 0x2

    sub-int v5, v1, p1

    add-int/2addr v0, v3

    add-int/2addr v1, p1

    invoke-direct {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v2

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->m()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    mul-int/lit8 p1, p1, 0x2

    .line 266
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    move-object p1, v0

    goto :goto_0

    .line 257
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->l()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    .line 260
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->m()I

    move-result v2

    .line 261
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    sub-int v4, v1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int v5, v2, p1

    add-int/2addr v1, v0

    add-int/2addr v2, p1

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v3

    .line 272
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->l:Landroid/graphics/Rect;

    return-object p1
.end method


# virtual methods
.method protected a(III)I
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    mul-float/2addr p3, p1

    int-to-float p1, p2

    div-float/2addr p3, p1

    .line 277
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected a()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->o()Lcn/nubia/camera/panorama/PanoPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/PanoPreviewView;->c()V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 40
    iput p2, p0, Lcn/nubia/camera/panorama/f;->f:I

    .line 41
    iput p1, p0, Lcn/nubia/camera/panorama/f;->e:I

    .line 42
    iput p3, p0, Lcn/nubia/camera/panorama/f;->c:I

    .line 43
    iput p4, p0, Lcn/nubia/camera/panorama/f;->d:I

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/panorama/f;->b()V

    return-void
.end method

.method public a([BII)V
    .locals 10

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/panorama/f;->n:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int v2, v0, v9

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "PanoDraw"

    const-string v2, "Create rgb_data"

    .line 67
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v1, v0, v9

    .line 68
    new-array v1, v1, [I

    iput-object v1, p0, Lcn/nubia/camera/panorama/f;->n:[I

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->n()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v8, v1, 0x168

    const/4 v4, 0x0

    .line 71
    iget-object v5, p0, Lcn/nubia/camera/panorama/f;->n:[I

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->q()F

    move-result v1

    float-to-int v7, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v0

    .line 71
    invoke-static/range {v1 .. v8}, Lcn/nubia/algorithm/utils/PanoramaHelper;->yuv2rgb([BIII[IIII)I

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 82
    monitor-exit p0

    return-void

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/panorama/f;->n:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->o()Lcn/nubia/camera/panorama/PanoPreviewView;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->r()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->n()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/f;->s()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Bitmap;III)V

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 64
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a([I)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcn/nubia/camera/panorama/f;->n:[I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcn/nubia/camera/panorama/f;->p:I

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 175
    iput p1, p0, Lcn/nubia/camera/panorama/f;->a:I

    .line 176
    iput p2, p0, Lcn/nubia/camera/panorama/f;->b:I

    .line 177
    invoke-direct {p0}, Lcn/nubia/camera/panorama/f;->b()V

    return-void
.end method

.method public f()I
    .locals 1

    .line 102
    iget v0, p0, Lcn/nubia/camera/panorama/f;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 106
    iget v0, p0, Lcn/nubia/camera/panorama/f;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 110
    iget v0, p0, Lcn/nubia/camera/panorama/f;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 114
    iget v0, p0, Lcn/nubia/camera/panorama/f;->d:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 118
    iget v0, p0, Lcn/nubia/camera/panorama/f;->e:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 122
    iget v0, p0, Lcn/nubia/camera/panorama/f;->f:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 126
    iget v0, p0, Lcn/nubia/camera/panorama/f;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 130
    iget v0, p0, Lcn/nubia/camera/panorama/f;->h:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 134
    iget v0, p0, Lcn/nubia/camera/panorama/f;->i:I

    return v0
.end method

.method public o()Lcn/nubia/camera/panorama/PanoPreviewView;
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->j:Lcn/nubia/camera/panorama/PanoPreviewView;

    return-object v0
.end method

.method public p()Landroid/graphics/Rect;
    .locals 1

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method public q()F
    .locals 1

    .line 150
    iget v0, p0, Lcn/nubia/camera/panorama/f;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public r()Landroid/graphics/Bitmap;
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 158
    iget v0, p0, Lcn/nubia/camera/panorama/f;->p:I

    return v0
.end method

.method public t()[I
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/panorama/f;->n:[I

    return-object v0
.end method

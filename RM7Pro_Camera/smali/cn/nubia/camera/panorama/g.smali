.class public Lcn/nubia/camera/panorama/g;
.super Lcn/nubia/camera/panorama/f;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/panorama/PanoPreviewView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/f;-><init>(Lcn/nubia/camera/panorama/PanoPreviewView;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4

    .line 112
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 114
    iget p1, p2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 115
    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 116
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 117
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 p3, 0x3

    const/4 v3, 0x2

    if-eq p4, p3, :cond_2

    const/4 p3, 0x4

    if-eq p4, p3, :cond_1

    const/4 p3, 0x5

    if-eq p4, p3, :cond_0

    neg-int p1, p1

    .line 139
    div-int/2addr p1, v3

    mul-int/lit8 v0, v0, -0x2

    .line 141
    invoke-virtual {p0, v3}, Lcn/nubia/camera/panorama/g;->b(I)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, -0x2

    neg-int p3, v0

    .line 129
    div-int/lit8 v0, p3, 0x2

    .line 130
    invoke-virtual {p0, v2}, Lcn/nubia/camera/panorama/g;->b(I)V

    goto :goto_0

    :cond_1
    neg-int p3, v0

    .line 124
    div-int/lit8 v0, p3, 0x2

    const/4 p3, 0x1

    .line 125
    invoke-virtual {p0, p3}, Lcn/nubia/camera/panorama/g;->b(I)V

    goto :goto_0

    :cond_2
    neg-int p1, p1

    .line 133
    div-int/2addr p1, v3

    .line 135
    invoke-virtual {p0, p3}, Lcn/nubia/camera/panorama/g;->b(I)V

    .line 144
    :goto_0
    iget p3, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p3, p1

    iget p1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->n()I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->n()I

    move-result p1

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    goto :goto_2

    .line 148
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    .line 154
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    sub-int p4, p2, p1

    sub-int v0, p3, p1

    add-int/2addr p2, p1

    add-int/2addr p3, p1

    .line 156
    invoke-virtual {v1, p4, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V
    .locals 6

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/panorama/g;->a:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->p()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/nubia/camera/panorama/g;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/g;->b:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->o()Lcn/nubia/camera/panorama/PanoPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/panorama/g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->n()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->s()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/panorama/g;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Bitmap;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public a([BII)V
    .locals 10

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->t()[I

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->t()[I

    move-result-object v1

    array-length v1, v1

    mul-int v2, v0, v9

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int v1, v0, v9

    .line 40
    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lcn/nubia/camera/panorama/g;->a([I)V

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->n()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v8, v1, 0x168

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->t()[I

    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->q()F

    move-result v1

    float-to-int v7, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v0

    .line 43
    invoke-static/range {v1 .. v8}, Lcn/nubia/algorithm/utils/PanoramaHelper;->yuv2rgb([BIII[IIII)I

    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 54
    monitor-exit p0

    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->t()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->o()Lcn/nubia/camera/panorama/PanoPreviewView;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->r()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->n()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/g;->s()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcn/nubia/camera/panorama/PanoPreviewView;->a(Landroid/graphics/Bitmap;III)V

    .line 66
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

    .line 38
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

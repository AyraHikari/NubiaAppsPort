.class public Lcn/nubia/choosephoto/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private i:F

.field private j:F

.field private k:[I

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x42

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->a:I

    const/16 v1, 0x47

    iput v1, p0, Lcn/nubia/choosephoto/b/b;->b:I

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->d:I

    const/16 v0, 0x37

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->g:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->i:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcn/nubia/choosephoto/b/b;->j:F

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/choosephoto/b/b;->n:Z

    return-void
.end method

.method private b()V
    .locals 6

    iget-boolean v0, p0, Lcn/nubia/choosephoto/b/b;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->a:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->a:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->b:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->b:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->c:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->c:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->d:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->d:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->e:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->e:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->f:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->f:I

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->g:I

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/choosephoto/b/b;->g:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xff

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v4, p0, Lcn/nubia/choosephoto/b/b;->i:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v1, v2

    const/4 v2, 0x2

    iget v4, p0, Lcn/nubia/choosephoto/b/b;->j:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v1, v2

    iput-object v1, p0, Lcn/nubia/choosephoto/b/b;->k:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/choosephoto/b/b;->h:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/choosephoto/b/b;->c:I

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/choosephoto/b/b;->d:I

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcn/nubia/choosephoto/b/b;->c:I

    iget v2, p0, Lcn/nubia/choosephoto/b/b;->d:I

    sub-int v4, v1, v2

    iget v5, p0, Lcn/nubia/choosephoto/b/b;->f:I

    add-int/2addr v4, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/choosephoto/b/b;->l:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcn/nubia/choosephoto/b/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/choosephoto/b/b;->e:I

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcn/nubia/choosephoto/b/b;->c:I

    iget v2, p0, Lcn/nubia/choosephoto/b/b;->e:I

    sub-int v4, v1, v2

    iget v5, p0, Lcn/nubia/choosephoto/b/b;->g:I

    add-int/2addr v4, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/choosephoto/b/b;->l:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcn/nubia/choosephoto/b/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/choosephoto/b/b;->m:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcn/nubia/choosephoto/b/b;->n:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6

    invoke-direct {p0}, Lcn/nubia/choosephoto/b/b;->b()V

    iget v0, p0, Lcn/nubia/choosephoto/b/b;->b:I

    iget v1, p0, Lcn/nubia/choosephoto/b/b;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcn/nubia/choosephoto/b/b;->m:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/nubia/choosephoto/b/b;->k:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/choosephoto/b/b;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/choosephoto/b/b;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    return-object v0
.end method

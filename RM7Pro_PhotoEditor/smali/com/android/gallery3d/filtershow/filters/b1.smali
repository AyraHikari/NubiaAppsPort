.class public Lcom/android/gallery3d/filtershow/filters/b1;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# static fields
.field private static final d:I


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/f0;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/filters/b1;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->a:Lcom/android/gallery3d/filtershow/filters/f0;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->c:Landroid/graphics/Typeface;

    const-string v0, "Image Word"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/youyuan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->c:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/n;->o()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->m0()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f0;->z0()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 p2, 0x2

    new-array v0, p2, [F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f0;->o0()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f0;->p0()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f0;->t0()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/f0;->s0()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f0;->q0()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/b1;->f(F)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->l0()F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v2, p2

    neg-int p2, v2

    int-to-float p2, p2

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private f(F)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/b1;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->h()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/filtershow/filters/b1;->d(Landroid/graphics/Canvas;F)V

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->v0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V0()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object p2

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p3, p2}, Lcom/android/gallery3d/filtershow/filters/b1;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public d(Landroid/graphics/Canvas;F)V
    .locals 12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/b1;->c:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/youyuan.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "PhotoEditor"

    const-string v2, "ImageFilterWord drawBubbleWords fsa null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/f0;->x0()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f0;->y0()Lcom/android/gallery3d/filtershow/words/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v4

    if-ne v1, v4, :cond_2

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v6, v6

    invoke-static {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    int-to-float v4, v4

    int-to-float v6, v6

    int-to-float v5, v5

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v5, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/words/c;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/words/c;->a()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float v7, v4, p2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v9, v5, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v10, v2, p2

    sget v2, Lcom/android/gallery3d/filtershow/filters/b1;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    new-instance p2, Lcom/android/gallery3d/filtershow/words/d;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v6

    add-float v8, v4, v2

    move-object v5, p2

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/gallery3d/filtershow/words/d;-><init>(Ljava/lang/String;FFFFLandroid/graphics/Canvas;)V

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/words/d;->d(Landroid/graphics/Paint;)V

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/words/d;->b(I)V

    return-void
.end method

.method public freeResources()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/b1;->g()Lcom/android/gallery3d/filtershow/filters/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/n;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/n;->e()V

    :cond_0
    return-void
.end method

.method public g()Lcom/android/gallery3d/filtershow/filters/f0;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/b1;->a:Lcom/android/gallery3d/filtershow/filters/f0;

    return-object v0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f0;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/b1;->a:Lcom/android/gallery3d/filtershow/filters/f0;

    :cond_0
    return-void
.end method

.class public Lcom/android/gallery3d/filtershow/category/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/pipeline/m;


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/x;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/widget/ArrayAdapter;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/a;->f:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/a;->g:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/a;->h:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/a;->k:Z

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/a;->l:I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/category/a;->s(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E1(Lcom/android/gallery3d/filtershow/category/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/category/a;->q(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {p0, p4}, Lcom/android/gallery3d/filtershow/category/a;->r(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    iput-boolean p4, p0, Lcom/android/gallery3d/filtershow/category/a;->k:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060017

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/a;->l:I

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v2, v4, :cond_0

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/a;->l:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    :cond_0
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, p1, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private l(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/a;->j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v1, p1, p2, v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/l;->l(Landroid/content/Context;IILcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/pipeline/m;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/a;->c()V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->N()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/x;->M(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/category/a;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->e:Landroid/widget/ArrayAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/a;->k:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->W()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public h()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/a;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/a;->g:I

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/a;->f:Z

    return v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public n(Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->e:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method public o(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p2

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/a;->h:I

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->Y(I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/a;->d:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/gallery3d/filtershow/category/a;->h:I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->N()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/a;->j:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/filters/x;->M(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->i:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/a;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/category/a;->l(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/a;->f:Z

    return-void
.end method

.method public q(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->a:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/a;->b:Ljava/lang/String;

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/a;->h:I

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/a;->g:I

    return-void
.end method

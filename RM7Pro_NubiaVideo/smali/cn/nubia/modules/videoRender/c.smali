.class public Lcn/nubia/modules/videoRender/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/b;


# instance fields
.field private a:Lcn/nubia/modules/videoRender/b$b;

.field protected b:Landroid/view/Surface;

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/c/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/c/a/g/c;

.field private h:Lc/c/a/c;

.field private i:Landroid/view/Surface;

.field private j:Lb/a/a/c/m;

.field private k:I

.field private l:I

.field private m:F

.field private n:Lcn/nubia/modules/videoRender/b$a;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lc/c/a/g/a;

    invoke-direct {p4}, Lc/c/a/g/a;-><init>()V

    iput-object p4, p0, Lcn/nubia/modules/videoRender/c;->g:Lc/c/a/g/c;

    const/4 p4, 0x0

    .line 3
    iput-object p4, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    .line 4
    iput-object p4, p0, Lcn/nubia/modules/videoRender/c;->i:Landroid/view/Surface;

    .line 5
    iput-object p4, p0, Lcn/nubia/modules/videoRender/c;->j:Lb/a/a/c/m;

    .line 6
    iput-object p4, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    .line 7
    iput p1, p0, Lcn/nubia/modules/videoRender/c;->k:I

    .line 8
    iput p2, p0, Lcn/nubia/modules/videoRender/c;->l:I

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 10
    iput p1, p0, Lcn/nubia/modules/videoRender/c;->m:F

    .line 11
    iget p1, p0, Lcn/nubia/modules/videoRender/c;->k:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/modules/videoRender/c;->c:F

    .line 12
    iget p1, p0, Lcn/nubia/modules/videoRender/c;->l:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/modules/videoRender/c;->d:F

    return-void
.end method

.method static synthetic b(Lcn/nubia/modules/videoRender/c;Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/modules/videoRender/c;->j(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/modules/videoRender/c;)Lb/a/a/c/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/c;->j:Lb/a/a/c/m;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/modules/videoRender/c;)Lc/c/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/modules/videoRender/c;)Lcn/nubia/modules/videoRender/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/c;->a:Lcn/nubia/modules/videoRender/b$b;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/modules/videoRender/c;->k:I

    .line 2
    iget v1, p0, Lcn/nubia/modules/videoRender/c;->l:I

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTextureView mRecorder start width is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "llw"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Lcn/nubia/modules/videoRender/c$a;

    iget-object v3, p0, Lcn/nubia/modules/videoRender/c;->i:Landroid/view/Surface;

    invoke-direct {v2, p0, v0, v1, v3}, Lcn/nubia/modules/videoRender/c$a;-><init>(Lcn/nubia/modules/videoRender/c;IILjava/lang/Object;)V

    iput-object v2, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    .line 5
    new-instance v0, Lcn/nubia/modules/videoRender/c$b;

    invoke-direct {v0, p0}, Lcn/nubia/modules/videoRender/c$b;-><init>(Lcn/nubia/modules/videoRender/c;)V

    invoke-virtual {v2, v0}, Lc/c/a/c;->o(Lc/c/a/f/a/d$b;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lc/c/a/c;->p()V

    .line 8
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    invoke-virtual {v0}, Lc/c/a/c;->k()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/nubia/modules/videoRender/c;->getTextFilterSequences()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/c/a/f;

    invoke-virtual {v1}, Lb/a/c/a/f;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private j(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lc/c/a/b;->b()V

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->b:F

    iget v0, v0, Lcn/nubia/modules/videoRender/b$a;->c:F

    invoke-interface {p1, v1, v0}, Lc/c/a/b;->c(FF)V

    .line 4
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    iget v0, v0, Lcn/nubia/modules/videoRender/b$a;->e:F

    iget v1, p0, Lcn/nubia/modules/videoRender/c;->c:F

    iget v2, p0, Lcn/nubia/modules/videoRender/c;->d:F

    invoke-interface {p1, v0, v1, v2}, Lc/c/a/b;->k(FFF)V

    .line 5
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    iget v0, v0, Lcn/nubia/modules/videoRender/b$a;->d:F

    iget v1, p0, Lcn/nubia/modules/videoRender/c;->c:F

    iget v2, p0, Lcn/nubia/modules/videoRender/c;->d:F

    invoke-interface {p1, v0, v0, v1, v2}, Lc/c/a/b;->f(FFFF)V

    .line 6
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    iget-object v1, v0, Lcn/nubia/modules/videoRender/b$a;->h:Landroid/graphics/RectF;

    .line 7
    iget v0, v0, Lcn/nubia/modules/videoRender/b$a;->a:I

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p3, v2}, Lc/c/a/e/i;->s(Z)V

    .line 9
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-int v5, v0

    iget v0, v1, Landroid/graphics/RectF;->top:F

    float-to-int v6, v0

    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v7, v0

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v0

    iget-object v9, p0, Lcn/nubia/modules/videoRender/c;->g:Lc/c/a/g/c;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-interface/range {v2 .. v9}, Lc/c/a/b;->j(Lc/c/a/e/a;Landroid/graphics/SurfaceTexture;IIIILc/c/a/g/c;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 10
    iget-object p2, p0, Lcn/nubia/modules/videoRender/c;->e:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p2, p0, Lcn/nubia/modules/videoRender/c;->e:Landroid/graphics/Bitmap;

    invoke-interface {p1, p2}, Lc/c/a/b;->e(Landroid/graphics/Bitmap;)V

    .line 12
    iget-object v3, p0, Lcn/nubia/modules/videoRender/c;->e:Landroid/graphics/Bitmap;

    iget p2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, p2

    iget p3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v5, p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    float-to-int p2, p2

    sub-int v6, v0, p2

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    float-to-int p3, p3

    sub-int v7, p2, p3

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lc/c/a/b;->i(Landroid/graphics/Bitmap;IIII)V

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcn/nubia/modules/videoRender/c;->e:Landroid/graphics/Bitmap;

    .line 14
    :cond_1
    :goto_0
    iget-object p2, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 15
    :goto_1
    iget-object p3, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 16
    iget-object p3, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/a/c/a/f;

    invoke-virtual {p3}, Lb/a/c/a/f;->c()F

    move-result p3

    .line 17
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/a/f;

    invoke-virtual {v0}, Lb/a/c/a/f;->b()F

    move-result v0

    .line 18
    iget-object v1, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/c/a/f;

    invoke-virtual {v1}, Lb/a/c/a/f;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 21
    new-instance v4, Landroid/graphics/Rect;

    float-to-int p3, p3

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-direct {v4, p3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_2

    .line 23
    invoke-interface {p1, v3}, Lc/c/a/b;->e(Landroid/graphics/Bitmap;)V

    .line 24
    iget p3, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, p3

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v5

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v2 .. v7}, Lc/c/a/b;->i(Landroid/graphics/Bitmap;IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 25
    :cond_3
    invoke-interface {p1}, Lc/c/a/b;->a()V

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/c;->j()V

    .line 3
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    invoke-virtual {v0}, Lc/c/a/c;->f()V

    .line 4
    iput-object v1, p0, Lcn/nubia/modules/videoRender/c;->h:Lc/c/a/c;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->b:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 7
    iput-object v1, p0, Lcn/nubia/modules/videoRender/c;->b:Landroid/view/Surface;

    .line 8
    :cond_1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/c;->i()V

    return-void
.end method

.method public f(Lcn/nubia/modules/videoRender/e/d;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->g:Lc/c/a/g/c;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcn/nubia/modules/videoRender/e/l;

    invoke-direct {p1}, Lcn/nubia/modules/videoRender/e/l;-><init>()V

    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->g:Lc/c/a/g/c;

    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/modules/videoRender/c;->l:I

    return v0
.end method

.method public getProduceSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextFilterSequences()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/a/c/a/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewEditorMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/modules/videoRender/c;->k:I

    return v0
.end method

.method public k(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->i:Landroid/view/Surface;

    .line 2
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/c;->h()V

    return-void
.end method

.method public l(Lb/a/a/c/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->j:Lb/a/a/c/m;

    return-void
.end method

.method public setCropRectData(Lcn/nubia/modules/videoRender/b$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->n:Lcn/nubia/modules/videoRender/b$a;

    .line 2
    iget v0, p1, Lcn/nubia/modules/videoRender/b$a;->b:F

    iget v1, p0, Lcn/nubia/modules/videoRender/c;->m:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcn/nubia/modules/videoRender/b$a;->b:F

    .line 3
    iget v0, p1, Lcn/nubia/modules/videoRender/b$a;->c:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcn/nubia/modules/videoRender/b$a;->c:F

    .line 4
    iget v0, p0, Lcn/nubia/modules/videoRender/c;->k:I

    iget v1, p0, Lcn/nubia/modules/videoRender/c;->l:I

    invoke-static {v0, v1, p1}, Lcn/nubia/modules/videoRender/d;->c(IILcn/nubia/modules/videoRender/b$a;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/modules/videoRender/b$a;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public setSurfaceAvailableListener(Lcn/nubia/modules/videoRender/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c;->a:Lcn/nubia/modules/videoRender/b$b;

    return-void
.end method

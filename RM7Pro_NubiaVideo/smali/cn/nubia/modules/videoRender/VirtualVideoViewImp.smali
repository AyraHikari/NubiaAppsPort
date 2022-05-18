.class public Lcn/nubia/modules/videoRender/VirtualVideoViewImp;
.super Lc/c/a/f/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;,
        Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;,
        Lcn/nubia/modules/videoRender/VirtualVideoViewImp$d;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcn/nubia/modules/videoRender/b$a;

.field private C:Lcn/nubia/modules/videoRender/d;

.field private D:Landroid/view/ScaleGestureDetector;

.field private E:Lc/a/a/a/c;

.field private F:Lc/a/a/a/b;

.field private o:Lc/c/a/g/c;

.field private p:Lcn/nubia/modules/videoRender/b$b;

.field private q:Lcn/nubia/modules/videoRender/a$a;

.field protected r:Landroid/view/Surface;

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/f/a/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lc/c/a/g/a;

    invoke-direct {p1}, Lc/c/a/g/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->u:F

    .line 4
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->v:F

    .line 5
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->w:F

    .line 6
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->x:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->y:Z

    .line 8
    iput-boolean p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B:Lcn/nubia/modules/videoRender/b$a;

    return-void
.end method

.method static synthetic A(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->v:F

    return p0
.end method

.method static synthetic B(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->v:F

    return p1
.end method

.method static synthetic C(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->x:F

    return p0
.end method

.method static synthetic D(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->x:F

    return p1
.end method

.method static synthetic E(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;DDD)D
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->Q(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic F(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;DDD)D
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->P(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic G(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z:Z

    return p0
.end method

.method static synthetic H(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z:Z

    return p1
.end method

.method static synthetic I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B:Lcn/nubia/modules/videoRender/b$a;

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    return-object p0
.end method

.method static synthetic K(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->p:Lcn/nubia/modules/videoRender/b$b;

    return-object p0
.end method

.method static synthetic L(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->y:Z

    return p0
.end method

.method static synthetic M(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->S()V

    return-void
.end method

.method static synthetic N(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->u:F

    return p0
.end method

.method static synthetic O(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->u:F

    return p1
.end method

.method private P(DDD)D
    .locals 4

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2
    invoke-static {p5, p6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p5

    div-double/2addr p1, p3

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    sub-double p3, p5, p1

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v2, p5

    const-wide/high16 p5, 0x4008000000000000L    # 3.0

    mul-double/2addr p1, p5

    sub-double/2addr v2, p1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpl-double p1, p1, p3

    if-lez p1, :cond_0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    :cond_0
    return-wide p3
.end method

.method private Q(DDD)D
    .locals 4

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2
    invoke-static {p5, p6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p5

    div-double/2addr p1, p3

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    sub-double p3, p5, p1

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v2, p5

    const-wide/high16 p5, 0x4008000000000000L    # 3.0

    mul-double/2addr p1, p5

    sub-double/2addr v2, p1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpl-double p1, p1, p3

    if-lez p1, :cond_0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    :cond_0
    return-wide p3
.end method

.method private R()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    invoke-direct {v0, p0, p0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lc/c/a/f/a/e;)V

    invoke-virtual {p0, v0}, Lc/c/a/f/a/e;->setOnSurfaceTextureSet(Lc/c/a/f/a/e$b;)V

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->q:Lcn/nubia/modules/videoRender/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcn/nubia/modules/videoRender/d;->b()Lcn/nubia/modules/videoRender/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/modules/videoRender/a$a;->a(Lcn/nubia/modules/videoRender/b$a;)V

    :cond_0
    return-void
.end method

.method private T(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lc/c/a/b;->b()V

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    invoke-virtual {v0}, Lcn/nubia/modules/videoRender/d;->b()Lcn/nubia/modules/videoRender/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->b:F

    iget v2, v0, Lcn/nubia/modules/videoRender/b$a;->c:F

    invoke-interface {p1, v1, v2}, Lc/c/a/b;->c(FF)V

    .line 4
    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->e:F

    iget v2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->s:F

    iget v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->t:F

    invoke-interface {p1, v1, v2, v3}, Lc/c/a/b;->k(FFF)V

    .line 5
    iget v1, v0, Lcn/nubia/modules/videoRender/b$a;->d:F

    iget v2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->s:F

    iget v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->t:F

    invoke-interface {p1, v1, v1, v2, v3}, Lc/c/a/b;->f(FFFF)V

    .line 6
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

    iget-object v9, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-interface/range {v2 .. v9}, Lc/c/a/b;->j(Lc/c/a/e/a;Landroid/graphics/SurfaceTexture;IIIILc/c/a/g/c;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 10
    iget-object p2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A:Landroid/graphics/Bitmap;

    invoke-interface {p1, p2}, Lc/c/a/b;->e(Landroid/graphics/Bitmap;)V

    .line 12
    iget-object v3, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->A:Landroid/graphics/Bitmap;

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

    iget-object v8, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lc/c/a/b;->l(Landroid/graphics/Bitmap;IIIILc/c/a/g/c;)V

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p1}, Lc/c/a/b;->a()V

    return-void
.end method

.method static synthetic y(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->w:F

    return p0
.end method

.method static synthetic z(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->w:F

    return p1
.end method


# virtual methods
.method public a(IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->s:F

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->t:F

    .line 3
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcn/nubia/modules/videoRender/d;->h(II)V

    .line 5
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    invoke-virtual {p1}, Lcn/nubia/modules/videoRender/d;->b()Lcn/nubia/modules/videoRender/b$a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B:Lcn/nubia/modules/videoRender/b$a;

    .line 6
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->S()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/d;->c()V

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->r:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->r:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public f(Lcn/nubia/modules/videoRender/e/d;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    invoke-interface {v0}, Lc/c/a/g/c;->a()V

    .line 2
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcn/nubia/modules/videoRender/e/l;

    invoke-direct {p1}, Lcn/nubia/modules/videoRender/e/l;-><init>()V

    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->o:Lc/c/a/g/c;

    :goto_0
    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    if-nez p1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lc/c/a/f/a/c;->l()V

    :cond_2
    return-void
.end method

.method public getPositionController()Lcn/nubia/modules/videoRender/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    return-object v0
.end method

.method public getProduceSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->r:Landroid/view/Surface;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewEditorMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->y:Z

    return v0
.end method

.method protected j()V
    .locals 4

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/c;->j()V

    .line 2
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$d;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->D:Landroid/view/ScaleGestureDetector;

    .line 3
    new-instance v0, Lc/a/a/a/c;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;

    invoke-direct {v2, p0, v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V

    invoke-direct {v0, v1, v2}, Lc/a/a/a/c;-><init>(Landroid/content/Context;Lc/a/a/a/c$a;)V

    iput-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->E:Lc/a/a/a/c;

    .line 4
    new-instance v0, Lc/a/a/a/b;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;

    invoke-direct {v2, p0, v3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$b;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V

    invoke-direct {v0, v1, v2}, Lc/a/a/a/b;-><init>(Landroid/content/Context;Lc/a/a/a/b$a;)V

    iput-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->F:Lc/a/a/a/b;

    .line 5
    invoke-direct {p0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->R()V

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/c;->k()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->D:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->E:Lc/a/a/a/c;

    invoke-virtual {v0, p1}, Lc/a/a/a/a;->c(Landroid/view/MotionEvent;)Z

    .line 3
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->F:Lc/a/a/a/b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a;->c(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/d;->p()V

    return-void
.end method

.method public setCropRectData(Lcn/nubia/modules/videoRender/b$a;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z:Z

    .line 2
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->B:Lcn/nubia/modules/videoRender/b$a;

    .line 3
    iget v1, p1, Lcn/nubia/modules/videoRender/b$a;->a:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->z:Z

    .line 5
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    invoke-virtual {v0, p1}, Lcn/nubia/modules/videoRender/d;->g(Lcn/nubia/modules/videoRender/b$a;)V

    :cond_0
    return-void
.end method

.method public setRenderRectListener(Lcn/nubia/modules/videoRender/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->q:Lcn/nubia/modules/videoRender/a$a;

    return-void
.end method

.method public setSurfaceAvailableListener(Lcn/nubia/modules/videoRender/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->p:Lcn/nubia/modules/videoRender/b$b;

    return-void
.end method

.method public setViewEditorMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->y:Z

    return-void
.end method

.method protected x(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;Lc/c/a/e/a;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcn/nubia/modules/videoRender/d;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    invoke-direct {p4, p5, v0}, Lcn/nubia/modules/videoRender/d;-><init>(II)V

    iput-object p4, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->C:Lcn/nubia/modules/videoRender/d;

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->T(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V

    return-void
.end method

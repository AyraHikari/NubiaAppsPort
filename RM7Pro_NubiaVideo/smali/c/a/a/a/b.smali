.class public Lc/a/a/a/b;
.super Lc/a/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/b$b;,
        Lc/a/a/a/b$a;
    }
.end annotation


# static fields
.field private static final l:Landroid/graphics/PointF;


# instance fields
.field private final g:Lc/a/a/a/b$a;

.field private h:Landroid/graphics/PointF;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/PointF;

.field private k:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lc/a/a/a/b;->l:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/a/a/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lc/a/a/a/b;->j:Landroid/graphics/PointF;

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lc/a/a/a/b;->k:Landroid/graphics/PointF;

    .line 4
    iput-object p2, p0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    return-void
.end method

.method private f(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v0, v0

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method


# virtual methods
.method protected a(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0, p2}, Lc/a/a/a/b;->e(Landroid/view/MotionEvent;)V

    .line 3
    iget p1, p0, Lc/a/a/a/a;->e:F

    iget v0, p0, Lc/a/a/a/a;->f:F

    div-float/2addr p1, v0

    const v0, 0x3f2b851f    # 0.67f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 4
    iget-object p1, p0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    invoke-interface {p1, p0}, Lc/a/a/a/b$a;->a(Lc/a/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    invoke-interface {p1, p0}, Lc/a/a/a/b$a;->b(Lc/a/a/a/b;)V

    .line 8
    invoke-virtual {p0}, Lc/a/a/a/a;->d()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected b(ILandroid/view/MotionEvent;)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    invoke-interface {p1, p0}, Lc/a/a/a/b$a;->c(Lc/a/a/a/b;)Z

    move-result p1

    iput-boolean p1, p0, Lc/a/a/a/a;->b:Z

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/a;->d()V

    .line 3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {p0, p2}, Lc/a/a/a/b;->e(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method protected e(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lc/a/a/a/a;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lc/a/a/a/a;->c:Landroid/view/MotionEvent;

    .line 3
    invoke-direct {p0, p1}, Lc/a/a/a/b;->f(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/b;->h:Landroid/graphics/PointF;

    .line 4
    invoke-direct {p0, v0}, Lc/a/a/a/b;->f(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/b;->i:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lc/a/a/a/b;->l:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lc/a/a/a/b;->h:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lc/a/a/a/b;->i:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object p1, p0, Lc/a/a/a/b;->k:Landroid/graphics/PointF;

    .line 7
    iget-object v0, p0, Lc/a/a/a/b;->j:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 8
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/a/b;->j:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/a/b;->j:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

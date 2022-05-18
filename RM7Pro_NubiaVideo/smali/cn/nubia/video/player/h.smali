.class public Lcn/nubia/video/player/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/h$c;,
        Lcn/nubia/video/player/h$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/video/player/c;

.field private c:Lcn/nubia/video/player/q;

.field private d:Landroid/view/GestureDetector;

.field private e:Z

.field private f:F

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private final m:F

.field private final n:F

.field private o:Lcn/nubia/video/player/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/video/player/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->e:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lcn/nubia/video/player/h;->f:F

    .line 4
    iput v0, p0, Lcn/nubia/video/player/h;->g:I

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->h:Z

    .line 6
    iput v0, p0, Lcn/nubia/video/player/h;->i:I

    .line 7
    iput v0, p0, Lcn/nubia/video/player/h;->j:I

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->k:Z

    .line 9
    iput v0, p0, Lcn/nubia/video/player/h;->l:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/video/player/h;->m:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 12
    iput v0, p0, Lcn/nubia/video/player/h;->n:F

    .line 13
    iput-object p1, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcn/nubia/video/player/h;->b:Lcn/nubia/video/player/c;

    .line 15
    invoke-virtual {p2}, Lcn/nubia/video/player/c;->i()Lcn/nubia/video/player/q;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    instance-of p1, p1, Lcn/nubia/video/player/PlayerActivity;

    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    new-instance v0, Lcn/nubia/video/player/h$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/h$c;-><init>(Lcn/nubia/video/player/h;Lcn/nubia/video/player/h$a;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcn/nubia/video/player/h;->d:Landroid/view/GestureDetector;

    .line 18
    new-instance p1, Lcn/nubia/video/player/f;

    iget-object p2, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    new-instance v0, Lcn/nubia/video/player/h$b;

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/h$b;-><init>(Lcn/nubia/video/player/h;Lcn/nubia/video/player/h$a;)V

    invoke-direct {p1, p2, v0}, Lcn/nubia/video/player/f;-><init>(Landroid/app/Activity;Lcn/nubia/video/player/f$a;)V

    iput-object p1, p0, Lcn/nubia/video/player/h;->o:Lcn/nubia/video/player/f;

    :cond_0
    return-void
.end method

.method private A(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {v0}, Lcn/nubia/video/player/q;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private B(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {v0}, Lcn/nubia/video/player/q;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    iput v0, p0, Lcn/nubia/video/player/h;->f:F

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/player/h;->g:I

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->h:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/h;->h:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/player/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/h;->h:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/video/player/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->f:F

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/player/h;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/h;->f:F

    return p1
.end method

.method static synthetic e(Lcn/nubia/video/player/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->n:F

    return p0
.end method

.method static synthetic f(Lcn/nubia/video/player/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->g:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/video/player/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/h;->g:I

    return p1
.end method

.method static synthetic h(Lcn/nubia/video/player/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/video/player/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/h;->C()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/video/player/h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/h;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/video/player/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->m:F

    return p0
.end method

.method static synthetic m(Lcn/nubia/video/player/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/h;->e:Z

    return p1
.end method

.method static synthetic n(Lcn/nubia/video/player/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/player/h;->k:Z

    return p0
.end method

.method static synthetic o(Lcn/nubia/video/player/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/h;->k:Z

    return p1
.end method

.method static synthetic p(Lcn/nubia/video/player/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->l:I

    return p0
.end method

.method static synthetic q(Lcn/nubia/video/player/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/h;->l:I

    return p1
.end method

.method static synthetic r(Lcn/nubia/video/player/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/h;->i:I

    return p0
.end method

.method static synthetic s(Lcn/nubia/video/player/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/h;->i:I

    return p1
.end method

.method static synthetic t(Lcn/nubia/video/player/h;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/h;->v(I)I

    move-result p0

    return p0
.end method

.method static synthetic u(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/h;->o:Lcn/nubia/video/player/f;

    return-object p0
.end method

.method private v(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/h;->j:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/h;->a:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/video/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    iget-object v0, v0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/h;->j:I

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget v0, p0, Lcn/nubia/video/player/h;->j:I

    if-lez v0, :cond_1

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method private w(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/h;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/h;->x()V

    :cond_1
    return v1
.end method

.method private x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->e:Z

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/h;->k:Z

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/h;->C()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {v0}, Lcn/nubia/video/player/q;->i()V

    return-void
.end method

.method private y(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/h;->e:Z

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/h;->b:Lcn/nubia/video/player/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/c;->k()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->f()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcn/nubia/video/player/h;->B(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcn/nubia/video/player/h;->A(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->o()V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcn/nubia/video/player/h;->y(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->e()V

    return v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/player/h;->z()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcn/nubia/video/player/h;->y(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->n()V

    return v0

    .line 8
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/h;->c:Lcn/nubia/video/player/q;

    invoke-virtual {p1}, Lcn/nubia/video/player/q;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-direct {p0, p2}, Lcn/nubia/video/player/h;->w(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class public Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;,
        Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/video/mediaeditorview/textfilter/d;

.field private c:Lcn/nubia/video/mediaeditorview/textfilter/b;

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/Matrix;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j:Landroid/graphics/Matrix;

    .line 3
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k:Landroid/graphics/Matrix;

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->o:Z

    .line 6
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->r:Z

    .line 7
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a:Landroid/content/Context;

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->A()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/video/mediaeditorview/o/a;->O(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V

    return-void
.end method

.method private B(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    div-float/2addr p1, p2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object v0
.end method

.method private D(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private E(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private F(FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    .line 3
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_3

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/c;->b()F

    move-result v4

    float-to-int v4, v4

    .line 8
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/textfilter/c;->d()F

    move-result v5

    float-to-int v5, v5

    .line 9
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/textfilter/c;->c()F

    move-result v6

    float-to-int v6, v6

    .line 10
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/video/mediaeditorview/textfilter/c;->a()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v4, p1

    float-to-int v5, p2

    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 13
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 14
    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    goto :goto_3

    :cond_2
    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/h;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/nubia/video/mediaeditorview/textfilter/i;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-direct {v1, p1, v2, p0}, Lcn/nubia/video/mediaeditorview/textfilter/i;-><init>(Landroid/content/Context;Lcn/nubia/video/mediaeditorview/textfilter/b;Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V

    .line 5
    new-instance v4, Lcn/nubia/video/mediaeditorview/textfilter/h;

    invoke-direct {v4}, Lcn/nubia/video/mediaeditorview/textfilter/h;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getTextColor()I

    move-result v2

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getColorIndex()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 7
    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getFont()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v7}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getText()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v4, v2, v5, v6, v7}, Lcn/nubia/video/mediaeditorview/textfilter/h;->b(IIILjava/lang/String;)V

    .line 9
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->o:Z

    .line 10
    new-instance v2, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;

    invoke-direct {v2, p0, v1, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/i;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/i;->d(Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)V

    .line 11
    iget-object p1, v1, Lcn/nubia/video/mediaeditorview/textfilter/i;->b:Lcn/nubia/video/commonui/app/b;

    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;

    invoke-direct {v0, p0, v4, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/h;Lcn/nubia/video/mediaeditorview/textfilter/i;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private H(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->H(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic e(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->D(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/view/MotionEvent;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->E(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->G(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->o:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->o:Z

    return p1
.end method

.method static synthetic k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->n:Z

    return p0
.end method

.method static synthetic n(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->n:Z

    return p1
.end method

.method static synthetic o(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->r:Z

    return p0
.end method

.method static synthetic p(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->F(FF)V

    return-void
.end method

.method static synthetic q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/b;)Lcn/nubia/video/mediaeditorview/textfilter/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    return-object p1
.end method

.method static synthetic s(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->d:I

    return p0
.end method

.method static synthetic t(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->d:I

    return p1
.end method

.method static synthetic u(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->B(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private z(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->g:Landroid/graphics/PointF;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->h:Landroid/graphics/PointF;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    add-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    add-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j:Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/c;

    invoke-direct {v0}, Lcn/nubia/video/mediaeditorview/textfilter/c;-><init>()V

    .line 3
    new-instance v1, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-direct {v1}, Lcn/nubia/video/mediaeditorview/textfilter/a;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getContainerWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->h:I

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getContainerHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x78

    iput v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->i:I

    .line 6
    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->h:I

    invoke-direct {p0, v3, v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->z(II)V

    .line 7
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->b()V

    .line 8
    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/c;->f(F)V

    .line 9
    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/c;->h(F)V

    .line 10
    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->h:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/c;->g(F)V

    .line 11
    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->i:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/c;->e(F)V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->c(Lcn/nubia/video/mediaeditorview/textfilter/b;)V

    .line 13
    invoke-virtual {v1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->d(Lcn/nubia/video/mediaeditorview/textfilter/c;)V

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    :cond_0
    return-void
.end method

.method public getAddFrameHolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    return-object v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->p:I

    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q:I

    return v0
.end method

.method public setAddFrameHolders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public setAddWordSelectImageCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    return-void
.end method

.method public setContainerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->p:I

    return-void
.end method

.method public setContainerWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q:I

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->r:Z

    return-void
.end method

.method public setmOnDeleteListener(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->s:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;

    return-void
.end method

.method public v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/b;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 6
    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b:Lcn/nubia/video/mediaeditorview/textfilter/d;

    .line 9
    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->e:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->c:Lcn/nubia/video/mediaeditorview/textfilter/b;

    new-instance v1, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$d;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public w(Landroid/graphics/Matrix;Lcn/nubia/video/mediaeditorview/textfilter/b;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 1
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 6
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_0

    .line 7
    :cond_0
    iget v5, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->f:I

    .line 8
    iget v4, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->g:I

    :goto_0
    const/4 v6, 0x2

    .line 9
    aget v7, v3, v6

    const/4 v8, 0x5

    .line 10
    aget v9, v3, v8

    .line 11
    iget-object v10, v2, Lcn/nubia/video/mediaeditorview/textfilter/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v10, v7, v9}, Landroid/graphics/PointF;->set(FF)V

    const/4 v10, 0x0

    .line 12
    aget v11, v3, v10

    int-to-float v5, v5

    mul-float/2addr v11, v5

    aget v12, v3, v6

    add-float/2addr v11, v12

    const/4 v12, 0x3

    .line 13
    aget v13, v3, v12

    mul-float/2addr v13, v5

    aget v14, v3, v8

    add-float/2addr v13, v14

    .line 14
    iget-object v14, v2, Lcn/nubia/video/mediaeditorview/textfilter/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v14, v11, v13}, Landroid/graphics/PointF;->set(FF)V

    const/4 v14, 0x1

    .line 15
    aget v15, v3, v14

    int-to-float v4, v4

    mul-float/2addr v15, v4

    aget v16, v3, v6

    add-float v15, v15, v16

    const/16 v16, 0x4

    .line 16
    aget v17, v3, v16

    mul-float v17, v17, v4

    aget v18, v3, v8

    add-float v8, v17, v18

    .line 17
    iget-object v12, v2, Lcn/nubia/video/mediaeditorview/textfilter/b;->h:Landroid/graphics/PointF;

    invoke-virtual {v12, v15, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 18
    aget v10, v3, v10

    mul-float/2addr v10, v5

    aget v12, v3, v14

    mul-float/2addr v12, v4

    add-float/2addr v10, v12

    aget v6, v3, v6

    add-float/2addr v10, v6

    const/4 v6, 0x3

    .line 19
    aget v6, v3, v6

    mul-float/2addr v6, v5

    aget v5, v3, v16

    mul-float/2addr v5, v4

    add-float/2addr v6, v5

    const/4 v4, 0x5

    aget v3, v3, v4

    add-float/2addr v6, v3

    .line 20
    iget-object v2, v2, Lcn/nubia/video/mediaeditorview/textfilter/b;->i:Landroid/graphics/PointF;

    invoke-virtual {v2, v10, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 21
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    .line 22
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v3

    .line 23
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, v3

    .line 24
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v3

    .line 25
    iget v3, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 26
    iget-object v7, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/video/mediaeditorview/textfilter/c;->f(F)V

    .line 27
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v3, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcn/nubia/video/mediaeditorview/textfilter/c;->h(F)V

    .line 28
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v3, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcn/nubia/video/mediaeditorview/textfilter/c;->g(F)V

    .line 29
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v3, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcn/nubia/video/mediaeditorview/textfilter/c;->e(F)V

    .line 30
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v3, v0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->b(Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d$b;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->d(Lcn/nubia/video/mediaeditorview/textfilter/c;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->c(Lcn/nubia/video/mediaeditorview/textfilter/b;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->s:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    invoke-interface {v0, v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;->j(I)V

    .line 8
    iput v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->m:I

    :cond_0
    return-void
.end method

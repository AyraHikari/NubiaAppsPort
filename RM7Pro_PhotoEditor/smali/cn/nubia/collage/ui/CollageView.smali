.class public Lcn/nubia/collage/ui/CollageView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/ui/CollageView$h;,
        Lcn/nubia/collage/ui/CollageView$i;,
        Lcn/nubia/collage/ui/CollageView$j;
    }
.end annotation


# static fields
.field private static final N:I

.field private static final O:I


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/support/v7/widget/RecyclerView;

.field private D:Landroid/support/v7/widget/LinearLayoutManager;

.field private E:Lcn/nubia/collage/ui/m;

.field private F:Lcn/nubia/collage/ui/k;

.field private G:Z

.field private H:Z

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/graphics/Paint;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:I

.field private final a:Landroid/content/Context;

.field private b:Lcn/nubia/collage/ui/CollageView$j;

.field private final c:Landroid/os/Handler;

.field private final d:Lcn/nubia/collage/ui/e;

.field private final e:Lcn/nubia/collage/ui/CollageView$h;

.field private f:I

.field private g:Lcn/nubia/collage/o/b/k;

.field private h:I

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:I

.field private p:Landroid/view/View;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/widget/LinearLayout$LayoutParams;

.field private z:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcn/nubia/collage/ui/CollageView;->N:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcn/nubia/collage/ui/CollageView;->O:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/collage/ui/CollageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcn/nubia/collage/ui/CollageView;->q:Z

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->r:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->s:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->u:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->v:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->x:I

    iput-boolean p2, p0, Lcn/nubia/collage/ui/CollageView;->G:Z

    iput-boolean p2, p0, Lcn/nubia/collage/ui/CollageView;->H:Z

    iput-boolean p2, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    iput p2, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    new-instance p2, Lcn/nubia/collage/ui/CollageView$i;

    invoke-direct {p2, p0}, Lcn/nubia/collage/ui/CollageView$i;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    iput-object p2, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/collage/ui/CollageView$h;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcn/nubia/collage/ui/CollageView$h;-><init>(Lcn/nubia/collage/ui/CollageView;Lcn/nubia/collage/ui/CollageView$a;)V

    iput-object p2, p0, Lcn/nubia/collage/ui/CollageView;->e:Lcn/nubia/collage/ui/CollageView$h;

    new-instance p3, Lcn/nubia/collage/ui/e;

    invoke-direct {p3, p1, p2}, Lcn/nubia/collage/ui/e;-><init>(Landroid/content/Context;Lcn/nubia/collage/ui/e$b;)V

    iput-object p3, p0, Lcn/nubia/collage/ui/CollageView;->d:Lcn/nubia/collage/ui/e;

    new-instance p2, Lcn/nubia/collage/ui/k;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050083

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 v0, 0x6

    invoke-direct {p2, p3, v0}, Lcn/nubia/collage/ui/k;-><init>(II)V

    iput-object p2, p0, Lcn/nubia/collage/ui/CollageView;->F:Lcn/nubia/collage/ui/k;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060116

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->x:I

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->I()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->J()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->H()V

    return-void
.end method

.method static synthetic A(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->l:I

    return p0
.end method

.method static synthetic B(Lcn/nubia/collage/ui/CollageView;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->l:I

    return p1
.end method

.method private C(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->l:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    const/16 p1, 0x190

    if-le v0, p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget p1, Lcn/nubia/collage/ui/CollageView;->O:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    sget p1, Lcn/nubia/collage/ui/CollageView;->N:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private D(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private F(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/g;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    add-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->x:I

    sub-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    if-le v1, v4, :cond_0

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    add-int/2addr v5, v4

    iget v6, p0, Lcn/nubia/collage/ui/CollageView;->x:I

    add-int/2addr v5, v6

    if-le v2, v5, :cond_0

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    add-int/2addr v4, v1

    add-int/2addr v4, v6

    iput v4, p1, Landroid/graphics/Point;->y:I

    iput v4, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    int-to-float v4, v1

    iget v5, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3eaa7efa    # 0.333f

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v1

    :goto_0
    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->s:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    add-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    if-le v3, v1, :cond_3

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->s:I

    sub-int v2, v3, v2

    iget v4, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    add-int/2addr v2, v4

    iput v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    :goto_1
    iput v1, p2, Landroid/graphics/Point;->y:I

    :goto_2
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Point;->y:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->r:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->r:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_4
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->v:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p0, Lcn/nubia/collage/ui/CollageView;->u:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-void
.end method

.method private H()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->J:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->J:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/collage/ui/CollageView$f;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageView$f;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/collage/ui/CollageView$g;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/CollageView$g;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0x0
        0x64
        0x0
        0x64
        0x0
        0x64
        0x0
    .end array-data
.end method

.method private I()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->n:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private J()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->y:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->z:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->s:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->r:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->C:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->D:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->C:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->D:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->t:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->u:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->v:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->w:I

    return-void
.end method

.method private K()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/collage/o/b/e;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iput-boolean v2, p0, Lcn/nubia/collage/ui/CollageView;->i:Z

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    iput v1, p0, Lcn/nubia/collage/ui/CollageView;->k:I

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/g;

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/g;->k()I

    move-result v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/e;->g(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private L()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->M()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->N()V

    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->G:Z

    :cond_0
    return-void
.end method

.method private P()V
    .locals 2

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcn/nubia/collage/ui/CollageView;->Q(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private Q(I)V
    .locals 2

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->g()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcn/nubia/collage/m;->b(III)I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method private R()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->h(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/collage/n/f;->j(I)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->E:Lcn/nubia/collage/ui/m;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView;->D:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcn/nubia/collage/ui/a;->c(I)V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->D:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Lcn/nubia/collage/ui/a;->c(I)V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->D:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method private S(II)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/o/b/k;->o(II)I

    move-result p1

    iget p2, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    iget-object p2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    invoke-virtual {p2, v1, v0}, Lcn/nubia/collage/o/b/k;->D(IZ)V

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    iget-object p2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {p2, p1, v0}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    :goto_0
    return-void
.end method

.method private T(II)V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    const v2, 0x7f080212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    const v3, 0x7f0801c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    const v4, 0x7f080150

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v4, Lcn/nubia/collage/ui/CollageView$b;

    invoke-direct {v4, p0}, Lcn/nubia/collage/ui/CollageView$b;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcn/nubia/collage/ui/CollageView$c;

    invoke-direct {v0, p0}, Lcn/nubia/collage/ui/CollageView$c;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    new-instance v0, Lcn/nubia/collage/ui/CollageView$d;

    invoke-direct {v0, p0}, Lcn/nubia/collage/ui/CollageView$d;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    new-instance v0, Lcn/nubia/collage/ui/CollageView$e;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/collage/ui/CollageView$e;-><init>(Lcn/nubia/collage/ui/CollageView;II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private U()V
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v2}, Lcn/nubia/collage/ui/CollageView;->F(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b0014

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView;->y:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->N()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->M()V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView;->y:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/collage/ui/CollageView;->T(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private V(II)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->z:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->M()V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->N()V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->z:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->R()V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/ui/CollageView;->T(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView;->G:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->K()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/collage/ui/CollageView;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    return p1
.end method

.method static synthetic d(Lcn/nubia/collage/ui/CollageView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView;->K:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcn/nubia/collage/ui/CollageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/collage/ui/CollageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/ui/CollageView;->i:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/collage/ui/CollageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView;->i:Z

    return p1
.end method

.method static synthetic h(Lcn/nubia/collage/ui/CollageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/CollageView;->Q(I)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    return p0
.end method

.method static synthetic j(Lcn/nubia/collage/ui/CollageView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/ui/CollageView;->S(II)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->f:I

    return p0
.end method

.method static synthetic l(Lcn/nubia/collage/ui/CollageView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->L()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/collage/ui/CollageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/nubia/collage/ui/CollageView;->q:Z

    return p0
.end method

.method static synthetic o(Lcn/nubia/collage/ui/CollageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView;->q:Z

    return p1
.end method

.method static synthetic p(Lcn/nubia/collage/ui/CollageView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->k:I

    return p0
.end method

.method static synthetic r(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->U()V

    return-void
.end method

.method static synthetic s(Lcn/nubia/collage/ui/CollageView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/collage/ui/CollageView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/ui/CollageView;->V(II)V

    return-void
.end method

.method static synthetic u(Lcn/nubia/collage/ui/CollageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->J:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/m;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->E:Lcn/nubia/collage/ui/m;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/collage/ui/CollageView;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    return p0
.end method

.method static synthetic y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/CollageView;->b:Lcn/nubia/collage/ui/CollageView$j;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/collage/ui/CollageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView;->H:Z

    return p1
.end method


# virtual methods
.method public E(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/nubia/collage/ui/m;

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/nubia/collage/ui/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->E:Lcn/nubia/collage/ui/m;

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz p1, :cond_0

    iget p1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->R()V

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView;->E:Lcn/nubia/collage/ui/m;

    new-instance v0, Lcn/nubia/collage/ui/CollageView$a;

    invoke-direct {v0, p0}, Lcn/nubia/collage/ui/CollageView$a;-><init>(Lcn/nubia/collage/ui/CollageView;)V

    invoke-virtual {p1, v0}, Lcn/nubia/collage/ui/a;->b(Lcn/nubia/collage/ui/a$b;)V

    return-void
.end method

.method public G()V
    .locals 3

    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->L()V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/collage/o/b/k;->y(IZ)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/collage/o/b/k;->D(IZ)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->H:Z

    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->q:Z

    return-void
.end method

.method public X()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->E:Lcn/nubia/collage/ui/m;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/collage/ui/CollageView;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->a()V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->F:Lcn/nubia/collage/ui/k;

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2, p1}, Lcn/nubia/collage/o/b/k;->b(Landroid/graphics/Canvas;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/collage/ui/k;->b(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->F:Lcn/nubia/collage/ui/k;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/ui/k;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->K:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/ui/CollageView;->K:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->K:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0}, Lcn/nubia/collage/ui/CollageView;->D(Landroid/graphics/Canvas;Ljava/util/List;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    invoke-direct {p0}, Lcn/nubia/collage/ui/CollageView;->P()V

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/nubia/collage/d;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {}, Lcn/nubia/collage/d;->b()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcn/nubia/collage/ui/CollageView;->l:I

    invoke-static {}, Lcn/nubia/collage/d;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    iget v4, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    add-int/2addr v3, v4

    invoke-static {}, Lcn/nubia/collage/d;->b()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lcn/nubia/collage/d;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CollageView"

    const-string v2, "collageview draw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/16 v2, 0x12c

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_4

    const/16 v0, 0x1e

    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/collage/ui/CollageView;->Q(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_4
    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->m:I

    if-ge v0, v2, :cond_5

    const/16 v0, -0x1e

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImagePoses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/b/g$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->t()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getModified()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->H:Z

    return v0
.end method

.method public getShowSingleFlipView()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/ui/CollageView;->G:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcn/nubia/collage/o/b/k;->F(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/ui/CollageView;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget v0, p0, Lcn/nubia/collage/ui/CollageView;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/CollageView;->C(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcn/nubia/collage/ui/CollageView;->i:Z

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->d:Lcn/nubia/collage/ui/e;

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->f:I

    invoke-virtual {v0, p1, v1}, Lcn/nubia/collage/ui/e;->b(Landroid/view/MotionEvent;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setCollageRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView;->p:Landroid/view/View;

    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    if-eqz v0, :cond_1

    iget v1, p0, Lcn/nubia/collage/ui/CollageView;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->f(I)Lcn/nubia/collage/o/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcn/nubia/collage/o/b/m;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/m;->o(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setListener(Lcn/nubia/collage/ui/CollageView$j;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView;->b:Lcn/nubia/collage/ui/CollageView$j;

    return-void
.end method

.method public setModel(Lcn/nubia/collage/o/b/k;)V
    .locals 4

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->g()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->g:Lcn/nubia/collage/o/b/k;

    invoke-virtual {v2}, Lcn/nubia/collage/o/b/k;->g()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcn/nubia/collage/ui/CollageView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07025c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr p1, v2

    div-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    if-gez p1, :cond_1

    move p1, v1

    :cond_1
    iput p1, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcn/nubia/collage/ui/CollageView;->L:Z

    iput v1, p0, Lcn/nubia/collage/ui/CollageView;->M:I

    :goto_1
    iput v1, p0, Lcn/nubia/collage/ui/CollageView;->o:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

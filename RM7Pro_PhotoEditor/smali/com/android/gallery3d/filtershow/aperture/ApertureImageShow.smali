.class public Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

.field private f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Rect;

.field private o:F

.field private p:F

.field private q:Landroid/view/GestureDetector;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:F

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->i:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->j:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->k:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->r:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->s:Landroid/widget/TextView;

    iput v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->t:I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    return p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    return p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    return p1
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getInitCenter()Landroid/graphics/Point;
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->r:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o()V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l(FF)V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    return p0
.end method

.method private l(FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->getInitCenter()Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->t:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    move v5, p2

    move p2, p1

    move p1, v5

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g:I

    int-to-float v1, v0

    add-float/2addr v1, p2

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->i:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->k:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v1, v4, :cond_1

    int-to-float v0, v2

    sub-float/2addr p2, v0

    mul-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->setViewInLeft(Z)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->t:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->j:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private n(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0001

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    const v0, 0x7f080025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->s:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->setApertureChangedListener(Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0002

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->setApertureView(Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060006

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g:I

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->i:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060003

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->j:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060002

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->k:I

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060008

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->t:I

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->q:Landroid/view/GestureDetector;

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private q(IFF)V
    .locals 2

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method private r()V
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMatrix, mOri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageShow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/utils/b;->g(I)I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->q(IFF)V

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_2
    div-float v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    invoke-direct {v0, v2, v4, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    return v0
.end method

.method public m(FFF)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o()V

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->u(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initAperture aper:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " in:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  roed:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImageShow"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l(FF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->c(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f:Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/aperture/a;->a(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/aperture/VerticalSeekBar;->setProgress(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->A()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->r()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->o:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iget p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p3, p1

    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l(FF)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v1
.end method

.method public p(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->l:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->v:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->r()V

    return-void
.end method

.method public setCurrentAperture(F)V
    .locals 2

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/a;->e(F)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->u:F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->s:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->u:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b:Landroid/view/View;

    return-void
.end method

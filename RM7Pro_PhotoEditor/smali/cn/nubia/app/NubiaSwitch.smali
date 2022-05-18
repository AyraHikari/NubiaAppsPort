.class public Lcn/nubia/app/NubiaSwitch;
.super Landroid/widget/CompoundButton;
.source ""


# static fields
.field private static final H:[I

.field private static final I:Lb/a/b/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/b/a/b<",
            "Lcn/nubia/app/NubiaSwitch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/text/Layout;

.field private B:Landroid/text/Layout;

.field private C:Lb/a/b/b/a/d;

.field private D:Landroid/animation/ObjectAnimator;

.field private E:I

.field private final F:Landroid/graphics/Rect;

.field private G:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Z

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Landroid/view/VelocityTracker;

.field private p:I

.field private q:F

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/text/TextPaint;

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/app/NubiaSwitch;->H:[I

    new-instance v0, Lcn/nubia/app/NubiaSwitch$a;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/app/NubiaSwitch$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/app/NubiaSwitch;->I:Lb/a/b/b/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030017

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/app/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f0f0014

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/app/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->o:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    sget-object v2, Lb/a/d/a;->d:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const p3, 0x7f07021c

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/NubiaSwitch;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    const p3, 0x7f0600cf

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/app/NubiaSwitch;->E:I

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    const/16 p4, 0x8

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/app/NubiaSwitch;->d:I

    const/4 p4, 0x3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/app/NubiaSwitch;->e:I

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/app/NubiaSwitch;->G:I

    const/4 p4, 0x4

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/app/NubiaSwitch;->f:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lcn/nubia/app/NubiaSwitch;->g:Z

    const/4 p4, 0x5

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p3}, Lcn/nubia/app/NubiaSwitch;->j(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcn/nubia/app/NubiaSwitch;->l:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->p:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setChecked(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/app/NubiaSwitch;)F
    .locals 0

    iget p0, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    return p0
.end method

.method static synthetic b(Lcn/nubia/app/NubiaSwitch;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcn/nubia/app/NubiaSwitch;->I:Lb/a/b/b/a/b;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private g(FF)Z
    .locals 6

    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getThumbOffset()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->v:I

    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->l:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcn/nubia/app/NubiaSwitch;->u:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->t:I

    add-int/2addr v0, v3

    iget-object v4, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->x:I

    add-int/2addr v4, v2

    int-to-float v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    int-to-float p1, v1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    int-to-float p1, v4

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTargetCheckedState()Z
    .locals 2

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 2

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 4

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    iget v3, p0, Lcn/nubia/app/NubiaSwitch;->t:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Lb/a/b/b/a/c;->a:I

    sub-int/2addr v2, v1

    iget v0, v0, Lb/a/b/b/a/c;->c:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->E:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, v0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private i(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->C:Lb/a/b/b/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e00be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private l(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/app/NubiaSwitch;->k(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private m(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->o:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->p:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcn/nubia/app/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcn/nubia/app/NubiaSwitch;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcn/nubia/app/NubiaSwitch;->e(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private setThumbPosition(F)V
    .locals 0

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->u:I

    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->v:I

    iget v3, p0, Lcn/nubia/app/NubiaSwitch;->w:I

    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->x:I

    iget v5, p0, Lcn/nubia/app/NubiaSwitch;->E:I

    add-int/2addr v5, v1

    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getThumbOffset()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    iget-object v7, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    sget-object v7, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    if-eq v6, v7, :cond_1

    iget v7, v6, Lb/a/b/b/a/c;->a:I

    iget v7, v6, Lb/a/b/b/a/c;->b:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_0

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iget v8, v6, Lb/a/b/b/a/c;->c:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v6, v6, Lb/a/b/b/a/c;->d:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_2

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_1

    :cond_1
    move v7, v2

    :cond_2
    move v6, v4

    :goto_1
    iget-object v8, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    iget v3, p0, Lcn/nubia/app/NubiaSwitch;->t:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public f(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->f:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcn/nubia/app/NubiaSwitch;->f:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getShowText()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/app/NubiaSwitch;->g:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->e:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->f:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->d:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05006f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcn/nubia/app/NubiaSwitch;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, p1

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_1
    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcn/nubia/app/NubiaSwitch;->l(II)V

    new-instance p1, Lb/a/b/b/a/a;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/b/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->C:Lb/a/b/b/a/d;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lb/a/b/b/a/d;->a(Z)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->D:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public k(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/app/NubiaSwitch;->H:[I

    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->v:I

    iget v3, p0, Lcn/nubia/app/NubiaSwitch;->x:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v5, p0, Lcn/nubia/app/NubiaSwitch;->g:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    sget-object v5, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Lb/a/b/b/a/c;->a:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Lb/a/b/b/a/c;->c:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->A:Landroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->B:Landroid/text/Layout;

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/app/NubiaSwitch;->z:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5
    iget-object v6, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    :goto_3
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcn/nubia/app/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcn/nubia/app/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    iget-object p3, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    sget-object p3, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    iget p4, p3, Lb/a/b/b/a/c;->a:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget p3, p3, Lb/a/b/b/a/c;->c:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p2

    move p4, p1

    :goto_1
    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->h()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p4

    iget p5, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    add-int/2addr p5, p3

    sub-int/2addr p5, p4

    sub-int/2addr p5, p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int p5, p3, p1

    iget p3, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    sub-int p3, p5, p3

    add-int/2addr p3, p4

    add-int/2addr p3, p1

    :goto_2
    iget-object p1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p2, p1, 0x2

    :goto_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    const/16 p4, 0x10

    if-eq p1, p4, :cond_5

    const/16 p4, 0x50

    if-eq p1, p4, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/app/NubiaSwitch;->s:I

    add-int/2addr p2, p1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    sub-int p2, p1, p2

    iget p1, p0, Lcn/nubia/app/NubiaSwitch;->s:I

    sub-int p1, p2, p1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    iget p4, p0, Lcn/nubia/app/NubiaSwitch;->s:I

    div-int/lit8 v0, p4, 0x2

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    add-int p2, p1, p4

    :goto_4
    iput p3, p0, Lcn/nubia/app/NubiaSwitch;->u:I

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->v:I

    iput p2, p0, Lcn/nubia/app/NubiaSwitch;->x:I

    iput p5, p0, Lcn/nubia/app/NubiaSwitch;->w:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    iget-boolean v0, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->A:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcn/nubia/app/NubiaSwitch;->i(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->A:Landroid/text/Layout;

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->B:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcn/nubia/app/NubiaSwitch;->i(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/app/NubiaSwitch;->B:Landroid/text/Layout;

    :cond_1
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/app/NubiaSwitch;->A:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/app/NubiaSwitch;->B:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcn/nubia/app/NubiaSwitch;->d:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/app/NubiaSwitch;->t:I

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    sget-object v4, Lb/a/b/b/a/c;->e:Lb/a/b/b/a/c;

    iget v5, v4, Lb/a/b/b/a/c;->a:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v4, Lb/a/b/b/a/c;->c:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->e:I

    iget v5, p0, Lcn/nubia/app/NubiaSwitch;->t:I

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v0, p0, Lcn/nubia/app/NubiaSwitch;->r:I

    iput v1, p0, Lcn/nubia/app/NubiaSwitch;->s:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    iget p2, p0, Lcn/nubia/app/NubiaSwitch;->G:I

    if-ge v1, p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/app/NubiaSwitch;->G:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_6
    if-ge p1, v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->getThumbScrollRange()I

    move-result v0

    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->m:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v2, v4

    if-lez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v2, v0

    :goto_0
    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0, v4, v3}, Lcn/nubia/app/NubiaSwitch;->f(FFF)F

    move-result v0

    iget v2, p0, Lcn/nubia/app/NubiaSwitch;->q:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->m:F

    invoke-direct {p0, v0}, Lcn/nubia/app/NubiaSwitch;->setThumbPosition(F)V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->m:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/app/NubiaSwitch;->l:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6

    iget v4, p0, Lcn/nubia/app/NubiaSwitch;->n:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/app/NubiaSwitch;->l:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    :cond_6
    iput v2, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Lcn/nubia/app/NubiaSwitch;->m:F

    iput v3, p0, Lcn/nubia/app/NubiaSwitch;->n:F

    return v1

    :cond_7
    iget v0, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    if-ne v0, v2, :cond_8

    invoke-direct {p0, p1}, Lcn/nubia/app/NubiaSwitch;->m(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v0, v2}, Lcn/nubia/app/NubiaSwitch;->g(FF)Z

    move-result v3

    if-eqz v3, :cond_a

    iput v1, p0, Lcn/nubia/app/NubiaSwitch;->k:I

    iput v0, p0, Lcn/nubia/app/NubiaSwitch;->m:F

    iput v2, p0, Lcn/nubia/app/NubiaSwitch;->n:F

    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/app/NubiaSwitch;->c(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcn/nubia/app/NubiaSwitch;->d()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcn/nubia/app/NubiaSwitch;->j:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/nubia/app/NubiaSwitch;->g:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->e:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->f:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->y:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->h:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/app/NubiaSwitch;->d:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/app/NubiaSwitch;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/app/NubiaSwitch;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

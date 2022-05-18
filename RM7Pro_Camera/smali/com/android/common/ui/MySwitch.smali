.class public Lcom/android/common/ui/MySwitch;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final H:[I

.field private static final J:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/common/ui/MySwitch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/text/TextPaint;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/text/Layout;

.field private F:Landroid/text/Layout;

.field private final G:Landroid/graphics/Rect;

.field private I:Landroid/animation/ObjectAnimator;

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:Landroid/view/VelocityTracker;

.field private r:I

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 93
    sput-object v0, Lcom/android/common/ui/MySwitch;->H:[I

    .line 534
    new-instance v0, Lcom/android/common/ui/MySwitch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcom/android/common/ui/MySwitch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/ui/MySwitch;->J:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 102
    sget v0, Lcom/android/common/ui/c$a;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/ui/MySwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->q:Landroid/view/VelocityTracker;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    .line 109
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 112
    sget-object v0, Lcom/android/common/ui/c$g;->aI:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 114
    sget p3, Lcom/android/common/ui/c$g;->aV:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    .line 115
    sget p3, Lcom/android/common/ui/c$g;->aU:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 117
    iget-object p3, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 119
    :cond_0
    sget p3, Lcom/android/common/ui/c$g;->aT:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    .line 123
    :goto_0
    sget p3, Lcom/android/common/ui/c$g;->aR:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->c:Landroid/graphics/drawable/Drawable;

    .line 124
    sget p3, Lcom/android/common/ui/c$g;->aQ:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->d:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 126
    iget-object p3, p0, Lcom/android/common/ui/MySwitch;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 128
    :cond_1
    sget p3, Lcom/android/common/ui/c$g;->aP:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    .line 133
    :goto_1
    sget p3, Lcom/android/common/ui/c$g;->aO:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->k:Ljava/lang/CharSequence;

    .line 134
    sget p3, Lcom/android/common/ui/c$g;->aN:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/common/ui/MySwitch;->l:Ljava/lang/CharSequence;

    .line 135
    sget p3, Lcom/android/common/ui/c$g;->aS:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/common/ui/MySwitch;->g:I

    .line 136
    sget p3, Lcom/android/common/ui/c$g;->aK:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/common/ui/MySwitch;->h:I

    .line 138
    sget p3, Lcom/android/common/ui/c$g;->aJ:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/common/ui/MySwitch;->i:I

    .line 140
    sget p3, Lcom/android/common/ui/c$g;->aL:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/common/ui/MySwitch;->j:I

    .line 142
    sget p3, Lcom/android/common/ui/c$g;->aM:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/android/common/ui/MySwitch;->a(Landroid/content/Context;I)V

    .line 146
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/common/ui/MySwitch;->n:I

    .line 150
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/MySwitch;->r:I

    .line 153
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 154
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/MySwitch;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/common/ui/MySwitch;->s:F

    return p0
.end method

.method static synthetic a(Lcom/android/common/ui/MySwitch;F)F
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/common/ui/MySwitch;->s:F

    return p1
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    .line 413
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    .line 414
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

.method private a(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 201
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 197
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 193
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 205
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/common/ui/MySwitch;->a(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 505
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 507
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(FF)Z
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 423
    iget v0, p0, Lcom/android/common/ui/MySwitch;->z:I

    iget v1, p0, Lcom/android/common/ui/MySwitch;->n:I

    sub-int/2addr v0, v1

    .line 424
    iget v2, p0, Lcom/android/common/ui/MySwitch;->y:I

    iget v3, p0, Lcom/android/common/ui/MySwitch;->s:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 425
    iget v1, p0, Lcom/android/common/ui/MySwitch;->w:I

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/common/ui/MySwitch;->n:I

    add-int/2addr v1, v3

    .line 427
    iget v4, p0, Lcom/android/common/ui/MySwitch;->B:I

    add-int/2addr v4, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    int-to-float p1, v0

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

.method private b(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 512
    iput v0, p0, Lcom/android/common/ui/MySwitch;->m:I

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 515
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/common/ui/MySwitch;->a(Landroid/view/MotionEvent;)V

    if-eqz v1, :cond_3

    .line 519
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->q:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 520
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 521
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/common/ui/MySwitch;->r:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    move v0, v2

    goto :goto_1

    .line 524
    :cond_1
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getTargetCheckedState()Z

    move-result v0

    .line 526
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->a(Z)V

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/common/ui/MySwitch;->a(Z)V

    :goto_2
    return-void
.end method

.method private b()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 552
    iget v0, p0, Lcom/android/common/ui/MySwitch;->s:F

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 695
    iget v0, p0, Lcom/android/common/ui/MySwitch;->u:I

    iget v1, p0, Lcom/android/common/ui/MySwitch;->w:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getSwitchPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .line 158
    sget-object v0, Lcom/android/common/ui/c$g;->ai:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    sget p2, Lcom/android/common/ui/c$g;->aj:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 165
    iput-object p2, p0, Lcom/android/common/ui/MySwitch;->D:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/ui/MySwitch;->D:Landroid/content/res/ColorStateList;

    .line 171
    :goto_0
    sget p2, Lcom/android/common/ui/c$g;->ak:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, p2

    .line 173
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 175
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    .line 181
    :cond_1
    sget p2, Lcom/android/common/ui/c$g;->am:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 182
    sget v1, Lcom/android/common/ui/c$g;->al:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 184
    invoke-direct {p0, p2, v0}, Lcom/android/common/ui/MySwitch;->a(II)V

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 221
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 226
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 230
    iget-object p2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 231
    iget-object p2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 233
    :cond_4
    iget-object p2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 234
    iget-object p2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->E:Landroid/text/Layout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->F:Landroid/text/Layout;

    :goto_0
    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 709
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 711
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 683
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/MySwitch;->u:I

    add-int/2addr v0, v1

    .line 684
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    iget v1, p0, Lcom/android/common/ui/MySwitch;->j:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getSwitchMinHeight()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/android/common/ui/MySwitch;->i:I

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/android/common/ui/MySwitch;->h:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/android/common/ui/MySwitch;->j:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/android/common/ui/MySwitch;->g:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOnDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 700
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 701
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/android/common/ui/MySwitch;->H:[I

    invoke-static {p1, v0}, Lcom/android/common/ui/MySwitch;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 622
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 624
    iget v0, p0, Lcom/android/common/ui/MySwitch;->y:I

    .line 625
    iget v1, p0, Lcom/android/common/ui/MySwitch;->z:I

    .line 626
    iget v2, p0, Lcom/android/common/ui/MySwitch;->A:I

    .line 627
    iget v3, p0, Lcom/android/common/ui/MySwitch;->B:I

    .line 630
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getTargetCheckedState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 634
    :goto_1
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 635
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getTargetCheckedState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->d:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v4, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-eqz v5, :cond_4

    .line 640
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 642
    :cond_4
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 643
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 647
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 648
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 649
    iget-object v4, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/common/ui/MySwitch;->t:I

    add-int/2addr v4, v5

    .line 650
    iget-object v5, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    .line 651
    iget-object v5, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/android/common/ui/MySwitch;->t:I

    sub-int/2addr v5, v6

    .line 652
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 654
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 655
    iget v1, p0, Lcom/android/common/ui/MySwitch;->s:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 656
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getSwitchPadding()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 657
    iget v1, p0, Lcom/android/common/ui/MySwitch;->w:I

    add-int/2addr v1, v0

    .line 658
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, v2

    .line 659
    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget v6, p0, Lcom/android/common/ui/MySwitch;->x:I

    add-int/2addr v3, v6

    .line 661
    iget-object v6, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 665
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->D:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 666
    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/common/ui/MySwitch;->D:Landroid/content/res/ColorStateList;

    .line 667
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    .line 666
    invoke-virtual {v2, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 669
    :cond_5
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 671
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getTargetCheckedState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->E:Landroid/text/Layout;

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->F:Landroid/text/Layout;

    :goto_4
    if-eqz v2, :cond_7

    add-int/2addr v0, v1

    .line 674
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 675
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    int-to-float v1, v4

    .line 674
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 676
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 678
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 584
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 586
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getThumbScrollRange()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/common/ui/MySwitch;->s:F

    .line 591
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    .line 592
    iget p2, p0, Lcom/android/common/ui/MySwitch;->u:I

    sub-int p2, p1, p2

    .line 595
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getGravity()I

    move-result p3

    and-int/lit8 p3, p3, 0x70

    const/16 p4, 0x10

    if-eq p3, p4, :cond_3

    const/16 p4, 0x50

    if-eq p3, p4, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingTop()I

    move-result p3

    .line 599
    iget p4, p0, Lcom/android/common/ui/MySwitch;->v:I

    goto :goto_1

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingBottom()I

    move-result p4

    sub-int p4, p3, p4

    .line 610
    iget p3, p0, Lcom/android/common/ui/MySwitch;->v:I

    sub-int p3, p4, p3

    goto :goto_2

    .line 603
    :cond_3
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/android/common/ui/MySwitch;->v:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p3, p5

    :goto_1
    add-int/2addr p4, p3

    .line 614
    :goto_2
    iput p2, p0, Lcom/android/common/ui/MySwitch;->y:I

    .line 615
    iput p3, p0, Lcom/android/common/ui/MySwitch;->z:I

    .line 616
    iput p4, p0, Lcom/android/common/ui/MySwitch;->B:I

    .line 617
    iput p1, p0, Lcom/android/common/ui/MySwitch;->A:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->E:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->k:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->E:Landroid/text/Layout;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->F:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->l:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/common/ui/MySwitch;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->F:Landroid/text/Layout;

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 365
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->E:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->F:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 366
    iget v1, p0, Lcom/android/common/ui/MySwitch;->h:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/common/ui/MySwitch;->g:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 370
    iget v1, p0, Lcom/android/common/ui/MySwitch;->i:I

    if-gtz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/common/ui/MySwitch;->w:I

    .line 377
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/common/ui/MySwitch;->x:I

    .line 379
    iput v0, p0, Lcom/android/common/ui/MySwitch;->u:I

    .line 380
    iput v1, p0, Lcom/android/common/ui/MySwitch;->v:I

    sub-int v0, v1, v2

    .line 382
    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/MySwitch;->G:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/ui/MySwitch;->t:I

    .line 384
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 385
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_4

    .line 387
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/MySwitch;->setMeasuredDimension(II)V

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/ui/MySwitch;->setMeasuredDimension(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 436
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_0

    .line 452
    :cond_1
    iget v0, p0, Lcom/android/common/ui/MySwitch;->m:I

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    .line 475
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 476
    iget v0, p0, Lcom/android/common/ui/MySwitch;->o:F

    sub-float v0, p1, v0

    const/4 v2, 0x0

    .line 477
    iget v3, p0, Lcom/android/common/ui/MySwitch;->s:F

    add-float/2addr v3, v0

    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 478
    iget v2, p0, Lcom/android/common/ui/MySwitch;->s:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 479
    iput v0, p0, Lcom/android/common/ui/MySwitch;->s:F

    .line 480
    iput p1, p0, Lcom/android/common/ui/MySwitch;->o:F

    .line 481
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    :cond_3
    return v1

    .line 458
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 460
    iget v4, p0, Lcom/android/common/ui/MySwitch;->o:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/common/ui/MySwitch;->n:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_5

    iget v4, p0, Lcom/android/common/ui/MySwitch;->p:F

    sub-float v4, v3, v4

    .line 461
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/common/ui/MySwitch;->n:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 462
    :cond_5
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    .line 463
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 465
    :cond_6
    iput v2, p0, Lcom/android/common/ui/MySwitch;->m:I

    .line 466
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 467
    iput v0, p0, Lcom/android/common/ui/MySwitch;->o:F

    .line 468
    iput v3, p0, Lcom/android/common/ui/MySwitch;->p:F

    return v1

    .line 491
    :cond_7
    iget v0, p0, Lcom/android/common/ui/MySwitch;->m:I

    if-ne v0, v2, :cond_8

    .line 492
    invoke-direct {p0, p1}, Lcom/android/common/ui/MySwitch;->b(Landroid/view/MotionEvent;)V

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/android/common/ui/MySwitch;->m:I

    .line 496
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 441
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 443
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v0, v2}, Lcom/android/common/ui/MySwitch;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 444
    iput v1, p0, Lcom/android/common/ui/MySwitch;->m:I

    .line 445
    iput v0, p0, Lcom/android/common/ui/MySwitch;->o:F

    .line 446
    iput v2, p0, Lcom/android/common/ui/MySwitch;->p:F

    .line 501
    :cond_a
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 6

    .line 558
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 562
    :goto_1
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->d:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v0, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->refreshDrawableState()V

    .line 568
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_5

    .line 570
    invoke-direct {p0}, Lcom/android/common/ui/MySwitch;->getThumbScrollRange()I

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    int-to-float p1, p1

    .line 571
    iget v0, p0, Lcom/android/common/ui/MySwitch;->s:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_6

    .line 572
    sget-object v3, Lcom/android/common/ui/MySwitch;->J:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v1

    aput p1, v4, v2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    .line 574
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e23d70a    # 0.16f

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e19999a    # 0.15f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 577
    iget-object p1, p0, Lcom/android/common/ui/MySwitch;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 579
    :cond_6
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    return-void
.end method

.method public setSwitchMinHeight(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/android/common/ui/MySwitch;->i:I

    .line 271
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/android/common/ui/MySwitch;->h:I

    .line 294
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/android/common/ui/MySwitch;->j:I

    .line 285
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->C:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 278
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->l:Ljava/lang/CharSequence;

    .line 352
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->k:Ljava/lang/CharSequence;

    .line 343
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    .line 325
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/android/common/ui/MySwitch;->g:I

    .line 303
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->b:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setTrackOffResource(I)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/common/ui/MySwitch;->a:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->requestLayout()V

    return-void
.end method

.method public setTrackOnResource(I)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/android/common/ui/MySwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 721
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->e:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/common/ui/MySwitch;->f:Landroid/graphics/drawable/Drawable;

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

.class public Lcom/zte/mifavor/widget/RippleDrawableZTE;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawableZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;
    }
.end annotation


# static fields
.field private static final RIPPLE_DELAY:I = 0xf0

.field private static final RIPPLE_TIME:I = 0x226


# instance fields
.field private final TAG:Ljava/lang/String;

.field fastEaseInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mBackGgroud:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCircleX:I

.field private mCircleY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mRippleAnim:Landroid/animation/ObjectAnimator;

.field private mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

.field private mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

.field private origAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const-string p1, "RippleDrawableZTE"

    .line 34
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->TAG:Ljava/lang/String;

    .line 35
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->fastEaseInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mBackGgroud:Landroid/graphics/drawable/Drawable;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;-><init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    .line 57
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->createRippleAnim()V

    .line 58
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/RippleDrawableZTE;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->origAlpha:I

    return p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/RippleDrawableZTE;)Landroid/graphics/Paint;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/RippleDrawableZTE;Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    return-object p1
.end method

.method private obtainAttributesZTE(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p2, :cond_0

    .line 230
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 232
    invoke-virtual {p2, p3, p4, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createRippleAnim()V
    .locals 4

    const-string v0, "radius"

    const/4 v1, 0x2

    .line 94
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-static {v2}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$000(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->fastEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE$1;-><init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    iget v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mCircleX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mCircleY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/zte/extres/R$styleable;->RippleDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->obtainAttributesZTE(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    sget v2, Lcom/zte/extres/R$styleable;->RippleDrawable_android_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$302(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 222
    iget-object v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    sget v2, Lcom/zte/extres/R$styleable;->RippleDrawable_android_radius:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$002(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;I)I

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public initAnim()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-static {v1}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$300(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->getState()[I

    move-result-object v2

    const v3, 0x1a00ff00

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "RippleDrawableZTE"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState.mColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-static {v2}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$300(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->getState()[I

    move-result-object v3

    const/high16 v4, 0x1a000000

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->origAlpha:I

    const-string v0, "RippleDrawableZTE"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->origAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->createRippleAnim()V

    const-string v0, "opacity"

    const/4 v1, 0x2

    .line 126
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x136

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/zte/mifavor/widget/RippleDrawableZTE$2;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE$2;-><init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleOpacityAnim:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isProjected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 73
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    iget-object v2, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-direct {v1, p0, v2, v0}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;-><init>(Lcom/zte/mifavor/widget/RippleDrawableZTE;Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 76
    iput-object v1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    iput-object p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mBounds:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mCircleX:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mCircleY:I

    .line 87
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-static {v0}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$000(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mState:Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;->access$002(Lcom/zte/mifavor/widget/RippleDrawableZTE$RippleState;I)I

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->initAnim()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 7

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_2

    aget v4, p1, v1

    const v5, 0x101009e

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    move v3, v6

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRippleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 178
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setHotspot(FF)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->origAlpha:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/zte/mifavor/widget/RippleDrawableZTE;->mRadius:I

    .line 209
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/RippleDrawableZTE;->invalidateSelf()V

    return-void
.end method

.method public setState([I)Z
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    move-result p0

    return p0
.end method

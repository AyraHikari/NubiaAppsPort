.class public Lcn/nubia/commonui/widget/NubiaSwitch;
.super Landroid/widget/CompoundButton;
.source "NubiaSwitch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0x96

.field private static final THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/commonui/util/FloatProperty<",
            "Lcn/nubia/commonui/widget/NubiaSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mDragSwitch:Z

.field private mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private final mRectParameters:Landroid/graphics/Rect;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinHeight:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

.field private mSwitchWidth:I

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbOffsetTrack:I

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 110
    sput-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->CHECKED_STATE_SET:[I

    .line 1256
    new-instance v0, Lcn/nubia/commonui/widget/NubiaSwitch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04010d

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f1100d0

    .line 153
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragSwitch:Z

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 179
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 185
    sget-object v3, Lcn/nubia/gallery3d/R$styleable;->NubiaSwitch:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x8

    .line 189
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 193
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const p3, 0x7f0801c3

    .line 197
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 199
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    const/16 p3, 0xa

    .line 203
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 205
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    const p3, 0x7f0701f6

    .line 208
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    const/4 p3, 0x7

    .line 209
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    const/4 p3, 0x6

    .line 210
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    const/16 p3, 0x9

    .line 213
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    const/4 p3, 0x3

    .line 215
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    const/4 p3, 0x2

    .line 217
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    const/4 p3, 0x4

    .line 219
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 221
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    const/4 p3, 0x5

    .line 224
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 228
    invoke-virtual {p0, p1, p3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 230
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    .line 234
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    .line 237
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->refreshDrawableState()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaSwitch;)F
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaSwitch;F)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 864
    :goto_0
    sget-object v1, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x96

    .line 866
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 867
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 869
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 827
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 828
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 829
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 879
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

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

    .line 1147
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 1148
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbScrollRange()I

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

    .line 1152
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1154
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1157
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1158
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    goto :goto_0

    .line 1160
    :cond_0
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1162
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Lcn/nubia/commonui/util/Insets;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Lcn/nubia/commonui/util/Insets;->right:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, v0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 5

    .line 724
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbOffset()I

    move-result v0

    .line 726
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 727
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    sub-int/2addr v1, v2

    .line 728
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 729
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v0, v3

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    add-int/2addr v0, v2

    .line 731
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

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

.method private isLayoutRtlNubia()Z
    .locals 2

    .line 915
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 708
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0, p1, p0}, Lcn/nubia/commonui/util/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 710
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10018b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 714
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 715
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    .line 714
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

.method private setSwitchTypefaceByIndex(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 331
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 327
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 323
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 335
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private setThumbPosition(F)V
    .locals 0

    .line 888
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 889
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    .line 839
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 844
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 848
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 849
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    move v0, v2

    goto :goto_1

    .line 852
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    .line 855
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    .line 857
    :cond_3
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 859
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public constrain(FFF)F
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

.method public constrain(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method public constrain(JJJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    cmp-long p3, p1, p5

    if-lez p3, :cond_1

    move-wide p1, p5

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 980
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 981
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 982
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 983
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    .line 984
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 986
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    add-int/2addr v5, v1

    .line 987
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbOffset()I

    move-result v6

    add-int/2addr v5, v6

    .line 990
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 992
    sget-object v6, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    goto :goto_0

    .line 994
    :cond_0
    sget-object v6, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 998
    :goto_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 999
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1001
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1008
    sget-object v7, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    if-eq v6, v7, :cond_2

    .line 1009
    iget v7, v6, Lcn/nubia/commonui/util/Insets;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1012
    iget v7, v6, Lcn/nubia/commonui/util/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_1

    .line 1013
    iget v7, v6, Lcn/nubia/commonui/util/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_1
    move v7, v2

    .line 1015
    :goto_1
    iget v8, v6, Lcn/nubia/commonui/util/Insets;->right:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 1018
    iget v8, v6, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_3

    .line 1019
    iget v6, v6, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_2
    move v7, v2

    :cond_3
    move v6, v4

    .line 1022
    :goto_2
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1027
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1028
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1029
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 1030
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 1032
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1037
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1043
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1181
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1183
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1189
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1190
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1120
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1121
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1132
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1133
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 429
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 404
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 587
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 452
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 493
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1217
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1219
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1223
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1227
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 1229
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1172
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1173
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    sget-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1048
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1051
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1052
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1054
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1056
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1059
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 1060
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 1061
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 1062
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1064
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1066
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1067
    sget-object v5, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1068
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1069
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Lcn/nubia/commonui/util/Insets;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1070
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Lcn/nubia/commonui/util/Insets;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1072
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1073
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1074
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1077
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1081
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 1084
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1087
    :cond_3
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    :goto_2
    if-eqz v1, :cond_7

    .line 1090
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v5

    .line 1091
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    .line 1092
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1095
    :cond_5
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    .line 1099
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1100
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_3

    .line 1102
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result v5

    .line 1105
    :goto_3
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    .line 1106
    div-int/lit8 v2, v2, 0x2

    .line 1107
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    .line 1108
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1109
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1112
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1235
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1236
    const-class v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1241
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1242
    const-class v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1243
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 1244
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1245
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1247
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1249
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 921
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 925
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 926
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 927
    iget-object p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 928
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 934
    :goto_0
    sget-object p3, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 935
    iget p4, p3, Lcn/nubia/commonui/util/Insets;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 936
    iget p3, p3, Lcn/nubia/commonui/util/Insets;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p2

    move p4, p1

    .line 942
    :goto_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLayoutRtlNubia()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 943
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p4

    .line 944
    iget p5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr p5, p3

    sub-int/2addr p5, p4

    sub-int/2addr p5, p1

    goto :goto_2

    .line 946
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int p5, p3, p1

    .line 947
    iget p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    sub-int p3, p5, p3

    add-int/2addr p3, p4

    add-int/2addr p3, p1

    .line 951
    :goto_2
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_3

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p2, p1, 0x2

    .line 953
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    const/16 p4, 0x10

    if-eq p1, p4, :cond_5

    const/16 p4, 0x50

    if-eq p1, p4, :cond_4

    .line 956
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result p1

    add-int/2addr p1, p2

    .line 957
    iget p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    add-int/2addr p2, p1

    goto :goto_4

    .line 967
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    sub-int p2, p1, p2

    .line 968
    iget p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    sub-int p1, p2, p1

    goto :goto_4

    .line 961
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    iget p4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    div-int/lit8 v0, p4, 0x2

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    add-int p2, p1, p4

    .line 972
    :goto_4
    iput p3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 973
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 974
    iput p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 975
    iput p5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 623
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 628
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 629
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    .line 633
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 636
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 639
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 641
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    .line 649
    :goto_0
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eqz v4, :cond_3

    .line 650
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 651
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    .line 657
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    .line 661
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 662
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 663
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 665
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 671
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 672
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 673
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 674
    sget-object v4, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 675
    iget v5, v4, Lcn/nubia/commonui/util/Insets;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 676
    iget v4, v4, Lcn/nubia/commonui/util/Insets;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    :cond_5
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 680
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 681
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    .line 682
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    .line 684
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 686
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 687
    iget p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    if-ge v1, p2, :cond_6

    .line 688
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    invoke-virtual {p0, v0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_6
    if-ge p1, v1, :cond_7

    .line 691
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result p1

    add-int/2addr v0, p1

    .line 692
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    .line 691
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 699
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 701
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 749
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 750
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

    .line 764
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 784
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 785
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbScrollRange()I

    move-result v0

    .line 786
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

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

    .line 798
    :goto_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    add-float/2addr v0, v2

    invoke-virtual {p0, v0, v4, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->constrain(FFF)F

    move-result v0

    .line 799
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 800
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 801
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    :cond_4
    return v1

    .line 770
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 772
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    sub-float v4, v3, v4

    .line 773
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 774
    :cond_6
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 775
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 776
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 777
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    return v1

    .line 811
    :cond_7
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    if-ne v0, v2, :cond_8

    .line 812
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 818
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 753
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 755
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 756
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 757
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 758
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    .line 823
    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 899
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 903
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result p1

    .line 905
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 909
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelPositionAnimator()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 910
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 608
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    .line 609
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    .line 550
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    .line 417
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 393
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 254
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, p1

    .line 263
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 264
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    :cond_1
    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypefaceByIndex(II)V

    .line 271
    new-instance p1, Lcn/nubia/commonui/util/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/nubia/commonui/util/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    const/4 p2, 0x1

    .line 272
    invoke-interface {p1, p2}, Lcn/nubia/commonui/util/TransformationMethod2;->setLengthChangesAllowed(Z)V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 379
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 380
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 347
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 356
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 357
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 359
    :cond_4
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 360
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 361
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 597
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 578
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 506
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 508
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 440
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    .line 441
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 466
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1211
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

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

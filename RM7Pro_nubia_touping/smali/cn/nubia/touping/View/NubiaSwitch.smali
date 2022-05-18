.class public Lcn/nubia/touping/View/NubiaSwitch;
.super Landroid/widget/CompoundButton;
.source "NubiaSwitch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0x96

.field private static final THUMB_POS:Lcn/nubia/touping/Utils/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/touping/Utils/util/FloatProperty",
            "<",
            "Lcn/nubia/touping/View/NubiaSwitch;",
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

.field private mSwitchTransformationMethod:Lcn/nubia/touping/Utils/util/TransformationMethod2;

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

    .prologue
    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/touping/View/NubiaSwitch;->CHECKED_STATE_SET:[I

    .line 1257
    new-instance v0, Lcn/nubia/touping/View/NubiaSwitch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/touping/View/NubiaSwitch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/touping/View/NubiaSwitch;->THUMB_POS:Lcn/nubia/touping/Utils/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/touping/View/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const v0, 0x7f0101cc

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/touping/View/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/touping/View/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 106
    iput-boolean v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mDragSwitch:Z

    .line 109
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 180
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 183
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 186
    sget-object v4, Lcn/nubia/touping/R$styleable;->NubiaSwitch:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    :cond_0
    const v4, 0x7f0200a1

    .line 198
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 204
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 206
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 208
    :cond_2
    const v4, 0x7f0900a6

    .line 209
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbOffsetTrack:I

    .line 210
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 211
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 212
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    .line 214
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbTextPadding:I

    .line 216
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinWidth:I

    .line 218
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinHeight:I

    .line 220
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchPadding:I

    .line 222
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSplitTrack:Z

    .line 225
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 228
    .local v1, "appearance":I
    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0, p1, v1}, Lcn/nubia/touping/View/NubiaSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 231
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 234
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    .line 235
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mMinFlingVelocity:I

    .line 238
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->refreshDrawableState()V

    .line 239
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/View/NubiaSwitch;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/View/NubiaSwitch;

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/View/NubiaSwitch;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/View/NubiaSwitch;
    .param p1, "x1"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 8
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 864
    if-eqz p1, :cond_0

    move v0, v1

    .line 865
    .local v0, "targetPosition":F
    :goto_0
    sget-object v2, Lcn/nubia/touping/View/NubiaSwitch;->THUMB_POS:Lcn/nubia/touping/Utils/util/FloatProperty;

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 867
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 868
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e23d70a    # 0.16f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 869
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 870
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 871
    return-void

    .line 864
    .end local v0    # "targetPosition":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 877
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 828
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 829
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 830
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 831
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 832
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 3

    .prologue
    .line 1148
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    .line 1149
    .local v0, "thumbPosition":F
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    .line 1153
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1154
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1155
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1158
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1159
    sget-object v0, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .line 1163
    .local v0, "insets":Lcn/nubia/touping/Utils/util/Insets;
    :goto_0
    iget v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    iget v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/touping/Utils/util/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/touping/Utils/util/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v2, v3

    .line 1167
    .end local v0    # "insets":Lcn/nubia/touping/Utils/util/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 1161
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .restart local v0    # "insets":Lcn/nubia/touping/Utils/util/Insets;
    goto :goto_0

    .line 1167
    .end local v0    # "insets":Lcn/nubia/touping/Utils/util/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 725
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getThumbOffset()I

    move-result v2

    .line 727
    .local v2, "thumbOffset":I
    iget-object v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 728
    iget v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTop:I

    iget v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    sub-int v4, v5, v6

    .line 729
    .local v4, "thumbTop":I
    iget v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchLeft:I

    add-int/2addr v5, v2

    iget v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    sub-int v1, v5, v6

    .line 730
    .local v1, "thumbLeft":I
    iget v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    add-int v3, v5, v6

    .line 732
    .local v3, "thumbRight":I
    iget v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchBottom:I

    iget v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    add-int v0, v5, v6

    .line 733
    .local v0, "thumbBottom":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isLayoutRtlNubia()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 916
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 709
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/touping/Utils/util/TransformationMethod2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/touping/Utils/util/TransformationMethod2;

    .line 710
    invoke-interface {v0, p1, p0}, Lcn/nubia/touping/Utils/util/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 711
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 716
    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    .line 715
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 710
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 336
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcn/nubia/touping/View/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 337
    return-void

    .line 324
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 325
    goto :goto_0

    .line 328
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 329
    goto :goto_0

    .line 332
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 889
    iput p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    .line 890
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->invalidate()V

    .line 891
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 840
    iput v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 845
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 847
    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 848
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 849
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 850
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 851
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 858
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :goto_1
    iget-object v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual {p0, v1}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 860
    invoke-direct {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 861
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_0
    move v0, v3

    .line 845
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v3

    .line 851
    goto :goto_1

    .line 853
    :cond_2
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 856
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public constrain(FFF)F
    .locals 1
    .param p1, "amount"    # F
    .param p2, "low"    # F
    .param p3, "high"    # F

    .prologue
    .line 745
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .end local p2    # "low":F
    :goto_0
    return p2

    .restart local p2    # "low":F
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method public constrain(III)I
    .locals 0
    .param p1, "amount"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 737
    if-ge p1, p2, :cond_0

    .end local p2    # "low":I
    :goto_0
    return p2

    .restart local p2    # "low":I
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method public constrain(JJJ)J
    .locals 1
    .param p1, "amount"    # J
    .param p3, "low"    # J
    .param p5, "high"    # J

    .prologue
    .line 741
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .end local p3    # "low":J
    :goto_0
    return-wide p3

    .restart local p3    # "low":J
    :cond_0
    cmp-long v0, p1, p5

    if-lez v0, :cond_1

    move-wide p3, p5

    goto :goto_0

    :cond_1
    move-wide p3, p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 982
    .local v2, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchLeft:I

    .line 983
    .local v4, "switchLeft":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTop:I

    .line 984
    .local v6, "switchTop":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchRight:I

    .line 985
    .local v5, "switchRight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchBottom:I

    .line 987
    .local v3, "switchBottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbOffsetTrack:I

    add-int/2addr v15, v4

    .line 988
    invoke-direct/range {p0 .. p0}, Lcn/nubia/touping/View/NubiaSwitch;->getThumbOffset()I

    move-result v16

    add-int v7, v15, v16

    .line 991
    .local v7, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_6

    .line 993
    sget-object v8, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .line 999
    .local v8, "thumbInsets":Lcn/nubia/touping/Utils/util/Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1002
    iget v15, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v15

    .line 1005
    move v12, v4

    .line 1006
    .local v12, "trackLeft":I
    move v14, v6

    .line 1007
    .local v14, "trackTop":I
    move v13, v5

    .line 1008
    .local v13, "trackRight":I
    move v11, v3

    .line 1009
    .local v11, "trackBottom":I
    sget-object v15, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    if-eq v8, v15, :cond_3

    .line 1010
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1013
    :cond_0
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 1014
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1016
    :cond_1
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 1019
    :cond_2
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1020
    iget v15, v8, Lcn/nubia/touping/Utils/util/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v11, v15

    .line 1023
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1028
    .end local v11    # "trackBottom":I
    .end local v12    # "trackLeft":I
    .end local v13    # "trackRight":I
    .end local v14    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 1029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1030
    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v15

    .line 1031
    .local v9, "thumbLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v15, v7

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 1033
    .local v10, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/View/NubiaSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1037
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 1038
    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1044
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1045
    return-void

    .line 995
    .end local v8    # "thumbInsets":Lcn/nubia/touping/Utils/util/Insets;
    :cond_6
    sget-object v8, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .restart local v8    # "thumbInsets":Lcn/nubia/touping/Utils/util/Insets;
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1182
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1184
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1186
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1190
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->invalidate()V

    .line 1195
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1121
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1122
    .local v0, "padding":I
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    iget v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1125
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1133
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1134
    .local v0, "padding":I
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    iget v1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1137
    :cond_0
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1218
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1220
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1224
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1228
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1230
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1232
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1173
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1174
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    sget-object v1, Lcn/nubia/touping/View/NubiaSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcn/nubia/touping/View/NubiaSwitch;->mergeDrawableStates([I[I)[I

    .line 1177
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1049
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1053
    .local v8, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 1054
    .local v17, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    .line 1055
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1060
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTop:I

    .line 1061
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchBottom:I

    .line 1062
    .local v10, "switchBottom":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v12, v14, v18

    .line 1063
    .local v12, "switchInnerTop":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v11, v10, v18

    .line 1065
    .local v11, "switchInnerBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1066
    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    .line 1067
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mSplitTrack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    .line 1068
    sget-object v6, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .line 1069
    .local v6, "insets":Lcn/nubia/touping/Utils/util/Insets;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1070
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v6, Lcn/nubia/touping/Utils/util/Insets;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1071
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Lcn/nubia/touping/Utils/util/Insets;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1073
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1074
    .local v9, "saveCount":I
    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1075
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1076
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1082
    .end local v6    # "insets":Lcn/nubia/touping/Utils/util/Insets;
    .end local v9    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1084
    .restart local v9    # "saveCount":I
    if-eqz v15, :cond_1

    .line 1085
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1088
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/touping/View/NubiaSwitch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/touping/View/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 1090
    .local v13, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v13, :cond_3

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/View/NubiaSwitch;->getDrawableState()[I

    move-result-object v5

    .line 1092
    .local v5, "drawableState":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 1096
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1099
    if-eqz v15, :cond_7

    .line 1100
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1101
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .line 1106
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v4, "cX":I
    :goto_3
    div-int/lit8 v18, v4, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    .line 1107
    .local v7, "left":I
    add-int v18, v12, v11

    div-int/lit8 v18, v18, 0x2

    .line 1108
    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    .line 1109
    .local v16, "top":I
    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1110
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1113
    .end local v4    # "cX":I
    .end local v5    # "drawableState":[I
    .end local v7    # "left":I
    .end local v16    # "top":I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1114
    return-void

    .line 1057
    .end local v9    # "saveCount":I
    .end local v10    # "switchBottom":I
    .end local v11    # "switchInnerBottom":I
    .end local v12    # "switchInnerTop":I
    .end local v13    # "switchText":Landroid/text/Layout;
    .end local v14    # "switchTop":I
    .end local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 1078
    .restart local v10    # "switchBottom":I
    .restart local v11    # "switchInnerBottom":I
    .restart local v12    # "switchInnerTop":I
    .restart local v14    # "switchTop":I
    .restart local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1088
    .restart local v9    # "saveCount":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/touping/View/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_2

    .line 1103
    .restart local v5    # "drawableState":[I
    .restart local v13    # "switchText":Landroid/text/Layout;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/touping/View/NubiaSwitch;->getWidth()I

    move-result v4

    .restart local v4    # "cX":I
    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1236
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1237
    const-class v0, Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1238
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1242
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1243
    const-class v3, Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1244
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 1245
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1246
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1247
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1248
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1244
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1250
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1251
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 922
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 924
    const/4 v1, 0x0

    .line 925
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 926
    .local v2, "opticalInsetRight":I
    iget-object v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    .line 927
    iget-object v8, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 928
    .local v8, "trackPadding":Landroid/graphics/Rect;
    iget-object v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 929
    iget-object v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 935
    :goto_0
    sget-object v0, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .line 936
    .local v0, "insets":Lcn/nubia/touping/Utils/util/Insets;
    const/4 v9, 0x0

    iget v10, v0, Lcn/nubia/touping/Utils/util/Insets;->left:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 937
    const/4 v9, 0x0

    iget v10, v0, Lcn/nubia/touping/Utils/util/Insets;->right:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 943
    .end local v0    # "insets":Lcn/nubia/touping/Utils/util/Insets;
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isLayoutRtlNubia()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 944
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingLeft()I

    move-result v9

    add-int v4, v9, v1

    .line 945
    .local v4, "switchLeft":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v1

    sub-int v5, v9, v2

    .line 952
    .local v5, "switchRight":I
    :goto_1
    iget-object v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_3

    const/4 v7, 0x0

    .line 954
    .local v7, "topBottomPadding":I
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    sparse-switch v9, :sswitch_data_0

    .line 957
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingTop()I

    move-result v9

    add-int v6, v9, v7

    .line 958
    .local v6, "switchTop":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchHeight:I

    add-int v3, v6, v9

    .line 973
    .local v3, "switchBottom":I
    :goto_3
    iput v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchLeft:I

    .line 974
    iput v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTop:I

    .line 975
    iput v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchBottom:I

    .line 976
    iput v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchRight:I

    .line 977
    return-void

    .line 931
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .end local v7    # "topBottomPadding":I
    .restart local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 947
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v2

    .line 948
    .restart local v5    # "switchRight":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    sub-int v9, v5, v9

    add-int/2addr v9, v1

    add-int v4, v9, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    .line 953
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 962
    .restart local v7    # "topBottomPadding":I
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    add-int v6, v9, v7

    .line 964
    .restart local v6    # "switchTop":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchHeight:I

    add-int v3, v6, v9

    .line 965
    .restart local v3    # "switchBottom":I
    goto :goto_3

    .line 968
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v3, v9, v7

    .line 969
    .restart local v3    # "switchBottom":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchHeight:I

    sub-int v6, v3, v9

    .restart local v6    # "switchTop":I
    goto :goto_3

    .line 954
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 624
    iget-boolean v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    if-eqz v11, :cond_1

    .line 625
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    if-nez v11, :cond_0

    .line 626
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcn/nubia/touping/View/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 629
    :cond_0
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    if-nez v11, :cond_1

    .line 630
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcn/nubia/touping/View/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    .line 634
    :cond_1
    iget-object v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 637
    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    .line 639
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 640
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    .line 642
    .local v9, "thumbWidth":I
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 650
    .local v8, "thumbHeight":I
    :goto_0
    iget-boolean v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    if-eqz v11, :cond_5

    .line 651
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 652
    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcn/nubia/touping/View/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    .line 658
    .local v1, "maxTextWidth":I
    :goto_1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbWidth:I

    .line 662
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    .line 663
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 664
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 672
    .local v10, "trackHeight":I
    :goto_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 673
    .local v4, "paddingLeft":I
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 674
    .local v5, "paddingRight":I
    iget-object v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 675
    sget-object v0, Lcn/nubia/touping/Utils/util/Insets;->NONE:Lcn/nubia/touping/Utils/util/Insets;

    .line 676
    .local v0, "inset":Lcn/nubia/touping/Utils/util/Insets;
    iget v11, v0, Lcn/nubia/touping/Utils/util/Insets;->left:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 677
    iget v11, v0, Lcn/nubia/touping/Utils/util/Insets;->right:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 679
    .end local v0    # "inset":Lcn/nubia/touping/Utils/util/Insets;
    :cond_2
    iget v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinWidth:I

    iget v12, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 681
    .local v7, "switchWidth":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 682
    .local v6, "switchHeight":I
    iput v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchWidth:I

    .line 683
    iput v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchHeight:I

    .line 685
    invoke-super/range {p0 .. p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 687
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getMeasuredHeight()I

    move-result v2

    .line 688
    .local v2, "measuredHeight":I
    if-ge v2, v6, :cond_7

    iget v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinHeight:I

    if-ge v6, v11, :cond_7

    .line 689
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingStart()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingEnd()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinHeight:I

    invoke-virtual {p0, v11, v12}, Lcn/nubia/touping/View/NubiaSwitch;->setMeasuredDimension(II)V

    .line 696
    :cond_3
    :goto_3
    return-void

    .line 644
    .end local v1    # "maxTextWidth":I
    .end local v2    # "measuredHeight":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "switchHeight":I
    .end local v7    # "switchWidth":I
    .end local v8    # "thumbHeight":I
    .end local v9    # "thumbWidth":I
    .end local v10    # "trackHeight":I
    :cond_4
    const/4 v9, 0x0

    .line 645
    .restart local v9    # "thumbWidth":I
    const/4 v8, 0x0

    .restart local v8    # "thumbHeight":I
    goto :goto_0

    .line 655
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "maxTextWidth":I
    goto :goto_1

    .line 666
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 667
    const/4 v10, 0x0

    .restart local v10    # "trackHeight":I
    goto :goto_2

    .line 691
    .restart local v2    # "measuredHeight":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingRight":I
    .restart local v6    # "switchHeight":I
    .restart local v7    # "switchWidth":I
    :cond_7
    if-ge v2, v6, :cond_3

    .line 692
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingStart()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingEnd()I

    move-result v12

    add-int/2addr v11, v12

    .line 693
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingTop()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    .line 692
    invoke-virtual {p0, v11, v12}, Lcn/nubia/touping/View/NubiaSwitch;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 702
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 703
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_0
    return-void

    .line 702
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 750
    iget-object v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 752
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 824
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 754
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 755
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 756
    .local v6, "y":F
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lcn/nubia/touping/View/NubiaSwitch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 757
    iput v8, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    .line 758
    iput v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchX:F

    .line 759
    iput v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchY:F

    goto :goto_0

    .line 765
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 771
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 772
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 773
    .restart local v6    # "y":F
    iget v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchY:F

    sub-float v7, v6, v7

    .line 774
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 775
    :cond_1
    iput v11, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    .line 776
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 777
    iput v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchX:F

    .line 778
    iput v6, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchY:F

    move v7, v8

    .line 779
    goto :goto_1

    .line 785
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 786
    .restart local v5    # "x":F
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getThumbScrollRange()I

    move-result v4

    .line 787
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchX:F

    sub-float v3, v5, v9

    .line 789
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_3

    .line 790
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 799
    .local v1, "dPos":F
    :goto_2
    iget v9, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-virtual {p0, v9, v10, v7}, Lcn/nubia/touping/View/NubiaSwitch;->constrain(FFF)F

    move-result v2

    .line 800
    .local v2, "newPos":F
    iget v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_2

    .line 801
    iput v5, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchX:F

    .line 802
    invoke-direct {p0, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setThumbPosition(F)V

    :cond_2
    move v7, v8

    .line 804
    goto :goto_1

    .line 794
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_3
    cmpl-float v9, v3, v10

    if-lez v9, :cond_4

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_3
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .line 812
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    if-ne v7, v11, :cond_5

    .line 813
    invoke-direct {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 815
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 816
    goto/16 :goto_1

    .line 818
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTouchMode:I

    .line 819
    iget-object v7, p0, Lcn/nubia/touping/View/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 765
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 900
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 904
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result p1

    .line 906
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-direct {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->animateThumbToCheckedState(Z)V

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/View/NubiaSwitch;->cancelPositionAnimator()V

    .line 911
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    .line 608
    iget-boolean v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 609
    iput-boolean p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mShowText:Z

    .line 610
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 612
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSplitTrack:Z

    .line 551
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->invalidate()V

    .line 552
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 417
    iput p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchMinWidth:I

    .line 418
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 419
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 393
    iput p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchPadding:I

    .line 394
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 395
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 254
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 255
    iput-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 261
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 263
    .local v1, "ts":I
    if-eqz v1, :cond_0

    .line 264
    int-to-float v2, v1

    iget-object v3, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 266
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 270
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setSwitchTypefaceByIndex(II)V

    .line 272
    new-instance v2, Lcn/nubia/touping/Utils/util/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/touping/Utils/util/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/touping/Utils/util/TransformationMethod2;

    .line 273
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/touping/Utils/util/TransformationMethod2;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcn/nubia/touping/Utils/util/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 318
    return-void

    .line 258
    .end local v1    # "ts":I
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 377
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 378
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 380
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 381
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->invalidate()V

    .line 383
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 346
    if-lez p2, :cond_4

    .line 347
    if-nez p1, :cond_1

    .line 348
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 353
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 355
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 356
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 357
    .local v0, "need":I
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 358
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 364
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 350
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 355
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 358
    goto :goto_2

    .line 360
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 361
    iget-object v2, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 362
    invoke-virtual {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 597
    iput-object p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 598
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 599
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 578
    iput-object p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 579
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 580
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 506
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 509
    :cond_0
    iput-object p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 514
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 441
    iput p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbTextPadding:I

    .line 442
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 443
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 464
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 467
    :cond_0
    iput-object p1, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->requestLayout()V

    .line 472
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 483
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 896
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/View/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

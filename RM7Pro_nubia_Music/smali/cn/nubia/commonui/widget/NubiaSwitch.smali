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
            "Lcn/nubia/commonui/util/FloatProperty",
            "<",
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

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->CHECKED_STATE_SET:[I

    .line 1263
    new-instance v0, Lcn/nubia/commonui/widget/NubiaSwitch$2;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 135
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 105
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragSwitch:Z

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 179
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Landroid/text/TextPaint;->density:F

    .line 185
    sget-object v1, Lcn/nubia/commonui/R$styleable;->NubiaSwitch:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumb:I

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumb:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 196
    :cond_0
    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_switch_thumb_material:I

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    :cond_1
    sget v2, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_track:I

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    :cond_2
    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_switch_thumb_offset_track:I

    .line 208
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    .line 209
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_textOn:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 210
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_textOff:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 211
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_showText:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    .line 213
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumbTextPadding:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    .line 215
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchMinWidth:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    .line 217
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchMinHight:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    .line 219
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchPadding:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 221
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_splitTrack:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    .line 224
    sget v0, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchTextAppearance:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 227
    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 230
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    .line 234
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    .line 237
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->refreshDrawableState()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaSwitch;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaSwitch;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaSwitch;F)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 863
    if-eqz p1, :cond_0

    move v0, v1

    .line 864
    :goto_0
    sget-object v2, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 866
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 867
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 870
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaSwitch$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaSwitch$1;-><init>(Lcn/nubia/commonui/widget/NubiaSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 876
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 877
    return-void

    .line 863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 883
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 827
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 828
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 829
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 830
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 831
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 886
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

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
    .locals 2

    .prologue
    .line 1154
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 1155
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

    .prologue
    .line 1159
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1161
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1164
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1165
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1169
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget v2, v0, Lcn/nubia/commonui/util/Insets;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Lcn/nubia/commonui/util/Insets;->right:I

    sub-int v0, v1, v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v0, v1

    .line 1173
    :goto_1
    return v0

    .line 1167
    :cond_0
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    goto :goto_0

    .line 1173
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 5

    .prologue
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
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    add-int/2addr v0, v2

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    sub-int/2addr v0, v2

    .line 729
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    add-int/2addr v2, v3

    .line 731
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    add-int/2addr v3, v4

    .line 732
    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    int-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    int-to-float v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutRtlNubia()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 922
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getLayoutDirection()I

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

    .prologue
    .line 708
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

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

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$string;->nubia_capital_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 715
    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    .line 714
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 336
    return-void

    .line 323
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 327
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 331
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 321
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

    .prologue
    .line 895
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 896
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    .line 897
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 839
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 846
    :goto_0
    if-eqz v2, :cond_3

    .line 847
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 848
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 849
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 850
    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 857
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 859
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 860
    return-void

    :cond_0
    move v2, v1

    .line 844
    goto :goto_0

    :cond_1
    move v0, v1

    .line 850
    goto :goto_1

    .line 852
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    .line 855
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public constrain(FFF)F
    .locals 1

    .prologue
    .line 744
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    :goto_0
    return p2

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

    .prologue
    .line 736
    if-ge p1, p2, :cond_0

    :goto_0
    return p2

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

    .prologue
    .line 740
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    :goto_0
    return-wide p3

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
    .locals 10

    .prologue
    .line 987
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 988
    iget v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 989
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 990
    iget v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    .line 991
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 993
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    add-int/2addr v0, v6

    .line 994
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbOffset()I

    move-result v1

    add-int/2addr v1, v0

    .line 997
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 999
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1005
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 1006
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1008
    iget v4, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    .line 1015
    sget-object v1, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    if-eq v0, v1, :cond_6

    .line 1016
    iget v1, v0, Lcn/nubia/commonui/util/Insets;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-le v1, v8, :cond_0

    .line 1019
    :cond_0
    iget v1, v0, Lcn/nubia/commonui/util/Insets;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-le v1, v8, :cond_5

    .line 1020
    iget v1, v0, Lcn/nubia/commonui/util/Insets;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v8

    add-int/2addr v1, v2

    .line 1022
    :goto_1
    iget v8, v0, Lcn/nubia/commonui/util/Insets;->right:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_1

    .line 1025
    :cond_1
    iget v8, v0, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    .line 1026
    iget v0, v0, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v8

    sub-int v0, v3, v0

    .line 1029
    :goto_2
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v1, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v4

    .line 1034
    :goto_3
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1035
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1036
    iget v1, v5, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    .line 1037
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v0, v4

    iget v4, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    .line 1039
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1042
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1043
    if-eqz v4, :cond_2

    .line 1044
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1050
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    return-void

    .line 1001
    :cond_3
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v0, v3

    move v1, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1188
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1190
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1193
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1196
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1200
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    .line 1201
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 1127
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1128
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1129
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1131
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1140
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1143
    :cond_0
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1226
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1234
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1238
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 1179
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1180
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    sget-object v1, Lcn/nubia/commonui/widget/NubiaSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->mergeDrawableStates([I[I)[I

    .line 1183
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 1055
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1058
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1059
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1060
    if-eqz v1, :cond_4

    .line 1061
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1066
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 1067
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 1068
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 1069
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1071
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1072
    if-eqz v1, :cond_0

    .line 1073
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 1074
    sget-object v5, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1075
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1076
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Lcn/nubia/commonui/util/Insets;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1077
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Lcn/nubia/commonui/util/Insets;->right:I

    sub-int v5, v6, v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1079
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1080
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1081
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1082
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1088
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1090
    if-eqz v4, :cond_1

    .line 1091
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1094
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    move-object v1, v0

    .line 1096
    :goto_2
    if-eqz v1, :cond_3

    .line 1097
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1098
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 1099
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1102
    :cond_2
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v0, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 1105
    if-eqz v4, :cond_7

    .line 1106
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1107
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    .line 1112
    :goto_3
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 1113
    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1114
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1115
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1116
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1119
    :cond_3
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1120
    return-void

    .line 1063
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 1084
    :cond_5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1094
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    move-object v1, v0

    goto :goto_2

    .line 1109
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result v0

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1242
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1243
    const-class v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1244
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1248
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1249
    const-class v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 1251
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1252
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    :cond_0
    :goto_1
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1256
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 928
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 932
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 934
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 935
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 941
    :goto_0
    sget-object v3, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 942
    iget v2, v3, Lcn/nubia/commonui/util/Insets;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 943
    iget v3, v3, Lcn/nubia/commonui/util/Insets;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 949
    :goto_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLayoutRtlNubia()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 951
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v4, v3

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    move v2, v0

    move v0, v3

    .line 958
    :goto_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 960
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    .line 963
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    .line 964
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    add-int/2addr v1, v3

    .line 979
    :goto_4
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 980
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 981
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 982
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    .line 983
    return-void

    .line 937
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 954
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    sub-int v4, v3, v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_2

    .line 959
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 968
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 970
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    add-int/2addr v1, v3

    .line 971
    goto :goto_4

    .line 974
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 975
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    sub-int v3, v1, v3

    goto :goto_4

    :cond_3
    move v0, v1

    move v2, v1

    goto/16 :goto_1

    .line 960
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

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
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 636
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 639
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 641
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 649
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eqz v3, :cond_5

    .line 650
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 651
    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 657
    :goto_1
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    .line 661
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 662
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 663
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 671
    :goto_2
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 672
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 673
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 674
    sget-object v4, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 675
    iget v5, v4, Lcn/nubia/commonui/util/Insets;->left:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 676
    iget v4, v4, Lcn/nubia/commonui/util/Insets;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 678
    :cond_2
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 680
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 681
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    .line 682
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    .line 684
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 686
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getMeasuredHeight()I

    move-result v1

    .line 687
    if-ge v1, v0, :cond_7

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    if-ge v0, v3, :cond_7

    .line 688
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    .line 695
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v1

    move v2, v1

    .line 644
    goto :goto_0

    :cond_5
    move v3, v1

    .line 654
    goto :goto_1

    .line 665
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 690
    :cond_7
    if-ge v1, v0, :cond_3

    .line 691
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 692
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 701
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 702
    :goto_0
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 749
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    packed-switch v0, :pswitch_data_0

    .line 823
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 753
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 755
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 757
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 758
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    goto :goto_0

    .line 764
    :pswitch_2
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 770
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 772
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    sub-float v3, v1, v3

    .line 773
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 774
    :cond_1
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 775
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 776
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 777
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    move v0, v2

    .line 778
    goto :goto_1

    .line 784
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 785
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbScrollRange()I

    move-result v0

    .line 786
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    sub-float v4, v3, v4

    .line 788
    if-eqz v0, :cond_3

    .line 789
    int-to-float v0, v0

    div-float v0, v4, v0

    .line 798
    :goto_2
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    add-float/2addr v0, v4

    invoke-virtual {p0, v0, v5, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->constrain(FFF)F

    move-result v0

    .line 799
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 800
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 801
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    :cond_2
    move v0, v2

    .line 803
    goto :goto_1

    .line 793
    :cond_3
    cmpl-float v0, v4, v5

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    .line 811
    :pswitch_5
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    if-ne v0, v6, :cond_5

    .line 812
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 815
    goto/16 :goto_1

    .line 817
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 818
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 764
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 910
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    .line 912
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->animateThumbToCheckedState(Z)V

    .line 919
    :goto_0
    return-void

    .line 916
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelPositionAnimator()V

    .line 917
    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 608
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    .line 609
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 611
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .prologue
    .line 549
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    .line 550
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    .line 551
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .prologue
    .line 416
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    .line 417
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 418
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .prologue
    .line 392
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 393
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 394
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$color;->nubia_primary_text_default_material_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    .line 254
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_switch_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    int-to-float v1, v0

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 269
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypefaceByIndex(II)V

    .line 271
    new-instance v0, Lcn/nubia/commonui/util/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/util/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    .line 272
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/commonui/util/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 317
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
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

    .line 382
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    if-lez p2, :cond_4

    .line 346
    if-nez p1, :cond_1

    .line 347
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 352
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 354
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 355
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    .line 356
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 357
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 363
    :goto_3
    return-void

    .line 349
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 354
    goto :goto_1

    :cond_3
    move v0, v2

    .line 357
    goto :goto_2

    .line 359
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 360
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 361
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 597
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 598
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 578
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 579
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 508
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 509
    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 513
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    .line 441
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 442
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 466
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 471
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 902
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1218
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

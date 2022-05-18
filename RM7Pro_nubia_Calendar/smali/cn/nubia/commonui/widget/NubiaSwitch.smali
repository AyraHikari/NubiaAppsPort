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

    .line 1256
    new-instance v0, Lcn/nubia/commonui/widget/NubiaSwitch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 105
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragSwitch:Z

    .line 108
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 179
    new-instance v4, Landroid/text/TextPaint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 182
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 185
    sget-object v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumb:I

    .line 189
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mInitThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumb:I

    .line 191
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 196
    :cond_0
    sget v4, Lcn/nubia/commonui/R$drawable;->nubia_switch_thumb_material:I

    .line 197
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    :cond_1
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_track:I

    .line 203
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    :cond_2
    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_switch_thumb_offset_track:I

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    .line 209
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_textOn:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 210
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_textOff:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 211
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_showText:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    .line 213
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_thumbTextPadding:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    .line 215
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchMinWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    .line 217
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchMinHight:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    .line 219
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchPadding:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 221
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_splitTrack:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    .line 224
    sget v4, Lcn/nubia/commonui/R$styleable;->NubiaSwitch_switchTextAppearance:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 227
    .local v1, "appearance":I
    if-eqz v1, :cond_3

    .line 228
    invoke-virtual {p0, p1, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 230
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 233
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    .line 234
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    .line 237
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->refreshDrawableState()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaSwitch;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSwitch;

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaSwitch;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSwitch;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 8
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 863
    if-eqz p1, :cond_0

    move v0, v1

    .line 864
    .local v0, "targetPosition":F
    :goto_0
    sget-object v2, Lcn/nubia/commonui/widget/NubiaSwitch;->THUMB_POS:Lcn/nubia/commonui/util/FloatProperty;

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 866
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 867
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e23d70a    # 0.16f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 869
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 870
    return-void

    .line 863
    .end local v0    # "targetPosition":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 876
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 827
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 828
    .local v0, "cancel":Landroid/view/MotionEvent;
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
    .line 879
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
    .locals 3

    .prologue
    .line 1147
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 1148
    .local v0, "thumbPosition":F
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbScrollRange()I

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
    .line 1152
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1153
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1154
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1157
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1158
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1162
    .local v0, "insets":Lcn/nubia/commonui/util/Insets;
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/commonui/util/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/commonui/util/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    sub-int/2addr v2, v3

    .line 1166
    .end local v0    # "insets":Lcn/nubia/commonui/util/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 1160
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .restart local v0    # "insets":Lcn/nubia/commonui/util/Insets;
    goto :goto_0

    .line 1166
    .end local v0    # "insets":Lcn/nubia/commonui/util/Insets;
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
    .line 724
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbOffset()I

    move-result v2

    .line 726
    .local v2, "thumbOffset":I
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 727
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    sub-int v4, v5, v6

    .line 728
    .local v4, "thumbTop":I
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    add-int/2addr v5, v2

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    sub-int v1, v5, v6

    .line 729
    .local v1, "thumbLeft":I
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    add-int v3, v5, v6

    .line 731
    .local v3, "thumbRight":I
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    add-int v0, v5, v6

    .line 732
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

    .line 915
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
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 708
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    .line 709
    invoke-interface {v0, p1, p0}, Lcn/nubia/commonui/util/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 710
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/commonui/R$string;->nubia_capital_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_0
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

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 709
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 336
    return-void

    .line 323
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 324
    goto :goto_0

    .line 327
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 328
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
    .param p1, "position"    # F

    .prologue
    .line 888
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    .line 889
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    .line 890
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 839
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 846
    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 847
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 848
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 849
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 850
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 857
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mDragThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 859
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 860
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_0
    move v0, v3

    .line 844
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v3

    .line 850
    goto :goto_1

    .line 852
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 855
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

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
    .line 744
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
    .line 736
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
    .line 740
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
    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 981
    .local v2, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 982
    .local v4, "switchLeft":I
    move-object/from16 v0, p0

    iget v6, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 983
    .local v6, "switchTop":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    .line 984
    .local v5, "switchRight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 986
    .local v3, "switchBottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbOffsetTrack:I

    add-int/2addr v15, v4

    .line 987
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbOffset()I

    move-result v16

    add-int v7, v15, v16

    .line 990
    .local v7, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_6

    .line 992
    sget-object v8, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 998
    .local v8, "thumbInsets":Lcn/nubia/commonui/util/Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1001
    iget v15, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v15

    .line 1004
    move v12, v4

    .line 1005
    .local v12, "trackLeft":I
    move v14, v6

    .line 1006
    .local v14, "trackTop":I
    move v13, v5

    .line 1007
    .local v13, "trackRight":I
    move v11, v3

    .line 1008
    .local v11, "trackBottom":I
    sget-object v15, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    if-eq v8, v15, :cond_3

    .line 1009
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1012
    :cond_0
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 1013
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1015
    :cond_1
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 1018
    :cond_2
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1019
    iget v15, v8, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v11, v15

    .line 1022
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1027
    .end local v11    # "trackBottom":I
    .end local v12    # "trackLeft":I
    .end local v13    # "trackRight":I
    .end local v14    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 1028
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1029
    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v15

    .line 1030
    .local v9, "thumbLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v15, v7

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 1032
    .local v10, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1036
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 1037
    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1043
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1044
    return-void

    .line 994
    .end local v8    # "thumbInsets":Lcn/nubia/commonui/util/Insets;
    :cond_6
    sget-object v8, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .restart local v8    # "thumbInsets":Lcn/nubia/commonui/util/Insets;
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1181
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1183
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v0

    .line 1185
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1189
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->invalidate()V

    .line 1194
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1121
    .local v0, "padding":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1124
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1129
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLayoutRtlNubia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1130
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1136
    :cond_0
    :goto_0
    return v0

    .line 1132
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1133
    .local v0, "padding":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
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
    .line 1217
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1219
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1223
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1227
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1229
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1231
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1172
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1173
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    sget-object v1, Lcn/nubia/commonui/widget/NubiaSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->mergeDrawableStates([I[I)[I

    .line 1176
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1048
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 1052
    .local v8, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 1053
    .local v17, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    .line 1054
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1059
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 1060
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 1061
    .local v10, "switchBottom":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v12, v14, v18

    .line 1062
    .local v12, "switchInnerTop":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v11, v10, v18

    .line 1064
    .local v11, "switchInnerBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1065
    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSplitTrack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    .line 1067
    sget-object v6, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 1068
    .local v6, "insets":Lcn/nubia/commonui/util/Insets;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1069
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v6, Lcn/nubia/commonui/util/Insets;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1070
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Lcn/nubia/commonui/util/Insets;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1073
    .local v9, "saveCount":I
    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1074
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1081
    .end local v6    # "insets":Lcn/nubia/commonui/util/Insets;
    .end local v9    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1083
    .restart local v9    # "saveCount":I
    if-eqz v15, :cond_1

    .line 1084
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1087
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 1089
    .local v13, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v13, :cond_3

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getDrawableState()[I

    move-result-object v5

    .line 1091
    .local v5, "drawableState":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 1095
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1098
    if-eqz v15, :cond_7

    .line 1099
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1100
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .line 1105
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v4, "cX":I
    :goto_3
    div-int/lit8 v18, v4, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    .line 1106
    .local v7, "left":I
    add-int v18, v12, v11

    div-int/lit8 v18, v18, 0x2

    .line 1107
    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    .line 1108
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

    .line 1109
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1112
    .end local v4    # "cX":I
    .end local v5    # "drawableState":[I
    .end local v7    # "left":I
    .end local v16    # "top":I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1113
    return-void

    .line 1056
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

    .line 1077
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

    .line 1087
    .restart local v9    # "saveCount":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_2

    .line 1102
    .restart local v5    # "drawableState":[I
    .restart local v13    # "switchText":Landroid/text/Layout;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result v4

    .restart local v4    # "cX":I
    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1235
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1236
    const-class v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1237
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1241
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1242
    const-class v3, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1243
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 1244
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1245
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1246
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1247
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1243
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1249
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1251
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
    .line 921
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 925
    .local v2, "opticalInsetRight":I
    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    .line 926
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 927
    .local v8, "trackPadding":Landroid/graphics/Rect;
    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 928
    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 934
    :goto_0
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 935
    .local v0, "insets":Lcn/nubia/commonui/util/Insets;
    const/4 v9, 0x0

    iget v10, v0, Lcn/nubia/commonui/util/Insets;->left:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 936
    const/4 v9, 0x0

    iget v10, v0, Lcn/nubia/commonui/util/Insets;->right:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 942
    .end local v0    # "insets":Lcn/nubia/commonui/util/Insets;
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isLayoutRtlNubia()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 943
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingLeft()I

    move-result v9

    add-int v4, v9, v1

    .line 944
    .local v4, "switchLeft":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v1

    sub-int v5, v9, v2

    .line 951
    .local v5, "switchRight":I
    :goto_1
    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_3

    const/4 v7, 0x0

    .line 953
    .local v7, "topBottomPadding":I
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getGravity()I

    move-result v9

    and-int/lit8 v9, v9, 0x70

    sparse-switch v9, :sswitch_data_0

    .line 956
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v9

    add-int v6, v9, v7

    .line 957
    .local v6, "switchTop":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    add-int v3, v6, v9

    .line 972
    .local v3, "switchBottom":I
    :goto_3
    iput v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchLeft:I

    .line 973
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTop:I

    .line 974
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchBottom:I

    .line 975
    iput v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchRight:I

    .line 976
    return-void

    .line 930
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .end local v7    # "topBottomPadding":I
    .restart local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 946
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v5, v9, v2

    .line 947
    .restart local v5    # "switchRight":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    sub-int v9, v5, v9

    add-int/2addr v9, v1

    add-int v4, v9, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 961
    .restart local v7    # "topBottomPadding":I
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    add-int v6, v9, v7

    .line 963
    .restart local v6    # "switchTop":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    add-int v3, v6, v9

    .line 964
    .restart local v3    # "switchBottom":I
    goto :goto_3

    .line 967
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v3, v9, v7

    .line 968
    .restart local v3    # "switchBottom":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    sub-int v6, v3, v9

    .restart local v6    # "switchTop":I
    goto :goto_3

    .line 953
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
    .line 623
    iget-boolean v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eqz v11, :cond_1

    .line 624
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    if-nez v11, :cond_0

    .line 625
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcn/nubia/commonui/widget/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 628
    :cond_0
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    if-nez v11, :cond_1

    .line 629
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Lcn/nubia/commonui/widget/NubiaSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    .line 633
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mRectParameters:Landroid/graphics/Rect;

    .line 636
    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    .line 638
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 639
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    .line 641
    .local v9, "thumbWidth":I
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 649
    .local v8, "thumbHeight":I
    :goto_0
    iget-boolean v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mShowText:Z

    if-eqz v11, :cond_5

    .line 650
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOnLayout:Landroid/text/Layout;

    .line 651
    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    .line 657
    .local v1, "maxTextWidth":I
    :goto_1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    .line 661
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    .line 662
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 663
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 671
    .local v10, "trackHeight":I
    :goto_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 672
    .local v4, "paddingLeft":I
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 673
    .local v5, "paddingRight":I
    iget-object v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 674
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 675
    .local v0, "inset":Lcn/nubia/commonui/util/Insets;
    iget v11, v0, Lcn/nubia/commonui/util/Insets;->left:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 676
    iget v11, v0, Lcn/nubia/commonui/util/Insets;->right:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 678
    .end local v0    # "inset":Lcn/nubia/commonui/util/Insets;
    :cond_2
    iget v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinWidth:I

    iget v12, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbWidth:I

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 680
    .local v7, "switchWidth":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 681
    .local v6, "switchHeight":I
    iput v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchWidth:I

    .line 682
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchHeight:I

    .line 684
    invoke-super/range {p0 .. p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 686
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getMeasuredHeight()I

    move-result v2

    .line 687
    .local v2, "measuredHeight":I
    if-ge v2, v6, :cond_7

    iget v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    if-ge v6, v11, :cond_7

    .line 688
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchMinHeight:I

    invoke-virtual {p0, v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    .line 695
    :cond_3
    :goto_3
    return-void

    .line 643
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

    .line 644
    .restart local v9    # "thumbWidth":I
    const/4 v8, 0x0

    .restart local v8    # "thumbHeight":I
    goto :goto_0

    .line 654
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "maxTextWidth":I
    goto :goto_1

    .line 665
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 666
    const/4 v10, 0x0

    .restart local v10    # "trackHeight":I
    goto :goto_2

    .line 690
    .restart local v2    # "measuredHeight":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingRight":I
    .restart local v6    # "switchHeight":I
    .restart local v7    # "switchWidth":I
    :cond_7
    if-ge v2, v6, :cond_3

    .line 691
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingStart()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingEnd()I

    move-result v12

    add-int/2addr v11, v12

    .line 692
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingTop()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    .line 691
    invoke-virtual {p0, v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 701
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 702
    .local v0, "text":Ljava/lang/CharSequence;
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
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextOff:Ljava/lang/CharSequence;

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

    .line 749
    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 823
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 753
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 754
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 755
    .local v6, "y":F
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 756
    iput v8, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 757
    iput v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 758
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    goto :goto_0

    .line 764
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 770
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 771
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 772
    .restart local v6    # "y":F
    iget v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    sub-float v7, v6, v7

    .line 773
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 774
    :cond_1
    iput v11, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 775
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 776
    iput v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 777
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchY:F

    move v7, v8

    .line 778
    goto :goto_1

    .line 784
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 785
    .restart local v5    # "x":F
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getThumbScrollRange()I

    move-result v4

    .line 786
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    sub-float v3, v5, v9

    .line 788
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_3

    .line 789
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 798
    .local v1, "dPos":F
    :goto_2
    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-virtual {p0, v9, v10, v7}, Lcn/nubia/commonui/widget/NubiaSwitch;->constrain(FFF)F

    move-result v2

    .line 799
    .local v2, "newPos":F
    iget v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_2

    .line 800
    iput v5, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchX:F

    .line 801
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbPosition(F)V

    :cond_2
    move v7, v8

    .line 803
    goto :goto_1

    .line 793
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

    .line 811
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    if-ne v7, v11, :cond_5

    .line 812
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 815
    goto/16 :goto_1

    .line 817
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTouchMode:I

    .line 818
    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

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
    .locals 1
    .param p1, "checked"    # Z

    .prologue
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

    .line 912
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->cancelPositionAnimator()V

    .line 910
    if-eqz p1, :cond_1

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
    .param p1, "showText"    # Z

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
    .param p1, "splitTrack"    # Z

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
    .param p1, "pixels"    # I

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
    .param p1, "pixels"    # I

    .prologue
    .line 392
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchPadding:I

    .line 393
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 394
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$color;->nubia_primary_text_default_material_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 253
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 254
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 260
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_switch_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 262
    .local v1, "ts":I
    if-eqz v1, :cond_0

    .line 263
    int-to-float v2, v1

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->requestLayout()V

    .line 269
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypefaceByIndex(II)V

    .line 271
    new-instance v2, Lcn/nubia/commonui/util/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/commonui/util/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    .line 272
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mSwitchTransformationMethod:Lcn/nubia/commonui/util/TransformationMethod2;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcn/nubia/commonui/util/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 317
    return-void

    .line 257
    .end local v1    # "ts":I
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

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
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    if-lez p2, :cond_4

    .line 346
    if-nez p1, :cond_1

    .line 347
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 354
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 355
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 356
    .local v0, "need":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 357
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 363
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 349
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 354
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 357
    goto :goto_2

    .line 359
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 360
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 361
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

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
    .param p1, "textOn"    # Ljava/lang/CharSequence;

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
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

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
    .param p1, "resId"    # I

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
    .param p1, "pixels"    # I

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
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

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
    .param p1, "resId"    # I

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
    .line 894
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 895
    return-void

    .line 894
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1211
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

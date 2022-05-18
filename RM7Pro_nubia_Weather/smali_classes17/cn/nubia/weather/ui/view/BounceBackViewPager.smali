.class public Lcn/nubia/weather/ui/view/BounceBackViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;,
        Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;
    }
.end annotation


# static fields
.field private static final DEFAULT_OVERSCROLL_ANIMATION_DURATION:I = 0x190

.field static final DEFAULT_OVERSCROLL_TRANSLATION:I = 0x12c

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private final mCamera:Landroid/graphics/Camera;

.field private mLastMotionX:F

.field private mOverscrollAnimationDuration:I

.field private final mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

.field private mOverscrollTranslation:I

.field private mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mScrollPosition:I

.field private mScrollPositionOffset:F

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v1, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;Lcn/nubia/weather/ui/view/BounceBackViewPager$1;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .line 101
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->setStaticTransformationsEnabled(Z)V

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 117
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mTouchSlop:I

    .line 118
    new-instance v1, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/ui/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcn/nubia/weather/ui/view/BounceBackViewPager;Lcn/nubia/weather/ui/view/BounceBackViewPager$1;)V

    invoke-super {p0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    invoke-direct {p0, p2}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->init(Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/BounceBackViewPager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->invalidateVisibleChilds()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/BounceBackViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/BounceBackViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPosition:I

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/weather/ui/view/BounceBackViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPosition:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/weather/ui/view/BounceBackViewPager;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/BounceBackViewPager;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iput p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPositionOffset:F

    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    const/16 v0, 0x12c

    iput v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollTranslation:I

    .line 125
    const/16 v0, 0x190

    iput v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 126
    return-void
.end method

.method private invalidateVisibleChilds()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->invalidate()V

    .line 156
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 222
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 228
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-nez v6, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v4

    .line 320
    :cond_1
    iget v6, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPosition:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPosition:I

    .line 321
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    :cond_2
    move v2, v5

    .line 322
    .local v2, "isFirstOrLast":Z
    :goto_1
    iget-object v6, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v6}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 324
    .local v0, "dx":F
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 325
    .local v1, "dy":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 326
    iget v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollTranslation:I

    int-to-float v6, v4

    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .line 327
    invoke-static {v4}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$1000(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_4

    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$1000(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 328
    :goto_2
    mul-float v3, v6, v4

    .line 329
    .local v3, "translateX":F
    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 330
    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v3

    invoke-virtual {v4, v6, v8, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 331
    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 332
    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 333
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    neg-float v6, v0

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 334
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    int-to-float v6, v1

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v4, v5

    .line 336
    goto :goto_0

    .end local v0    # "dx":F
    .end local v1    # "dy":I
    .end local v2    # "isFirstOrLast":Z
    .end local v3    # "translateX":F
    :cond_3
    move v2, v4

    .line 321
    goto :goto_1

    .line 327
    .restart local v0    # "dx":F
    .restart local v1    # "dy":I
    .restart local v2    # "isFirstOrLast":Z
    :cond_4
    iget-object v4, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    .line 328
    invoke-static {v4}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$1000(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)F

    move-result v4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2
.end method

.method public getOverscrollAnimationDuration()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    return v0
.end method

.method public getOverscrollTranslation()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollTranslation:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 195
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    .line 209
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 215
    .end local v0    # "action":I
    :goto_1
    return v4

    .line 197
    .restart local v0    # "action":I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 198
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 210
    .end local v0    # "action":I
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "action":I
    :sswitch_1
    :try_start_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 203
    .local v2, "index":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 204
    .local v3, "x":F
    iput v3, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 205
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 213
    .end local v0    # "action":I
    .end local v2    # "index":I
    .end local v3    # "x":F
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    const/4 v4, 0x0

    .line 236
    .local v4, "callSuper":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 237
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$900(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)Z

    move-result v18

    if-eqz v18, :cond_5

    if-nez v4, :cond_5

    .line 309
    const/16 v18, 0x1

    .line 311
    :goto_1
    return v18

    .line 239
    :pswitch_1
    const/4 v4, 0x1

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 241
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    goto :goto_0

    .line 245
    :pswitch_2
    const/4 v4, 0x1

    .line 246
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 247
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 248
    .local v17, "x":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 249
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    goto :goto_0

    .line 253
    .end local v7    # "index":I
    .end local v17    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 257
    .local v3, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 258
    .restart local v17    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v6, v18, v17

    .line 259
    .local v6, "deltaX":F
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getWidth()I

    move-result v15

    .line 260
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getPageMargin()I

    move-result v18

    add-int v16, v15, v18

    .line 261
    .local v16, "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .line 262
    .local v8, "lastItemIndex":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/BounceBackViewPager;->getCurrentItem()I

    move-result v5

    .line 263
    .local v5, "currentItemIndex":I
    const/16 v18, 0x0

    add-int/lit8 v19, v5, -0x1

    mul-int v19, v19, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v9, v0

    .line 264
    .local v9, "leftBound":F
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    mul-int v18, v18, v16

    move/from16 v0, v18

    int-to-float v14, v0

    .line 266
    .local v14, "rightBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollPositionOffset:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_2

    .line 267
    if-nez v5, :cond_1

    .line 268
    const/16 v18, 0x0

    cmpl-float v18, v9, v18

    if-nez v18, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v11, v6, v18

    .line 270
    .local v11, "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    move-object/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto/16 :goto_0

    .line 272
    .end local v11    # "over":F
    :cond_1
    if-ne v8, v5, :cond_0

    .line 273
    mul-int v18, v8, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-nez v18, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v11, v6, v18

    .line 275
    .restart local v11    # "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    move-object/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->setPull(F)V

    goto/16 :goto_0

    .line 279
    .end local v11    # "over":F
    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    goto/16 :goto_0

    .line 282
    .end local v3    # "activePointerIndex":I
    .end local v5    # "currentItemIndex":I
    .end local v6    # "deltaX":F
    .end local v8    # "lastItemIndex":I
    .end local v9    # "leftBound":F
    .end local v14    # "rightBound":F
    .end local v15    # "width":I
    .end local v16    # "widthWithMargin":I
    .end local v17    # "x":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)V

    goto/16 :goto_0

    .line 288
    :pswitch_4
    const/4 v4, 0x1

    .line 289
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollEffect:Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;->access$800(Lcn/nubia/weather/ui/view/BounceBackViewPager$OverscrollEffect;)V

    goto/16 :goto_0

    .line 294
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const v19, 0xff00

    and-int v18, v18, v19

    shr-int/lit8 v13, v18, 0x8

    .line 295
    .local v13, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 296
    .local v12, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v12, v0, :cond_0

    .line 299
    if-nez v13, :cond_4

    const/4 v10, 0x1

    .line 300
    .local v10, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mLastMotionX:F

    .line 301
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mActivePointerId:I

    .line 302
    const/4 v4, 0x1

    .line 303
    goto/16 :goto_0

    .line 299
    .end local v10    # "newPointerIndex":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 311
    .end local v12    # "pointerId":I
    .end local v13    # "pointerIndex":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 147
    return-void
.end method

.method public setOverscrollAnimationDuration(I)V
    .locals 0
    .param p1, "mOverscrollAnimationDuration"    # I

    .prologue
    .line 133
    iput p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollAnimationDuration:I

    .line 134
    return-void
.end method

.method public setOverscrollTranslation(I)V
    .locals 0
    .param p1, "mOverscrollTranslation"    # I

    .prologue
    .line 141
    iput p1, p0, Lcn/nubia/weather/ui/view/BounceBackViewPager;->mOverscrollTranslation:I

    .line 142
    return-void
.end method

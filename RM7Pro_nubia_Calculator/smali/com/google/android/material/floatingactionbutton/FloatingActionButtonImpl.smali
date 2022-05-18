.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;
    }
.end annotation


# static fields
.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final ELEVATION_ANIM_DELAY:J = 0x64L

.field static final ELEVATION_ANIM_DURATION:J = 0x64L

.field static final ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field private static final HIDE_ICON_SCALE:F = 0.0f

.field private static final HIDE_OPACITY:F = 0.0f

.field private static final HIDE_SCALE:F = 0.0f

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field private static final SHOW_ICON_SCALE:F = 1.0f

.field private static final SHOW_OPACITY:F = 1.0f

.field private static final SHOW_SCALE:F = 1.0f


# instance fields
.field private animState:I

.field borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field contentBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field elevation:F

.field ensureMinTouchTargetSize:Z

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field hoveredFocusedTranslationZ:F

.field private imageMatrixScale:F

.field private maxImageSize:I

.field minTouchTargetSize:I

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field pressedTranslationZ:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rotation:F

.field final shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

.field shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;

.field private transformationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;",
            ">;"
        }
    .end annotation
.end field

.field usingDefaultCorner:Z

.field final view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    .line 123
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v1, 0x3

    .line 126
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 129
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 132
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    const/4 v0, 0x1

    .line 135
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 136
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 144
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 151
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 152
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 154
    new-instance p1, Lcom/google/android/material/internal/StateListAnimator;

    invoke-direct {p1}, Lcom/google/android/material/internal/StateListAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    .line 157
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 157
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 160
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 160
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 163
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 163
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 166
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 166
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 170
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 170
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 173
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 173
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 176
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;F)F
    .locals 0

    .line 61
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    return p1
.end method

.method private calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 287
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 289
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 293
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 294
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 296
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 299
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p2, p1, p1, v0, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 561
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 562
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 565
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 566
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "scale"

    .line 569
    invoke-virtual {p1, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 570
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 573
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/google/android/material/animation/ImageMatrixProperty;

    invoke-direct {p3}, Lcom/google/android/material/animation/ImageMatrixProperty;-><init>()V

    new-instance p4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;

    invoke-direct {p4, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 574
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "iconScale"

    .line 587
    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 588
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 591
    invoke-static {p0, v0}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method private createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 749
    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 750
    sget-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 751
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 752
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 753
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    .line 754
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDefaultHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 548
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 551
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getDefaultShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 539
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getOrCreatePreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 717
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTransformationListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 596
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    .line 599
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 722
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->usingDefaultCorner:Z

    if-eqz v1, :cond_0

    .line 723
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 725
    :cond_0
    new-instance p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object p0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 629
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getElevation()F
    .locals 0

    .line 240
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    return p0
.end method

.method getEnsureMinTouchTargetSize()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    return p0
.end method

.method final getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method getHoveredFocusedTranslationZ()F
    .locals 0

    .line 244
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    return p0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 4

    .line 654
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 655
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 658
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getElevation()F

    move-result v1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v1, p0

    float-to-double v2, v1

    .line 659
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 660
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 661
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getPressedTranslationZ()F
    .locals 0

    .line 248
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    return p0
.end method

.method final getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 325
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method final getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 411
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    goto :goto_0

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 422
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 459
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 460
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 463
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 466
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_5

    const/16 v0, 0x8

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    if-eqz p1, :cond_6

    .line 468
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    :cond_6
    :goto_3
    return-void
.end method

.method initializeBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 187
    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 189
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const p2, -0xbbbbbc

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 193
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    .line 197
    invoke-static {p3}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 198
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    .line 200
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 201
    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 203
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method isOrWillBeHidden()Z
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 741
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 744
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isOrWillBeShown()Z
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 731
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 734
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/StateListAnimator;->jumpToCurrentState()V

    return-void
.end method

.method onAttachedToWindow()V
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getOrCreatePreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/StateListAnimator;->setState([I)V

    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 7

    .line 665
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    const-string v1, "Didn\'t initialize content background"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAddPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 669
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {p0, v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method onPreDraw()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    .line 699
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 700
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 701
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateFromViewRotation()V

    :cond_0
    return-void
.end method

.method onScaleChanged()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 621
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;

    .line 622
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;->onScaleChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onTranslationChanged()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 613
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;

    .line 614
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;->onTranslationChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 402
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 386
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTransformationListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 603
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method requirePreDrawListener()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 207
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    if-eqz v0, :cond_1

    .line 211
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 2

    .line 233
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 234
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    .line 235
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    return-void
.end method

.method final setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 343
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method final setHoveredFocusedTranslationZ(F)V
    .locals 2

    .line 252
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 253
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    .line 254
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method final setImageMatrixScale(F)V
    .locals 1

    .line 279
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 281
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 283
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method final setMaxImageSize(I)V
    .locals 1

    .line 266
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    if-eq v0, p1, :cond_0

    .line 267
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    :cond_0
    return-void
.end method

.method setMinTouchTargetSize(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 2

    .line 259
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 260
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    .line 261
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 227
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method final setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 309
    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->usingDefaultCorner:Z

    .line 310
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz p2, :cond_1

    .line 311
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 314
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz p2, :cond_2

    .line 315
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 318
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    if-eqz p2, :cond_3

    .line 319
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/floatingactionbutton/BorderDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/BorderDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_3
    return-void
.end method

.method final setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method shouldAddPadding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method final shouldExpandBoundsForA11y()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 487
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 488
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 489
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    goto :goto_0

    .line 494
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    .line 493
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 519
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 520
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 523
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 526
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 527
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 528
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 529
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    if-eqz p1, :cond_6

    .line 531
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    :cond_6
    :goto_2
    return-void
.end method

.method updateFromViewRotation()V
    .locals 3

    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 833
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 835
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 845
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatRotation(I)V

    :cond_2
    return-void
.end method

.method final updateImageMatrixScale()V
    .locals 1

    .line 275
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    return-void
.end method

.method final updatePadding()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 648
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 649
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 650
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p0, v1, v2, v3, v0}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

.method updateShapeElevation(F)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method updateSize()V
    .locals 2

    .line 637
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->usingDefaultCorner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 643
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

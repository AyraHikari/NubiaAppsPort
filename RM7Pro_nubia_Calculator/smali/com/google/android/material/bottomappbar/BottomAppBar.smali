.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAnimationMode;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field private static final DEF_STYLE_RES:I

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1

.field public static final FAB_ANIMATION_MODE_SCALE:I = 0x0

.field public static final FAB_ANIMATION_MODE_SLIDE:I = 0x1


# instance fields
.field private animatingModeChangeCounter:I

.field private animationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAnimationMode:I

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field fabTransformationListener:Lcom/google/android/material/animation/TransformationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationListener<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private hideOnScroll:Z

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private modeAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    sget v0, Lcom/google/android/material/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->createThemedContext(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 167
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 176
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationListener:Lcom/google/android/material/animation/TransformationListener;

    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    sget-object v3, Lcom/google/android/material/R$styleable;->BottomAppBar:[I

    sget v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    new-array v6, p1, [I

    move-object v1, v0

    move-object v2, p2

    move v4, p3

    .line 215
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 218
    sget p3, Lcom/google/android/material/R$styleable;->BottomAppBar_backgroundTint:I

    .line 219
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 221
    sget v1, Lcom/google/android/material/R$styleable;->BottomAppBar_elevation:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 222
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    .line 223
    sget v3, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 224
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    .line 225
    sget v4, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    .line 226
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 227
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentMode:I

    .line 228
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 229
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAnimationMode:I

    .line 230
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    .line 231
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_hideOnScroll:I

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    .line 233
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 238
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p1, v2, v3, v4}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    .line 240
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    .line 241
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V

    .line 242
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 243
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    int-to-float p1, v1

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 246
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p1, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 247
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationEnd()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method private addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 776
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 777
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationListener:Lcom/google/android/material/animation/TransformationListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addTransformationListener(Lcom/google/android/material/animation/TransformationListener;)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 719
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 546
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result p0

    const/4 p1, 0x0

    aput p0, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 547
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 594
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "alpha"

    const/4 v2, 0x1

    .line 601
    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 604
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v3

    .line 605
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 608
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const-string v3, "alpha"

    .line 610
    new-array v4, v2, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 612
    new-instance v4, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 p1, 0x96

    .line 630
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    .line 631
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v5

    aput-object v1, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 632
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_2

    .line 636
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchAnimationEnd()V
    .locals 2

    .line 426
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    .line 429
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationEnd(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchAnimationStart()V
    .locals 2

    .line 417
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    .line 420
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationStart(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 485
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object p0

    .line 486
    instance-of v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private findDependentView()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 497
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 498
    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v2, :cond_1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 657
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 658
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 660
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 652
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result p0

    return p0
.end method

.method private getFabTranslationX(I)F
    .locals 2

    .line 645
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr p1, p0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int/2addr p1, v1

    int-to-float p0, p1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getFabTranslationY()F
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 743
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    return-object p0
.end method

.method private isFabVisibleOrWillBeShown()Z
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeAnimateMenuView(IZ)V
    .locals 3

    .line 552
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 560
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move p1, v2

    move p2, p1

    .line 568
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    .line 570
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 571
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 572
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 573
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private maybeAnimateModeChange(I)V
    .locals 3

    .line 449
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 457
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabDefaultXAnimation(ILjava/util/List;)V

    .line 465
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 466
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 467
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 468
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private setActionMenuViewPosition()V
    .locals 3

    .line 758
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 760
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 761
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 762
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    .line 764
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setCutoutState()V
    .locals 3

    .line 748
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 749
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    if-eqz v0, :cond_1

    .line 752
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 753
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 680
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p0

    int-to-float p0, p0

    .line 679
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method addAnimationListener(Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 403
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createFabDefaultXAnimation(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 522
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    .line 528
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 8

    .line 692
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v3, v2

    move v4, v3

    .line 695
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 696
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 698
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_1

    .line 699
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 708
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result p0

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result p0

    :goto_4
    sub-int p0, v4, p0

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    move p0, v2

    :goto_5
    return p0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 298
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 809
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object p0
.end method

.method public getCradleVerticalOffset()F
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result p0

    return p0
.end method

.method public getFabAlignmentMode()I
    .locals 0

    .line 256
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return p0
.end method

.method public getFabAnimationMode()I
    .locals 0

    .line 278
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    return p0
.end method

.method public getFabCradleMargin()F
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    move-result p0

    return p0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    move-result p0

    return p0
.end method

.method public getHideOnScroll()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 814
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 725
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 734
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setActionMenuViewPosition()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 939
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 940
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 943
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 944
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 945
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 946
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 930
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 931
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 932
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 933
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean p0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    return-object v1
.end method

.method public performHide()V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideDown(Landroid/view/View;)V

    return-void
.end method

.method public performShow()V
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideUp(Landroid/view/View;)V

    return-void
.end method

.method removeAnimationListener(Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 410
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public replaceMenu(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .line 397
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->inflateMenu(I)V

    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 349
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 350
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 386
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 387
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowRadius()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 388
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->setAdditionalHiddenOffsetY(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    .line 268
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 269
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 312
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    .line 314
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    .line 328
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setFabDiameter(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    int-to-float p1, p1

    .line 439
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    .line 441
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

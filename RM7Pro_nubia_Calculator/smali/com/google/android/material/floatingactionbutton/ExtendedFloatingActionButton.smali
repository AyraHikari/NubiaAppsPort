.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
    }
.end annotation


# static fields
.field private static final ANIM_STATE_HIDING:I = 0x1

.field private static final ANIM_STATE_NONE:I = 0x0

.field private static final ANIM_STATE_SHOWING:I = 0x2

.field private static final CORNER_RADIUS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEF_STYLE_RES:I

.field private static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animState:I

.field private final behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentCollapseExpandAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentShowHideAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;
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

.field private defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extendListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hideListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private isExtended:Z

.field private isUsingPillCorner:Z

.field private final shadowPadding:Landroid/graphics/Rect;

.field private showListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private shrinkListeners:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userSetVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    .line 949
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    .line 967
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    .line 986
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;

    const-class v1, Ljava/lang/Float;

    const-string v2, "cornerRadius"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->CORNER_RADIUS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    sget v0, Lcom/google/android/material/R$attr;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 103
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    .line 157
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    .line 160
    sget-object v4, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton:[I

    sget v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    new-array v7, v0, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 161
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    sget v1, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 165
    invoke-static {p1, v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 167
    sget v1, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 168
    invoke-static {p1, v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 170
    sget v1, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 171
    invoke-static {p1, v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 173
    sget v1, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 174
    invoke-static {p1, v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    sget v6, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    const/4 v7, -0x1

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;IZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentCollapseExpandAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method private createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    .line 789
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "opacity"

    .line 790
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    .line 793
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "scale"

    .line 794
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "scale"

    .line 795
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    .line 798
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "width"

    .line 799
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    .line 802
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "height"

    .line 803
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "cornerRadius"

    .line 806
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    if-nez v1, :cond_4

    const-string v1, "cornerRadius"

    .line 807
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->CORNER_RADIUS:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_4
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 811
    invoke-static {p0, v0}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method private createShrinkExtendAnimator(Lcom/google/android/material/animation/MotionSpec;Z)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 820
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v0

    const-string v1, "width"

    .line 822
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v1, "width"

    .line 823
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 825
    aget-object v5, v1, v4

    new-array v6, v3, [F

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v4

    int-to-float v7, v0

    aput v7, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0

    .line 827
    :cond_0
    aget-object v5, v1, v4

    new-array v6, v3, [F

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v4

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    :goto_0
    const-string v5, "width"

    .line 829
    invoke-virtual {p1, v5, v1}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_1
    const-string v1, "height"

    .line 832
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "height"

    .line 833
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 835
    aget-object p2, v1, v4

    new-array v3, v3, [F

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    int-to-float v0, v0

    aput v0, v3, v2

    invoke-virtual {p2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    .line 837
    :cond_2
    aget-object p2, v1, v4

    new-array v0, v3, [F

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v4

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v2

    invoke-virtual {p2, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    :goto_1
    const-string p2, "height"

    .line 839
    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 842
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private extendNow()V
    .locals 2

    .line 883
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 887
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 888
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 889
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 890
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->requestLayout()V

    return-void
.end method

.method private getAdjustedRadius(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 1010
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getCollapsedSize()I
    .locals 2

    .line 1018
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getCurrentExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    .line 921
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_extend_motion_spec:I

    .line 926
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 929
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    .line 908
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 914
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_hide_motion_spec:I

    .line 913
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 916
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    .line 895
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_show_motion_spec:I

    .line 900
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 903
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    .line 934
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_shrink_motion_spec:I

    .line 939
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 942
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p3    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 402
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_3

    .line 411
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 413
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 445
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 446
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/16 p2, 0x8

    goto :goto_1

    :cond_4
    const/4 p2, 0x4

    .line 452
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    if-eqz p3, :cond_5

    .line 454
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private internalSetVisibility(IZ)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 235
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    :cond_0
    return-void
.end method

.method private isOrWillBeHidden()Z
    .locals 3

    .line 856
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 858
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 861
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isOrWillBeShown()Z
    .locals 3

    .line 846
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 848
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 851
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p3    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 718
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 721
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 722
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentCollapseExpandAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentCollapseExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_5

    .line 726
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 727
    invoke-virtual {p0, p2, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 728
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz p2, :cond_2

    .line 730
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    xor-int/lit8 v0, v0, 0x1

    .line 729
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createShrinkExtendAnimator(Lcom/google/android/material/animation/MotionSpec;Z)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 732
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_3

    .line 764
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    :goto_1
    if-eqz p0, :cond_4

    .line 766
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 767
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 770
    :cond_4
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 773
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendNow()V

    if-eqz p3, :cond_7

    .line 775
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onExtended(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    goto :goto_3

    .line 778
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkNow()V

    if-eqz p3, :cond_7

    .line 780
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onShrunken(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 866
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p3    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 490
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 501
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 522
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 523
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 528
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 529
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setAlpha(F)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setScaleY(F)V

    .line 531
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setScaleX(F)V

    if-eqz p3, :cond_4

    .line 533
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onShown(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private shrinkNow()V
    .locals 2

    .line 871
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v1

    .line 876
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 877
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 878
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->requestLayout()V

    return-void
.end method


# virtual methods
.method public addOnExtendAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 350
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnShrinkAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public extend()V
    .locals 1

    const/4 v0, 0x1

    .line 547
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extend(Z)V

    return-void
.end method

.method public extend(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 570
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public extend(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object p0
.end method

.method public getExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 659
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 635
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 611
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 683
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public final getUserSetVisibility()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(Z)V

    return-void
.end method

.method public hide(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public hide(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public final isExtended()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 189
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkNow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->onMeasure(II)V

    .line 199
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getAdjustedRadius(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public removeOnExtendAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 363
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 301
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 270
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnShrinkAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 218
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    .line 219
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getAdjustedRadius(I)I

    move-result p1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    move p1, v0

    .line 224
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    return-void
.end method

.method public setExtendMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 668
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 677
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 644
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 653
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isUsingPillCorner()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isUsingPillCorner:Z

    .line 213
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 620
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 629
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setShrinkMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 692
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 701
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(Z)V

    return-void
.end method

.method public show(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 485
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public show(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public shrink()V
    .locals 1

    const/4 v0, 0x1

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrink(Z)V

    return-void
.end method

.method public shrink(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 605
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public shrink(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

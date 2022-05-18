.class public Landroid/support/transition/ChangeScroll;
.super Landroid/support/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeScroll:x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeScroll:y"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 66
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:x"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:y"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeScroll;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 57
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeScroll;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 52
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 75
    :cond_0
    const/4 v7, 0x0

    .line 92
    :goto_0
    return-object v7

    .line 77
    :cond_1
    iget-object v6, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 78
    .local v6, "view":Landroid/view/View;
    iget-object v7, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 79
    .local v4, "startX":I
    iget-object v7, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "endX":I
    iget-object v7, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 81
    .local v5, "startY":I
    iget-object v7, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    .local v1, "endY":I
    const/4 v2, 0x0

    .line 83
    .local v2, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 84
    .local v3, "scrollYAnimator":Landroid/animation/Animator;
    if-eq v4, v0, :cond_2

    .line 85
    invoke-virtual {v6, v4}, Landroid/view/View;->setScrollX(I)V

    .line 86
    const-string v7, "scrollX"

    new-array v8, v11, [I

    aput v4, v8, v9

    aput v0, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 88
    :cond_2
    if-eq v5, v1, :cond_3

    .line 89
    invoke-virtual {v6, v5}, Landroid/view/View;->setScrollY(I)V

    .line 90
    const-string v7, "scrollY"

    new-array v8, v11, [I

    aput v5, v8, v9

    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 92
    :cond_3
    invoke-static {v2, v3}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    goto :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    sget-object v0, Landroid/support/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method

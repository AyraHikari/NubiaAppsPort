.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/RelativeLayout;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButtonToggleGroup"


# instance fields
.field private checkedId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

.field private final childrenInOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCornerData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    sget v0, Lcom/google/android/material/R$attr;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 130
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 131
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 150
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup:[I

    sget v5, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    new-array v6, v0, [I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 151
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 158
    sget p2, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    .line 159
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 158
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 160
    sget p2, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    const/4 p3, -0x1

    .line 161
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)V

    return-void
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .locals 5

    const/4 v0, 0x1

    .line 415
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 418
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 422
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 424
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->buildEndAlignLayoutParams(Landroid/view/View;Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/4 v4, 0x0

    .line 426
    invoke-static {v2, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 427
    invoke-static {v2}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    mul-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_0

    .line 428
    invoke-static {v2, v3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 431
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->resetFirstChildMargin()V

    return-void
.end method

.method private buildEndAlignLayoutParams(Landroid/view/View;Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 553
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 554
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_0

    return-object v0

    .line 562
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 561
    invoke-virtual {v0, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object v0
.end method

.method private checkForced(I)V
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)V

    .line 515
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 507
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 508
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetFirstChildMargin()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 441
    invoke-static {v1, v0}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 442
    invoke-static {v1, v0}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 443
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    .line 398
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 389
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 390
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 392
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    :cond_0
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    .line 519
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 523
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p0, v0, :cond_0

    .line 524
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 528
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_1
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    const/4 v0, 0x1

    .line 540
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 541
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 542
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 544
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    .line 545
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 548
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    return-void
.end method

.method private updateCheckedStates(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 494
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 496
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 498
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    goto :goto_1

    .line 500
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->bringToFront()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateChildShapes()V
    .locals 10

    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 452
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 453
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 454
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    .line 455
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    if-ne v0, v1, :cond_0

    .line 458
    iget v7, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:F

    iget v8, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:F

    iget v9, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:F

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:F

    invoke-virtual {v5, v7, v8, v9, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    goto :goto_3

    .line 464
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v0, -0x1

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    const/4 v8, 0x0

    if-ne v3, v7, :cond_2

    .line 466
    iget v7, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:F

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:F

    invoke-virtual {v5, v7, v8, v8, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v7, v0, -0x1

    if-ge v3, v7, :cond_3

    .line 469
    invoke-virtual {v5, v8}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadius(F)V

    goto :goto_3

    .line 470
    :cond_3
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-ne v3, v7, :cond_5

    .line 472
    iget v7, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:F

    iget v6, v6, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:F

    invoke-virtual {v5, v8, v7, v6, v8}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    .line 476
    :cond_5
    :goto_3
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 178
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 179
    sget-object p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Child views must be of type MaterialButton."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    if-ltz p2, :cond_1

    move v0, p2

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 189
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    .line 198
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)V

    .line 200
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 204
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/ArrayList;

    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 207
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p3

    .line 208
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v0

    .line 209
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v1

    .line 210
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result p1

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(FFFF)V

    .line 205
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public check(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 257
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    return-void
.end method

.method public clearChecked()V
    .locals 3

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    const/4 v0, 0x0

    move v1, v0

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 276
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 278
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    const/4 v0, -0x1

    .line 282
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 242
    const-class p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedButtonId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 314
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isSingleSelection()Z
    .locals 0

    .line 357
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 171
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 235
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 237
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 215
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onViewRemoved(Landroid/view/View;)V

    .line 217
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 224
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childrenInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 229
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    return-void
.end method

.method public removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 342
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 385
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 370
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    .line 372
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    :cond_0
    return-void
.end method

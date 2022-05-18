.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.0-beta3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private mTitle:Ljava/lang/String;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 526
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 463
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 471
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 473
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 475
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 476
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const p1, 0x7fffffff

    .line 477
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 478
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 p1, 0x2

    .line 481
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 v0, -0x1

    .line 485
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 527
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 531
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 463
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 471
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 473
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 475
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 476
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const p1, 0x7fffffff

    .line 477
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 478
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 p1, 0x2

    .line 481
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 p1, -0x1

    .line 485
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 487
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 532
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 536
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 463
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 471
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 473
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 475
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 476
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const p1, 0x7fffffff

    .line 477
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 478
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 p1, 0x2

    .line 481
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 p1, -0x1

    .line 485
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 487
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 537
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    if-nez p1, :cond_0

    .line 1082
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-ne p1, p0, :cond_1

    .line 1086
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 1088
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 567
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz p1, :cond_8

    .line 571
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 574
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 575
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 576
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    .line 577
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 578
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    .line 579
    :cond_1
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 580
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    .line 581
    :cond_2
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 582
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    .line 583
    :cond_3
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 584
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    .line 585
    :cond_4
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_title:I

    if-ne v4, v5, :cond_5

    .line 586
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 587
    :cond_5
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_6

    .line 588
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 590
    :try_start_0
    new-instance v5, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v5}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 591
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 593
    :catch_0
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 595
    :goto_1
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 600
    :cond_8
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1106
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_11

    .line 1110
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1111
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_c

    .line 1114
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1115
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1116
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_10

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_1

    goto/16 :goto_c

    .line 1119
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1121
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1122
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1126
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v15, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v14, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v15, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v13, v15

    :goto_2
    if-eqz v13, :cond_d

    const/4 v13, -0x2

    if-eqz v11, :cond_7

    if-ne v11, v14, :cond_5

    goto :goto_4

    :cond_5
    if-ne v11, v13, :cond_6

    move/from16 v16, v15

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    .line 1151
    :goto_3
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    goto :goto_5

    .line 1144
    :cond_7
    :goto_4
    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v16, v15

    :goto_5
    move/from16 v6, v17

    if-eqz v12, :cond_a

    if-ne v12, v14, :cond_8

    goto :goto_7

    :cond_8
    if-ne v12, v13, :cond_9

    move/from16 v18, v15

    goto :goto_6

    :cond_9
    const/16 v18, 0x0

    .line 1162
    :goto_6
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    goto :goto_8

    .line 1155
    :cond_a
    :goto_7
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v18, v15

    :goto_8
    move/from16 v15, v19

    .line 1165
    invoke-virtual {v8, v6, v15}, Landroid/view/View;->measure(II)V

    if-ne v11, v13, :cond_b

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    .line 1167
    :goto_9
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v12, v13, :cond_c

    const/4 v15, 0x1

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    .line 1168
    :goto_a
    invoke-virtual {v10, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1169
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1170
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_b

    :cond_d
    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 1173
    :goto_b
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1174
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v16, :cond_e

    .line 1177
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_e
    if-eqz v18, :cond_f

    .line 1180
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1183
    :cond_f
    iget-boolean v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_10

    .line 1184
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    if-eq v6, v14, :cond_10

    .line 1186
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :cond_10
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_13

    .line 1191
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1192
    instance-of v3, v2, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_12

    .line 1193
    check-cast v2, Landroid/support/constraint/Placeholder;

    invoke-virtual {v2, v0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1197
    :cond_13
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v1, :cond_14

    .line 1200
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 1201
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_14
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 26

    move-object/from16 v0, p0

    .line 785
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 793
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 795
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 796
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v6, v7}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 804
    :cond_0
    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    .line 806
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 807
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v7, v8, :cond_1

    instance-of v7, v6, Landroid/support/constraint/Constraints;

    if-eqz v7, :cond_1

    .line 808
    check-cast v6, Landroid/support/constraint/Constraints;

    invoke-virtual {v6}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iput-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 812
    :cond_2
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v4, :cond_3

    .line 813
    invoke-virtual {v4, v0}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 816
    :cond_3
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 818
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_4

    .line 821
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintHelper;

    .line 822
    invoke-virtual {v7, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_6

    .line 827
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 828
    instance-of v7, v6, Landroid/support/constraint/Placeholder;

    if-eqz v7, :cond_5

    .line 829
    check-cast v6, Landroid/support/constraint/Placeholder;

    invoke-virtual {v6, v0}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_2b

    .line 833
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    if-nez v13, :cond_7

    goto/16 :goto_10

    .line 838
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 839
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 840
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v7, :cond_8

    .line 841
    iput-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_5

    .line 843
    :cond_8
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 845
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 846
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_9

    const/16 v7, 0x8

    .line 847
    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 849
    :cond_9
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 850
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 852
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v6, :cond_b

    .line 853
    :cond_a
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_b
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_f

    .line 857
    check-cast v13, Landroid/support/constraint/solver/widgets/Guideline;

    .line 858
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 859
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 860
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 861
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v7, :cond_c

    .line 862
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 863
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 864
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    :cond_c
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_d

    .line 867
    invoke-virtual {v13, v9}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto/16 :goto_10

    :cond_d
    if-eq v6, v5, :cond_e

    .line 869
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto/16 :goto_10

    :cond_e
    if-eq v8, v5, :cond_2a

    .line 871
    invoke-virtual {v13, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto/16 :goto_10

    .line 873
    :cond_f
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v6, v5, :cond_2a

    .line 893
    :cond_10
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 894
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 895
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 896
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 897
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 898
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 899
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 901
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_15

    .line 904
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 905
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 906
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 907
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 908
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 909
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 910
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    if-ne v3, v5, :cond_12

    if-ne v6, v5, :cond_12

    .line 913
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v11, v5, :cond_11

    .line 914
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_6

    .line 915
    :cond_11
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v11, v5, :cond_12

    .line 916
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    :cond_12
    :goto_6
    move/from16 v25, v6

    move v6, v3

    move/from16 v3, v25

    if-ne v9, v5, :cond_14

    if-ne v10, v5, :cond_14

    .line 920
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v11, v5, :cond_13

    .line 921
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_7

    .line 922
    :cond_13
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v11, v5, :cond_14

    .line 923
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    :cond_14
    :goto_7
    move v12, v7

    move/from16 v16, v8

    move v11, v15

    move v8, v3

    move v3, v9

    goto :goto_8

    :cond_15
    move v3, v9

    move/from16 v16, v12

    move v12, v11

    move v11, v15

    :goto_8
    move v15, v10

    .line 929
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v7, v5, :cond_16

    .line 930
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 932
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v13, v3, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    goto/16 :goto_d

    :cond_16
    if-eq v6, v5, :cond_18

    .line 937
    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_17

    .line 939
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v11

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_9

    :cond_17
    move/from16 v17, v11

    goto :goto_9

    :cond_18
    move/from16 v17, v11

    if-eq v8, v5, :cond_19

    .line 944
    invoke-direct {v0, v8}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 946
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_19
    :goto_9
    if-eq v3, v5, :cond_1a

    .line 954
    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 956
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_a

    :cond_1a
    if-eq v15, v5, :cond_1b

    .line 961
    invoke-direct {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 963
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 970
    :cond_1b
    :goto_a
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v3, v5, :cond_1c

    .line 971
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 973
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_b

    .line 977
    :cond_1c
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v3, v5, :cond_1d

    .line 978
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 980
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 987
    :cond_1d
    :goto_b
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v3, v5, :cond_1e

    .line 988
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 990
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_c

    .line 994
    :cond_1e
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v3, v5, :cond_1f

    .line 995
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 997
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1004
    :cond_1f
    :goto_c
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v3, v5, :cond_20

    .line 1005
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1006
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_20

    if-eqz v3, :cond_20

    .line 1007
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_20

    .line 1008
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    .line 1009
    iput-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1010
    iput-boolean v7, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1011
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v18

    .line 1012
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1013
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 1014
    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1017
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1018
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_20
    const/4 v3, 0x0

    move/from16 v15, v17

    cmpl-float v6, v15, v3

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_21

    cmpl-float v6, v15, v7

    if-eqz v6, :cond_21

    .line 1023
    invoke-virtual {v13, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1025
    :cond_21
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_22

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_22

    .line 1026
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_22
    :goto_d
    if-eqz v1, :cond_24

    .line 1030
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v3, v5, :cond_23

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v3, v5, :cond_24

    .line 1032
    :cond_23
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v13, v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1036
    :cond_24
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_26

    .line 1037
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v3, v5, :cond_25

    .line 1038
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1039
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1040
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_e

    .line 1042
    :cond_25
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1043
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_e

    .line 1046
    :cond_26
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1047
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1049
    :goto_e
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_28

    .line 1050
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v3, v5, :cond_27

    .line 1051
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1052
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1053
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v3, 0x0

    goto :goto_f

    .line 1055
    :cond_27
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1056
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_f

    :cond_28
    const/4 v3, 0x0

    .line 1059
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1060
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1063
    :goto_f
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v6, :cond_29

    .line 1064
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1066
    :cond_29
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1067
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1068
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1069
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1070
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1073
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    :cond_2a
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_2b
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 9

    .line 1381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1382
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1384
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1386
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1387
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1389
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1390
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1394
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq v0, v7, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    :goto_0
    move p1, v8

    goto :goto_1

    .line 1406
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_1

    .line 1402
    :cond_1
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_0

    .line 1397
    :cond_2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_1
    if-eq v1, v7, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    :goto_2
    move p2, v8

    goto :goto_3

    .line 1420
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 1416
    :cond_4
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_2

    .line 1411
    :cond_5
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1424
    :goto_3
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1425
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1426
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1427
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1428
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1429
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1430
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1431
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    return-void
.end method

.method private updateHierarchy()V
    .locals 4

    .line 768
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 772
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 773
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 779
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 608
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 609
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 610
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1560
    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1587
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1588
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1590
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1591
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 1595
    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1596
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 1599
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1600
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1601
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 1602
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1603
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1604
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 1605
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 1606
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 1607
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float/2addr v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 1612
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 1613
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 1614
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 1615
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 1616
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 1617
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 1618
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 1619
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 1620
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1544
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1536
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1552
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 516
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 517
    check-cast p2, Ljava/lang/String;

    .line 518
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 764
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 753
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 716
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 705
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    .line 1579
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1099
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1101
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1455
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1456
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 1458
    invoke-virtual {p0, p4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1459
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1460
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1462
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 1467
    :cond_0
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1470
    :cond_1
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    .line 1471
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    .line 1472
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 1473
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    .line 1495
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1496
    instance-of v4, p5, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_2

    .line 1497
    check-cast p5, Landroid/support/constraint/Placeholder;

    .line 1498
    invoke-virtual {p5}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 1500
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1505
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 1508
    iget-object p2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintHelper;

    .line 1509
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1215
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v4

    .line 1218
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1219
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1220
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1221
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1223
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1224
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    .line 1225
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    .line 1226
    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1227
    iput-boolean v8, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1228
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1230
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "First pass"

    .line 1240
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1245
    :cond_1
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v4, v9

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v3, v9

    if-lez v7, :cond_17

    .line 1256
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v8

    .line 1258
    :goto_0
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v13, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move v11, v8

    .line 1260
    :goto_1
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1261
    iget-object v14, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v15, v8

    move/from16 v16, v15

    :goto_2
    if-ge v15, v7, :cond_10

    .line 1263
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1264
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_4

    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v18, v7

    goto/16 :goto_6

    .line 1268
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move/from16 v17, v6

    .line 1269
    iget-boolean v6, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v6, :cond_e

    iget-boolean v6, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v6, :cond_5

    goto/16 :goto_5

    .line 1272
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v19, v5

    const/16 v5, 0x8

    if-ne v6, v5, :cond_6

    goto/16 :goto_6

    .line 1279
    :cond_6
    iget v5, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_7

    iget-boolean v5, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v5, :cond_7

    .line 1280
    iget v5, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v3, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_3

    .line 1282
    :cond_7
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1284
    :goto_3
    iget v6, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v6, v1, :cond_8

    iget-boolean v1, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_8

    .line 1285
    iget v1, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v4, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_4

    .line 1287
    :cond_8
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1291
    :goto_4
    invoke-virtual {v12, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1293
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1294
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1296
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    if-eq v1, v6, :cond_a

    .line 1297
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v10, :cond_9

    .line 1298
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    if-le v1, v13, :cond_9

    .line 1299
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1300
    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v1, v6

    .line 1301
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_9
    const/16 v16, 0x1

    .line 1305
    :cond_a
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v5, v1, :cond_c

    .line 1306
    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v11, :cond_b

    .line 1307
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    if-le v1, v14, :cond_b

    .line 1308
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1309
    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v1, v5

    .line 1310
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_b
    const/16 v16, 0x1

    .line 1314
    :cond_c
    iget-boolean v1, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v1, :cond_d

    .line 1315
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    .line 1316
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    if-eq v1, v5, :cond_d

    .line 1317
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    const/16 v16, 0x1

    .line 1322
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_f

    .line 1323
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v19, v5

    :cond_f
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v5, v19

    goto/16 :goto_2

    :cond_10
    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v18, v7

    if-eqz v16, :cond_13

    .line 1327
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v19

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1328
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v17

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const-string v1, "2nd pass"

    .line 1329
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1331
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    if-ge v1, v13, :cond_11

    .line 1332
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    .line 1335
    :goto_7
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    if-ge v5, v14, :cond_12

    .line 1336
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v12, 0x1

    goto :goto_8

    :cond_12
    move v12, v1

    :goto_8
    if-eqz v12, :cond_13

    const-string v1, "3rd pass"

    .line 1340
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    :cond_13
    move/from16 v5, v18

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v5, :cond_18

    .line 1344
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1345
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_15

    :cond_14
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_a

    .line 1349
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_14

    .line 1350
    :cond_16
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1351
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1352
    invoke-virtual {v7, v9, v6}, Landroid/view/View;->measure(II)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    const/4 v8, 0x0

    .line 1357
    :cond_18
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 1358
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    .line 1360
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1b

    move/from16 v4, p1

    .line 1361
    invoke-static {v1, v4, v8}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v4, v8, 0x10

    .line 1362
    invoke-static {v3, v2, v4}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 1366
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1367
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1368
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_19

    or-int/2addr v1, v4

    .line 1371
    :cond_19
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_1a

    or-int/2addr v2, v4

    .line 1374
    :cond_1a
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    goto :goto_b

    .line 1376
    :cond_1b
    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    :goto_b
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 630
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 631
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 634
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 635
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 637
    new-instance v1, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 638
    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 639
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 642
    :cond_1
    instance-of v0, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 643
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 644
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 646
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 647
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 648
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 661
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 663
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 664
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 665
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 666
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 667
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 619
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 621
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2518
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 2519
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0

    .line 1568
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 498
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 499
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 500
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 502
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 503
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 505
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 507
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 508
    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 545
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 546
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 547
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 738
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    .line 741
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 742
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 725
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 728
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 729
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 690
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    .line 693
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 694
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 677
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 680
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 681
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1528
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 0

    .line 1443
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    return-void
.end method

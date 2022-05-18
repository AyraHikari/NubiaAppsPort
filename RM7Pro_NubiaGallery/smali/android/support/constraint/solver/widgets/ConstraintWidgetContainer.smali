.class public Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
.super Landroid/support/constraint/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field private static final USE_SNAPSHOT:Z = true


# instance fields
.field mDebugSolverPassCount:I

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mHorizontalChainsSize:I

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

.field protected mSystem:Landroid/support/constraint/solver/LinearSystem;

.field mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mVerticalChainsSize:I

.field private mWidthMeasuredTooSmall:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>()V

    .line 38
    new-instance v0, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {v0}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 48
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 50
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 51
    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x2

    .line 53
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 55
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 56
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 133
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(II)V

    .line 38
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 48
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p2, 0x4

    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 50
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 51
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 p2, 0x2

    .line 53
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 55
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 56
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 133
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(IIII)V

    .line 38
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 48
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p2, 0x4

    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 50
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 51
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 p2, 0x2

    .line 53
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 55
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 56
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 133
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    return-void
.end method

.method private addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 3

    const/4 v0, 0x0

    .line 545
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 546
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 550
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 551
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 553
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 554
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    return-void
.end method

.method private addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 3

    const/4 v0, 0x0

    .line 564
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 565
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 569
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 570
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 572
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 573
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method

.method private resetChains()V
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 506
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method


# virtual methods
.method addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 519
    :goto_0
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_0

    .line 523
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0

    .line 525
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 528
    :goto_1
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_2

    .line 532
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 534
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;)Z
    .locals 7

    .line 147
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    .line 148
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 153
    :cond_0
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/Optimizer;->optimize(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_7

    .line 160
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 161
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_5

    .line 162
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v2

    .line 163
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v6, v3

    .line 164
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2

    .line 165
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 167
    :cond_2
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_3

    .line 168
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 170
    :cond_3
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    .line 171
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_4

    .line 172
    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 174
    :cond_4
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_6

    .line 175
    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-static {p0, p1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 181
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v0, :cond_8

    .line 185
    invoke-static {p0, p1, v2}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V

    .line 187
    :cond_8
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v0, :cond_9

    .line 188
    invoke-static {p0, p1, v3}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V

    :cond_9
    return v3
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 482
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 483
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 484
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 485
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    if-nez v4, :cond_0

    .line 486
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSystem()Landroid/support/constraint/solver/LinearSystem;
    .locals 1

    .line 494
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstraintLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 463
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 464
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 465
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 466
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 467
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .locals 16

    move-object/from16 v1, p0

    .line 242
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 243
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 246
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 247
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 249
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    .line 253
    :cond_0
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 258
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 259
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 261
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    goto :goto_0

    .line 263
    :cond_1
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 264
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 268
    :goto_0
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v8, v0, v7

    .line 269
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v0, v4

    .line 277
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 281
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v0, v4

    :goto_1
    if-ge v0, v10, :cond_3

    .line 283
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 284
    instance-of v12, v11, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v12, :cond_2

    .line 285
    check-cast v11, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    move v12, v0

    move v11, v7

    :goto_2
    if-eqz v11, :cond_11

    add-int/lit8 v13, v0, 0x1

    .line 295
    :try_start_0
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    .line 305
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 307
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v0, 0x2

    if-eqz v11, :cond_5

    .line 314
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v11, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    invoke-virtual {v1, v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;[Z)V

    goto :goto_5

    .line 316
    :cond_5
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    move v7, v4

    :goto_4
    if-ge v7, v10, :cond_8

    .line 318
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 319
    iget-object v14, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v4

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_6

    .line 320
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 321
    sget-object v7, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    const/4 v14, 0x1

    aput-boolean v14, v7, v0

    goto :goto_5

    :cond_6
    const/4 v14, 0x1

    .line 324
    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v14

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v4, :cond_7

    .line 325
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v11

    if-ge v4, v11, :cond_7

    .line 326
    sget-object v4, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    aput-boolean v14, v4, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_5
    const/16 v4, 0x8

    if-ge v13, v4, :cond_b

    .line 333
    sget-object v4, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v0, v10, :cond_9

    .line 338
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 339
    iget v14, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 340
    iget v14, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    add-int/2addr v14, v11

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 342
    :cond_9
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 343
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 344
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v7, :cond_a

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    if-ge v7, v0, :cond_a

    .line 349
    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 350
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aput-object v7, v0, v11

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 355
    :goto_7
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_c

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    if-ge v7, v4, :cond_c

    .line 360
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 361
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aput-object v4, v0, v7

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 369
    :cond_c
    :goto_8
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    if-le v4, v7, :cond_d

    .line 374
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 375
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aput-object v4, v0, v7

    const/4 v0, 0x1

    const/4 v12, 0x1

    .line 379
    :cond_d
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    if-le v4, v7, :cond_e

    .line 384
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 385
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aput-object v4, v0, v7

    move v0, v7

    move v14, v0

    goto :goto_9

    :cond_e
    const/4 v7, 0x1

    move v14, v12

    :goto_9
    if-nez v14, :cond_10

    .line 391
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v4, v4, v11

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_f

    if-lez v5, :cond_f

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-le v4, v5, :cond_f

    .line 396
    iput-boolean v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 398
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v0, v11

    .line 399
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    move v0, v7

    move v14, v0

    .line 403
    :cond_f
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v11, :cond_10

    if-lez v6, :cond_10

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_10

    .line 408
    iput-boolean v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 410
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v0, v7

    .line 411
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    move v11, v0

    move v12, v14

    :goto_a
    move v0, v13

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 421
    :cond_11
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_12

    .line 422
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 423
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 425
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 426
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    add-int/2addr v0, v3

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 427
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_b

    .line 429
    :cond_12
    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 430
    iput v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    :goto_b
    if-eqz v12, :cond_13

    .line 433
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    .line 434
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aput-object v8, v0, v2

    .line 436
    :cond_13
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    if-ne v1, v0, :cond_14

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    :cond_14
    return-void
.end method

.method public reset()V
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 113
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 114
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 115
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 116
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->reset()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 96
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 225
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 226
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 227
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 228
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    return-void
.end method

.method public updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;[Z)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 199
    aput-boolean v1, p2, v0

    .line 200
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    .line 201
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 203
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 204
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V

    .line 205
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 206
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 207
    aput-boolean v7, p2, v0

    .line 209
    :cond_0
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    .line 210
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 211
    aput-boolean v7, p2, v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

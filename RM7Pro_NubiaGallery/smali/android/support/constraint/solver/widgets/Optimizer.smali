.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field private static final DEBUG_OPTIMIZE:Z = false

.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_ALL:I = 0x2

.field public static final OPTIMIZATION_BASIC:I = 0x4

.field public static final OPTIMIZATION_CHAIN:I = 0x8

.field public static final OPTIMIZATION_NONE:I = 0x1

.field private static final TRACE_OPTIMIZE:Z = false

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 37
    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 4

    .line 46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 49
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 50
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 51
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 52
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 53
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 55
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 60
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 61
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 62
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v1

    .line 63
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 64
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 65
    iget v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 66
    :cond_1
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 67
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 69
    :cond_2
    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 70
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    :cond_3
    return-void
.end method

.method static optimize(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z
    .locals 14

    .line 81
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 84
    :goto_0
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v5, v2

    :goto_2
    const/4 v6, 0x2

    if-ge v5, v0, :cond_4

    .line 87
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_2

    .line 89
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 90
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    goto :goto_3

    .line 92
    :cond_2
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 93
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    :goto_3
    if-eqz v3, :cond_3

    .line 96
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 97
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 98
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    goto :goto_4

    .line 100
    :cond_3
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v2, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 101
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v2, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    .line 102
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v2, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_5
    const/4 v7, 0x0

    if-ge v5, v0, :cond_b

    .line 107
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 111
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v2

    .line 112
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v4

    .line 116
    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    const/high16 v12, 0x3f000000    # 0.5f

    if-nez v11, :cond_7

    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v11, :cond_7

    .line 117
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_5

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_5

    if-nez v1, :cond_7

    .line 118
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v13, :cond_7

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v13, :cond_7

    .line 119
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, v2

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v13, :cond_7

    .line 120
    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidth:I

    iget v13, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    sub-int/2addr v11, v13

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    .line 121
    iget v13, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    mul-float/2addr v11, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v11, v13

    .line 122
    invoke-virtual {v9, p0, v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 123
    iget v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v11, v9

    invoke-virtual {v10, p0, v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_6

    .line 126
    :cond_5
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_6

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v13, :cond_6

    .line 127
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    invoke-virtual {v9, p0, v10, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_6

    .line 128
    :cond_6
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_7

    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v9, v11, :cond_7

    .line 129
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidth:I

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-virtual {v10, p0, v9, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 133
    :cond_7
    :goto_6
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v6

    .line 134
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    .line 137
    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v11, :cond_a

    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v11, :cond_a

    .line 138
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_8

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_8

    if-nez v3, :cond_a

    .line 139
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v13, :cond_a

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v11, v13, :cond_a

    .line 140
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, v4

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v13, :cond_a

    .line 141
    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeight:I

    iget v13, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v11, v13

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    .line 142
    iget v13, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    mul-float/2addr v11, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    add-int/2addr v11, v12

    .line 143
    invoke-virtual {v9, p0, v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 144
    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v11, v8

    invoke-virtual {v10, p0, v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_7

    .line 147
    :cond_8
    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_9

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v8, v11, :cond_9

    .line 148
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    invoke-virtual {v9, p0, v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_7

    .line 149
    :cond_9
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_a

    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v8, v9, :cond_a

    .line 150
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeight:I

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v10, p0, v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_b
    move v1, v2

    :goto_8
    if-ge v1, v0, :cond_18

    .line 169
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 170
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_d

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_c

    goto :goto_9

    :cond_c
    move v5, v2

    goto :goto_a

    :cond_d
    :goto_9
    move v5, v4

    :goto_a
    if-eqz v5, :cond_11

    .line 173
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v2

    .line 174
    iget-object v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v4

    .line 175
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-ne v8, v4, :cond_f

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v8, :cond_f

    .line 176
    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_e

    .line 177
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v6, p0, v5, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_b

    .line 179
    :cond_e
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v6, p0, v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_b

    .line 181
    :cond_f
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v8, :cond_11

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-ne v8, v4, :cond_11

    .line 182
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_10

    .line 183
    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5, p0, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_b

    .line 185
    :cond_10
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v5, p0, v8, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 189
    :cond_11
    :goto_b
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_13

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_12

    goto :goto_c

    :cond_12
    move v5, v2

    goto :goto_d

    :cond_13
    :goto_c
    move v5, v4

    :goto_d
    if-eqz v5, :cond_17

    .line 192
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 193
    iget-object v6, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 194
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-ne v8, v4, :cond_15

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v8, :cond_15

    .line 195
    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14

    .line 196
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v6, p0, v5, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_e

    .line 198
    :cond_14
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v6, p0, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_e

    .line 200
    :cond_15
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-nez v8, :cond_17

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-ne v8, v4, :cond_17

    .line 201
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_16

    .line 202
    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v5, p0, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    goto :goto_e

    .line 204
    :cond_16
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v5, p0, v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolve(Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    :cond_17
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_18
    move p0, v2

    :goto_f
    if-ge p0, v0, :cond_1d

    .line 259
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 260
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-eq v3, v4, :cond_19

    return v2

    .line 263
    :cond_19
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-eq v3, v4, :cond_1a

    return v2

    .line 266
    :cond_1a
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-eq v3, v4, :cond_1b

    return v2

    .line 269
    :cond_1b
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-eq v1, v4, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_1d
    :goto_10
    if-ge v2, v0, :cond_1e

    .line 278
    iget-object p0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 279
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    .line 280
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    .line 281
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    .line 282
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolvedValue:I

    .line 283
    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return v4
.end method

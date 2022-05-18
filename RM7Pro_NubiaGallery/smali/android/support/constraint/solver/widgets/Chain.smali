.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 49
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 50
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 53
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 54
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    if-ge v0, v2, :cond_1

    .line 57
    aget-object v4, v3, v0

    .line 58
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 84
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    if-ne v1, v2, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_3

    .line 90
    iget v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v4, :cond_1

    move v4, v12

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 91
    :goto_1
    iget v5, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v5, v12, :cond_2

    move v5, v12

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 92
    :goto_2
    iget v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v6, v2, :cond_6

    goto :goto_5

    .line 94
    :cond_3
    iget v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v4, :cond_4

    move v4, v12

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 95
    :goto_3
    iget v5, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v5, v12, :cond_5

    move v5, v12

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 96
    :goto_4
    iget v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v6, v2, :cond_6

    :goto_5
    move v2, v12

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    move-object v8, v10

    move-object v7, v13

    move-object v12, v7

    move-object v15, v12

    move-object/from16 v16, v15

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_7
    if-nez v6, :cond_12

    .line 108
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v13, v11, p2

    .line 109
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v13, 0x8

    if-eq v11, v13, :cond_9

    if-eqz v7, :cond_7

    .line 111
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v8, v7, p2

    :cond_7
    if-nez v15, :cond_8

    move-object v15, v8

    :cond_8
    move-object v7, v8

    .line 119
    :cond_9
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    .line 121
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    if-eqz v2, :cond_a

    if-eq v8, v10, :cond_a

    if-eq v8, v15, :cond_a

    move/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v6, 0x6

    goto :goto_8

    :cond_a
    move/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v6, 0x1

    .line 127
    :goto_8
    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v20, v15

    iget-object v15, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x6

    invoke-virtual {v9, v7, v15, v13, v10}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 129
    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, v7, v10, v13, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 132
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v10, 0x0

    aput-object v10, v6, p2

    .line 133
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_d

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, p2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_d

    add-int/lit8 v14, v14, 0x1

    .line 136
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v6, v6, p2

    add-float/2addr v3, v6

    if-nez v16, :cond_b

    move-object/from16 v16, v8

    goto :goto_9

    .line 140
    :cond_b
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v8, v6, p2

    :goto_9
    if-eqz v1, :cond_c

    .line 144
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v9, v6, v7, v12, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_c
    move-object v12, v8

    :cond_d
    if-eqz v1, :cond_e

    .line 150
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x6

    const/4 v13, 0x0

    invoke-virtual {v9, v6, v7, v13, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    .line 156
    :goto_a
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_f

    .line 158
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 159
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v7, v8, :cond_10

    :cond_f
    move-object v6, v10

    :cond_10
    if-eqz v6, :cond_11

    move-object v8, v6

    move/from16 v6, v18

    goto :goto_b

    :cond_11
    const/4 v6, 0x1

    :goto_b
    move-object v13, v10

    move-object/from16 v7, v19

    move-object/from16 v15, v20

    move-object/from16 v10, p4

    goto/16 :goto_7

    :cond_12
    move-object v10, v13

    const/4 v13, 0x0

    if-eqz v7, :cond_13

    .line 174
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v6, v6, v11

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_13

    .line 175
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v11

    .line 176
    iget-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v11

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 177
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    const/4 v11, 0x6

    .line 176
    invoke-virtual {v9, v12, v10, v6, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_13
    if-eqz v1, :cond_14

    .line 183
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v10, v1

    .line 185
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    const/4 v10, 0x6

    .line 183
    invoke-virtual {v9, v0, v6, v1, v10}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_14
    if-lez v14, :cond_16

    move-object/from16 v0, v16

    :goto_c
    if-eqz v0, :cond_16

    .line 192
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eqz v1, :cond_15

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    .line 195
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v10, p2

    .line 196
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v17, v11, p2

    .line 197
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 198
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v0, v0, v12

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 199
    iget-object v14, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 200
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v13, v12

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v13, v14

    move-object v14, v6

    move/from16 v22, v5

    move-object v5, v15

    move v15, v10

    move/from16 v16, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v21, v12

    .line 201
    invoke-virtual/range {v14 .. v21}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 203
    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_d

    :cond_15
    move/from16 v22, v5

    move-object v5, v15

    :goto_d
    move-object v0, v1

    move-object v15, v5

    move/from16 v5, v22

    const/4 v13, 0x0

    goto :goto_c

    :cond_16
    move/from16 v22, v5

    move-object v5, v15

    if-eq v5, v7, :cond_2c

    if-eqz v2, :cond_17

    goto/16 :goto_1d

    :cond_17
    if-eqz v4, :cond_21

    if-eqz v5, :cond_21

    move-object v0, v5

    move-object v15, v0

    :goto_e
    if-eqz v15, :cond_31

    .line 247
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v10, v1, p2

    if-nez v10, :cond_19

    if-ne v15, v7, :cond_18

    goto :goto_f

    :cond_18
    move-object v13, v5

    move-object v11, v7

    move-object v12, v8

    goto/16 :goto_16

    .line 249
    :cond_19
    :goto_f
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 250
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 251
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    if-eq v0, v15, :cond_1b

    .line 253
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v3, v0

    .line 259
    :cond_1b
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    if-eqz v10, :cond_1d

    .line 263
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 264
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 265
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1c

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_11

    :cond_1c
    const/4 v4, 0x0

    .line 266
    :goto_11
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-object v6, v1

    move-object v11, v4

    goto :goto_13

    .line 268
    :cond_1d
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1e

    .line 270
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    .line 272
    :goto_12
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v4, v1

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v6, v0

    move-object v11, v1

    :goto_13
    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    if-eqz v6, :cond_18

    if-eqz v11, :cond_18

    if-ne v15, v5, :cond_1f

    .line 278
    iget-object v0, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move v4, v0

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    if-ne v15, v7, :cond_20

    .line 282
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move v12, v0

    goto :goto_15

    :cond_20
    const/4 v12, 0x0

    :goto_15
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x4

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v13

    move-object v13, v5

    move-object v5, v6

    move-object v6, v11

    move-object v11, v7

    move v7, v12

    move-object v12, v8

    move v8, v14

    .line 284
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :goto_16
    move-object v7, v11

    move-object v8, v12

    move-object v5, v13

    move-object v0, v15

    move-object v15, v10

    goto/16 :goto_e

    :cond_21
    move-object v13, v5

    move-object v11, v7

    move-object v12, v8

    if-eqz v22, :cond_31

    if-eqz v13, :cond_31

    move-object v0, v13

    move-object v15, v0

    :goto_17
    if-eqz v15, :cond_29

    .line 297
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eq v15, v13, :cond_28

    if-eqz v1, :cond_28

    if-ne v1, v11, :cond_22

    const/4 v10, 0x0

    goto :goto_18

    :cond_22
    move-object v10, v1

    .line 302
    :goto_18
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 303
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 304
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_23

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 305
    :cond_23
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 309
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    if-eqz v10, :cond_25

    .line 313
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 314
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 315
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_24

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_19

    :cond_24
    const/4 v3, 0x0

    .line 316
    :goto_19
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-object v5, v1

    move-object v6, v3

    goto :goto_1b

    .line 318
    :cond_25
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_26

    .line 320
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    .line 322
    :goto_1a
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v0

    move-object v6, v1

    :goto_1b
    if-eqz v2, :cond_27

    if-eqz v4, :cond_27

    if-eqz v5, :cond_27

    if-eqz v6, :cond_27

    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move v4, v7

    move v7, v8

    move v8, v14

    .line 326
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_27
    move-object v1, v10

    :cond_28
    move-object v0, v15

    move-object v15, v1

    goto :goto_17

    .line 334
    :cond_29
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    move-object/from16 v1, p4

    .line 335
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 336
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x1

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 337
    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2b

    if-eq v13, v11, :cond_2a

    .line 340
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v3, 0x6

    invoke-virtual {v9, v2, v1, v0, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_1c

    :cond_2a
    if-eqz v12, :cond_2b

    .line 342
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 343
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    const/4 v14, 0x6

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v14

    .line 342
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_2b
    :goto_1c
    if-eqz v12, :cond_31

    if-eq v13, v11, :cond_31

    .line 347
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_22

    :cond_2c
    :goto_1d
    move-object/from16 v1, p4

    move-object v11, v7

    move-object v12, v8

    .line 222
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 223
    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 224
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2d

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1e

    :cond_2d
    const/4 v4, 0x0

    .line 225
    :goto_1e
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_2e

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1f

    :cond_2e
    const/4 v5, 0x0

    :goto_1f
    if-eqz v4, :cond_31

    if-eqz v5, :cond_31

    if-nez p2, :cond_2f

    .line 229
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_20

    .line 231
    :cond_2f
    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_20
    move v6, v1

    .line 233
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    if-nez v11, :cond_30

    move-object v8, v12

    goto :goto_21

    :cond_30
    move-object v8, v11

    .line 238
    :goto_21
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 239
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x4

    move-object/from16 v0, p1

    move-object v2, v4

    move v3, v7

    move v4, v6

    move-object v6, v10

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_31
    :goto_22
    return-void
.end method

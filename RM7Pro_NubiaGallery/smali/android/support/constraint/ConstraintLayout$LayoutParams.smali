.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 2387
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 1730
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1735
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 1740
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1745
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1750
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1755
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1760
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1765
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1770
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1775
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1780
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1785
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1790
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 p2, 0x0

    .line 1795
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v0, 0x0

    .line 1800
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1805
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1810
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1815
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1820
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1825
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1830
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1835
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1840
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1845
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1850
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1855
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1860
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v2, 0x0

    .line 1865
    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1870
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v2, 0x1

    .line 1875
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1881
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1887
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1899
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1911
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1924
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1937
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1943
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1949
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1955
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1961
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1966
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1971
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1977
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1983
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1985
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1994
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2003
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2006
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2007
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2009
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2010
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2011
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2012
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2014
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2015
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2016
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2017
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2018
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2019
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2020
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2026
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2034
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2102
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 1730
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1735
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1740
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1745
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1750
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1755
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1760
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1765
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1770
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1775
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1780
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1785
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1790
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v1, 0x0

    .line 1795
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v2, 0x0

    .line 1800
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1805
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1810
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1815
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1820
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1825
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1830
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1835
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1840
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1845
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1850
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1855
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1860
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v4, 0x0

    .line 1865
    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1870
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v4, 0x1

    .line 1875
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1881
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1887
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1899
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1911
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1924
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1937
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1943
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1949
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1955
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1961
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1966
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1971
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1977
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1983
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1985
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1994
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2003
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2006
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2007
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2009
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2010
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2011
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2012
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2014
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2015
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2016
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2017
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2018
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2019
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2020
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2026
    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2034
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2104
    sget-object v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_37

    .line 2107
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 2108
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    if-ne v5, v6, :cond_0

    .line 2109
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v0, :cond_36

    .line 2111
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto/16 :goto_3

    .line 2113
    :cond_0
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    if-ne v5, v6, :cond_1

    .line 2114
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v0, :cond_36

    .line 2116
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto/16 :goto_3

    .line 2118
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    if-ne v5, v6, :cond_2

    .line 2119
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v0, :cond_36

    .line 2121
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_3

    .line 2123
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    if-ne v5, v6, :cond_3

    .line 2124
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v0, :cond_36

    .line 2126
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_3

    .line 2128
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    if-ne v5, v6, :cond_4

    .line 2129
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v0, :cond_36

    .line 2131
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_3

    .line 2133
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    if-ne v5, v6, :cond_5

    .line 2134
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v0, :cond_36

    .line 2136
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_3

    .line 2138
    :cond_5
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    if-ne v5, v6, :cond_6

    .line 2139
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v0, :cond_36

    .line 2141
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_3

    .line 2143
    :cond_6
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    if-ne v5, v6, :cond_7

    .line 2144
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v0, :cond_36

    .line 2146
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_3

    .line 2148
    :cond_7
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    if-ne v5, v6, :cond_8

    .line 2149
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v0, :cond_36

    .line 2151
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_3

    .line 2153
    :cond_8
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintCircle:I

    if-ne v5, v6, :cond_9

    .line 2154
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v6, v0, :cond_36

    .line 2156
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto/16 :goto_3

    .line 2158
    :cond_9
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintCircleRadius:I

    if-ne v5, v6, :cond_a

    .line 2159
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    goto/16 :goto_3

    .line 2160
    :cond_a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintCircleAngle:I

    if-ne v5, v6, :cond_b

    .line 2161
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    cmpg-float v7, v5, v2

    if-gez v7, :cond_36

    sub-float v5, v6, v5

    rem-float/2addr v5, v6

    .line 2163
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    goto/16 :goto_3

    .line 2165
    :cond_b
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    if-ne v5, v6, :cond_c

    .line 2166
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_3

    .line 2167
    :cond_c
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    if-ne v5, v6, :cond_d

    .line 2168
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_3

    .line 2169
    :cond_d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    if-ne v5, v6, :cond_e

    .line 2170
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_3

    .line 2171
    :cond_e
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    if-ne v5, v6, :cond_f

    .line 2172
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_3

    .line 2173
    :cond_f
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    if-ne v5, v6, :cond_10

    .line 2174
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_3

    .line 2175
    :cond_10
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v5, v6, :cond_11

    .line 2176
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_3

    .line 2177
    :cond_11
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    if-ne v5, v6, :cond_12

    .line 2178
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v0, :cond_36

    .line 2180
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_3

    .line 2182
    :cond_12
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    if-ne v5, v6, :cond_13

    .line 2183
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v0, :cond_36

    .line 2185
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_3

    .line 2187
    :cond_13
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    if-ne v5, v6, :cond_14

    .line 2188
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v0, :cond_36

    .line 2190
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_3

    .line 2192
    :cond_14
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    if-ne v5, v6, :cond_15

    .line 2193
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v0, :cond_36

    .line 2195
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_3

    .line 2197
    :cond_15
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    if-ne v5, v6, :cond_16

    .line 2198
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_3

    .line 2199
    :cond_16
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginTop:I

    if-ne v5, v6, :cond_17

    .line 2200
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_3

    .line 2201
    :cond_17
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginRight:I

    if-ne v5, v6, :cond_18

    .line 2202
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_3

    .line 2203
    :cond_18
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    if-ne v5, v6, :cond_19

    .line 2204
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_3

    .line 2205
    :cond_19
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginStart:I

    if-ne v5, v6, :cond_1a

    .line 2206
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_3

    .line 2207
    :cond_1a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    if-ne v5, v6, :cond_1b

    .line 2208
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_3

    .line 2209
    :cond_1b
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    if-ne v5, v6, :cond_1c

    .line 2210
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_3

    .line 2211
    :cond_1c
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    if-ne v5, v6, :cond_1d

    .line 2212
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_3

    .line 2213
    :cond_1d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    if-ne v5, v6, :cond_23

    .line 2214
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 2215
    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2216
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-eqz v5, :cond_36

    .line 2218
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2219
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_20

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_20

    .line 2221
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    .line 2222
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2223
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_1

    :cond_1e
    const-string v8, "H"

    .line 2224
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 2225
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    :cond_1f
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_20
    move v6, v1

    .line 2231
    :goto_2
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_22

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_22

    .line 2233
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2234
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2235
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_36

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_36

    .line 2237
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 2238
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v5, v2

    if-lez v7, :cond_36

    cmpl-float v7, v6, v2

    if-lez v7, :cond_36

    .line 2240
    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-ne v7, v4, :cond_21

    div-float/2addr v6, v5

    .line 2241
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto/16 :goto_3

    :cond_21
    div-float/2addr v5, v6

    .line 2243
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 2251
    :cond_22
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2252
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_36

    .line 2254
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 2261
    :cond_23
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    if-ne v5, v6, :cond_24

    .line 2262
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_3

    .line 2263
    :cond_24
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    if-ne v5, v6, :cond_25

    .line 2264
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_3

    .line 2265
    :cond_25
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I

    if-ne v5, v6, :cond_26

    .line 2266
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_3

    .line 2267
    :cond_26
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I

    if-ne v5, v6, :cond_27

    .line 2268
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_3

    .line 2269
    :cond_27
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constrainedWidth:I

    if-ne v5, v6, :cond_28

    .line 2270
    iget-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    goto/16 :goto_3

    .line 2271
    :cond_28
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constrainedHeight:I

    if-ne v5, v6, :cond_29

    .line 2272
    iget-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    goto/16 :goto_3

    .line 2273
    :cond_29
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_default:I

    if-ne v5, v6, :cond_2a

    .line 2274
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2275
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matchConstraintDefault width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2276
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v5, v4, :cond_36

    .line 2277
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth\"=true\" instead."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2280
    :cond_2a
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_default:I

    if-ne v5, v6, :cond_2b

    .line 2281
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v5, v4, :cond_36

    .line 2283
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight\"=true\" instead."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2286
    :cond_2b
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_min:I

    const/4 v7, -0x2

    if-ne v5, v6, :cond_2c

    .line 2288
    :try_start_2
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2290
    :catch_0
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v7, :cond_36

    .line 2292
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    goto/16 :goto_3

    .line 2295
    :cond_2c
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_max:I

    if-ne v5, v6, :cond_2d

    .line 2297
    :try_start_3
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 2299
    :catch_1
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v7, :cond_36

    .line 2301
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto/16 :goto_3

    .line 2304
    :cond_2d
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_percent:I

    if-ne v5, v6, :cond_2e

    .line 2305
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    goto :goto_3

    .line 2306
    :cond_2e
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_min:I

    if-ne v5, v6, :cond_2f

    .line 2308
    :try_start_4
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 2310
    :catch_2
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v7, :cond_36

    .line 2312
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    goto :goto_3

    .line 2315
    :cond_2f
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_max:I

    if-ne v5, v6, :cond_30

    .line 2317
    :try_start_5
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 2319
    :catch_3
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v7, :cond_36

    .line 2321
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto :goto_3

    .line 2324
    :cond_30
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_percent:I

    if-ne v5, v6, :cond_31

    .line 2325
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    goto :goto_3

    .line 2326
    :cond_31
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    if-ne v5, v6, :cond_32

    goto :goto_3

    .line 2328
    :cond_32
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    if-ne v5, v6, :cond_33

    goto :goto_3

    .line 2330
    :cond_33
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    if-ne v5, v6, :cond_34

    goto :goto_3

    .line 2332
    :cond_34
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    if-ne v5, v6, :cond_35

    goto :goto_3

    .line 2334
    :cond_35
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    :catch_4
    :cond_36
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2340
    :cond_37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2341
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 5

    .line 2042
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 1730
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1735
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1740
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1745
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1750
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1755
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1760
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1765
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1770
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1775
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1780
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1785
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1790
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v1, 0x0

    .line 1795
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v2, 0x0

    .line 1800
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1805
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1810
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1815
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1820
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1825
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1830
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1835
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1840
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1845
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1850
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1855
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1860
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v4, 0x0

    .line 1865
    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1870
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v4, 0x1

    .line 1875
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1881
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1887
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1899
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1911
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1924
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1937
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1943
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1949
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1955
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1961
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1966
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1971
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1977
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1983
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1985
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1994
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2003
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2006
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2007
    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2009
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2010
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2011
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2012
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2014
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2015
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2016
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2017
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2018
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2019
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2020
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2026
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2034
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2043
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2044
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2045
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2046
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2047
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2048
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2049
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2050
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2051
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2052
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2053
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2054
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2055
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2056
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2057
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2058
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2059
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2060
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2061
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2062
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2063
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2064
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2065
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2066
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2067
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2068
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2069
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2070
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2071
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2072
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2073
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2074
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2075
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2076
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2077
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2078
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2079
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2080
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2081
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2082
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2083
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2084
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2085
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2086
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2087
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2088
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2089
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2090
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2091
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2092
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2093
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2094
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2095
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2096
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2097
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2098
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 2391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 1730
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1735
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1740
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1745
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1750
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1755
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1760
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1765
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1770
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1775
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1780
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1785
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1790
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v0, 0x0

    .line 1795
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v1, 0x0

    .line 1800
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 1805
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1810
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1815
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1820
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1825
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1830
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1835
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1840
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1845
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1850
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1855
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1860
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v3, 0x0

    .line 1865
    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1870
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v3, 0x1

    .line 1875
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1881
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1887
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1899
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1911
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1924
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1937
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1943
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1949
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1955
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1961
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1966
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 1971
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 1977
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1983
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1985
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1994
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2003
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2006
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2007
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2009
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2010
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2011
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2012
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2014
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2015
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2016
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2017
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2018
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2019
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2020
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2026
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2034
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 2029
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    :cond_0
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 6

    .line 2400
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 2401
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 2403
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 p1, -0x1

    .line 2405
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2406
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2407
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2408
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2410
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2411
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2412
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2413
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2414
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2416
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 2417
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 2418
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 2420
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_a

    .line 2424
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, p1, :cond_1

    .line 2425
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    :goto_1
    move v3, v4

    goto :goto_2

    .line 2427
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, p1, :cond_2

    .line 2428
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_1

    .line 2431
    :cond_2
    :goto_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, p1, :cond_3

    .line 2432
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move v3, v4

    .line 2435
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, p1, :cond_4

    .line 2436
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    goto :goto_3

    :cond_4
    move v4, v3

    .line 2439
    :goto_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, p1, :cond_5

    .line 2440
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2442
    :cond_5
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, p1, :cond_6

    .line 2443
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    .line 2446
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float v3, v2, v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2449
    :cond_7
    iget-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v3, :cond_10

    .line 2450
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_8

    sub-float/2addr v2, v3

    .line 2451
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 2452
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 2453
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    goto :goto_4

    .line 2454
    :cond_8
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-eq v2, p1, :cond_9

    .line 2455
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 2456
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 2457
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_4

    .line 2458
    :cond_9
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v2, p1, :cond_10

    .line 2459
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 2460
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 2461
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_4

    .line 2465
    :cond_a
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, p1, :cond_b

    .line 2466
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2468
    :cond_b
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, p1, :cond_c

    .line 2469
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2471
    :cond_c
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, p1, :cond_d

    .line 2472
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2474
    :cond_d
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, p1, :cond_e

    .line 2475
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2477
    :cond_e
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, p1, :cond_f

    .line 2478
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2480
    :cond_f
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, p1, :cond_10

    .line 2481
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2485
    :cond_10
    :goto_4
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v2, p1, :cond_14

    .line 2487
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, p1, :cond_11

    .line 2488
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2489
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 2490
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 2492
    :cond_11
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, p1, :cond_12

    .line 2493
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2494
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 2495
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 2498
    :cond_12
    :goto_5
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v1, p1, :cond_13

    .line 2499
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2500
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 2501
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .line 2503
    :cond_13
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v1, p1, :cond_14

    .line 2504
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2505
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 2506
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    :cond_14
    :goto_6
    return-void
.end method

.method public validate()V
    .locals 5

    const/4 v0, 0x0

    .line 2345
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/4 v1, 0x1

    .line 2346
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2347
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2348
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v2, :cond_0

    .line 2349
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2352
    :cond_0
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v2, :cond_1

    .line 2353
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2354
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2356
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v2, v4, :cond_3

    .line 2357
    :cond_2
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2361
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v2, v1, :cond_3

    .line 2362
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 2363
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2366
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v4, :cond_5

    .line 2367
    :cond_4
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2371
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v0, v1, :cond_5

    .line 2372
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 2373
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2376
    :cond_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v4, :cond_8

    .line 2377
    :cond_6
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2378
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2379
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2380
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_7

    .line 2381
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2383
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    :cond_8
    return-void
.end method

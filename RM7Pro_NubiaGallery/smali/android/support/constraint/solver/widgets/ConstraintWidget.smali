.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroid/support/constraint/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field protected static final ANCHOR_BASELINE:I = 0x4

.field protected static final ANCHOR_BOTTOM:I = 0x3

.field protected static final ANCHOR_LEFT:I = 0x0

.field protected static final ANCHOR_RIGHT:I = 0x1

.field protected static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.5f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field protected mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 67
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 72
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 73
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 74
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 76
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 78
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 82
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 83
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 85
    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    .line 86
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 115
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 116
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 117
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 118
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 119
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 120
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 121
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 122
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 130
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const/4 v6, 0x5

    aput-object v4, v5, v6

    iput-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    new-array v4, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 136
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 142
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 143
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 144
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 145
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 148
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 149
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 152
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 153
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 154
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 155
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 158
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 159
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 162
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 175
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 176
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 184
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 187
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 189
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 190
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 204
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 205
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    new-array v0, v2, [F

    .line 209
    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v7

    .line 211
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v7

    .line 212
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 214
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 215
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 287
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 67
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 72
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 73
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 74
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 76
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 78
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 82
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 83
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 85
    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    .line 86
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 115
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 116
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 117
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 118
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 119
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 120
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 121
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 122
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 130
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const/4 v6, 0x5

    aput-object v4, v5, v6

    iput-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    new-array v4, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 136
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 142
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 143
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 144
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 145
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 148
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 149
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 152
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 153
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 154
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 155
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 158
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 159
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 162
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 175
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 176
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 184
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 187
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 189
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 190
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 204
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 205
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    new-array v0, v2, [F

    .line 209
    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v7

    .line 211
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v7

    .line 212
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 214
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 215
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 299
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 300
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 301
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 302
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 303
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 304
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .line 335
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p11

    move/from16 v4, p12

    .line 2308
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resolutionStatus:I

    if-ne v5, v6, :cond_0

    .line 2310
    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 2311
    invoke-virtual {v2, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    return-void

    .line 2315
    :cond_0
    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2316
    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2317
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2318
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    .line 2320
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v18

    .line 2321
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v19

    .line 2322
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v20

    if-eqz p14, :cond_1

    const/4 v14, 0x3

    goto :goto_0

    :cond_1
    move/from16 v14, p16

    .line 2329
    :goto_0
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x2

    const/4 v15, 0x0

    if-eq v12, v6, :cond_2

    if-eq v12, v13, :cond_2

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    :cond_2
    move v12, v15

    goto :goto_1

    :cond_3
    move v12, v6

    .line 2344
    :goto_1
    iget v13, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-ne v13, v6, :cond_4

    move v6, v15

    move v12, v6

    goto :goto_2

    :cond_4
    move/from16 v6, p10

    :goto_2
    if-nez v12, :cond_8

    if-eqz p6, :cond_6

    const/4 v13, 0x3

    .line 2351
    invoke-virtual {v10, v9, v5, v15, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v13, 0x6

    if-lez v3, :cond_5

    .line 2353
    invoke-virtual {v10, v9, v5, v3, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_5
    const v15, 0x7fffffff

    if-ge v4, v15, :cond_7

    .line 2356
    invoke-virtual {v10, v9, v5, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_3

    :cond_6
    const/4 v13, 0x6

    .line 2359
    invoke-virtual {v10, v9, v5, v6, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :cond_7
    :goto_3
    move/from16 v1, p17

    move/from16 v4, p18

    move v15, v12

    move/from16 v22, v14

    const/4 v0, 0x2

    goto/16 :goto_e

    :cond_8
    const/4 v4, -0x2

    move/from16 v13, p17

    if-ne v13, v4, :cond_9

    move/from16 v13, p18

    move v15, v6

    goto :goto_4

    :cond_9
    move v15, v13

    move/from16 v13, p18

    :goto_4
    if-ne v13, v4, :cond_a

    move v4, v6

    goto :goto_5

    :cond_a
    move v4, v13

    :goto_5
    if-lez v15, :cond_c

    if-eqz p2, :cond_b

    const/4 v13, 0x6

    .line 2371
    invoke-virtual {v10, v9, v5, v15, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6

    :cond_b
    const/4 v13, 0x6

    .line 2373
    invoke-virtual {v10, v9, v5, v15, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2375
    :goto_6
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_7

    :cond_c
    const/4 v13, 0x6

    :goto_7
    if-lez v4, :cond_e

    if-eqz p2, :cond_d

    const/4 v13, 0x1

    .line 2379
    invoke-virtual {v10, v9, v5, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    const/4 v13, 0x6

    goto :goto_8

    .line 2381
    :cond_d
    invoke-virtual {v10, v9, v5, v4, v13}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2383
    :goto_8
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_e
    const/4 v13, 0x1

    if-ne v14, v13, :cond_11

    if-nez p2, :cond_10

    if-eqz p15, :cond_f

    goto :goto_9

    .line 2389
    :cond_f
    invoke-virtual {v10, v9, v5, v6, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v13, 0x3

    .line 2387
    invoke-virtual {v10, v9, v5, v6, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :goto_a
    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v0, 0x2

    goto/16 :goto_d

    :cond_11
    const/4 v13, 0x2

    if-ne v14, v13, :cond_14

    .line 2394
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_13

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_12

    goto :goto_b

    .line 2399
    :cond_12
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 2400
    iget-object v13, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v21, v12

    goto :goto_c

    .line 2396
    :cond_13
    :goto_b
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 2397
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object/from16 v21, v1

    move-object v1, v12

    .line 2402
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    const/4 v0, 0x2

    const/16 v16, 0x3

    move-object v13, v9

    move/from16 v22, v14

    move-object v14, v5

    move/from16 v23, v15

    move-object v15, v1

    move-object/from16 v16, v21

    move/from16 v17, p19

    invoke-virtual/range {v12 .. v17}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    move/from16 v1, v23

    const/4 v15, 0x0

    goto :goto_e

    :cond_14
    move v0, v13

    move/from16 v22, v14

    move/from16 v23, v15

    :goto_d
    move v15, v12

    move/from16 v1, v23

    :goto_e
    if-eqz v19, :cond_15

    add-int/lit8 v12, v18, 0x1

    goto :goto_f

    :cond_15
    move/from16 v12, v18

    :goto_f
    if-eqz v20, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    if-eqz v15, :cond_18

    if-eq v12, v0, :cond_18

    if-nez p14, :cond_18

    .line 2414
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v4, :cond_17

    .line 2416
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_17
    const/4 v13, 0x6

    .line 2418
    invoke-virtual {v10, v9, v5, v6, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v15, 0x0

    goto :goto_10

    :cond_18
    const/4 v13, 0x6

    :goto_10
    if-eqz p20, :cond_2b

    if-eqz p15, :cond_19

    goto/16 :goto_16

    :cond_19
    const/4 v0, 0x5

    if-nez v18, :cond_1a

    if-nez v19, :cond_1a

    if-nez v20, :cond_1a

    move/from16 v6, p9

    .line 2434
    invoke-virtual {v10, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    const/4 v14, 0x0

    if-eqz p2, :cond_28

    .line 2436
    invoke-virtual {v10, v11, v9, v14, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_14

    :cond_1a
    const/4 v14, 0x0

    if-eqz v18, :cond_1b

    if-nez v19, :cond_1b

    .line 2439
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v10, v5, v7, v1, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p2, :cond_28

    .line 2441
    invoke-virtual {v10, v11, v9, v14, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_14

    :cond_1b
    if-nez v18, :cond_1c

    if-eqz v19, :cond_1c

    .line 2444
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v9, v8, v1, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p2, :cond_28

    move-object/from16 v1, p3

    .line 2446
    invoke-virtual {v10, v5, v1, v14, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_14

    :cond_1c
    if-eqz v18, :cond_28

    if-eqz v19, :cond_28

    if-nez p15, :cond_28

    if-eqz v15, :cond_20

    if-eqz p2, :cond_1d

    if-nez v3, :cond_1d

    .line 2452
    invoke-virtual {v10, v9, v5, v14, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2455
    :cond_1d
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v5, v7, v3, v13}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2456
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v9, v8, v3, v13}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move/from16 v3, v22

    if-nez v3, :cond_1e

    .line 2458
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    const/4 v12, 0x4

    invoke-virtual {v10, v5, v7, v6, v12}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2459
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v10, v9, v8, v6, v12}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_12

    :cond_1e
    const/4 v6, 0x3

    if-ne v3, v6, :cond_21

    if-nez p14, :cond_1f

    move v12, v0

    goto :goto_11

    :cond_1f
    move v12, v6

    .line 2467
    :goto_11
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    invoke-virtual {v10, v5, v7, v13, v12}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2468
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v10, v9, v8, v13, v12}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_13

    :cond_20
    move/from16 v3, v22

    :goto_12
    const/4 v6, 0x3

    :cond_21
    :goto_13
    if-eqz v15, :cond_25

    const/4 v12, 0x1

    if-eqz v3, :cond_22

    if-ne v3, v12, :cond_25

    :cond_22
    if-ne v3, v12, :cond_23

    .line 2475
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2476
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v12, 0x6

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v5, p13

    move-object v6, v8

    move-object v7, v9

    move v8, v0

    move-object v13, v9

    move v9, v12

    .line 2475
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_15

    :cond_23
    move-object v13, v9

    if-nez v3, :cond_29

    if-gtz v4, :cond_24

    if-lez v1, :cond_29

    .line 2479
    :cond_24
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2480
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v5, p13

    move-object v6, v8

    move-object v7, v13

    move v8, v0

    .line 2479
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_15

    :cond_25
    move-object v13, v9

    if-eqz v15, :cond_26

    if-ne v3, v6, :cond_26

    .line 2484
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2485
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v5, p13

    move-object v6, v8

    move-object v7, v13

    move v8, v0

    .line 2484
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_15

    :cond_26
    if-eqz p2, :cond_27

    .line 2488
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v10, v5, v7, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2489
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v13, v8, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2490
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2491
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v5, p13

    move-object v6, v8

    move-object v7, v13

    move v8, v0

    .line 2490
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_15

    .line 2493
    :cond_27
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2494
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v5, p13

    move-object v6, v8

    move-object v7, v13

    move v8, v0

    .line 2493
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_15

    :cond_28
    :goto_14
    move-object v13, v9

    :cond_29
    :goto_15
    if-eqz p2, :cond_2a

    const/4 v1, 0x6

    .line 2500
    invoke-virtual {v10, v11, v13, v14, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_2a
    return-void

    :cond_2b
    :goto_16
    move v1, v13

    const/4 v14, 0x0

    move-object v13, v9

    if-ge v12, v0, :cond_2c

    if-eqz p2, :cond_2c

    .line 2428
    invoke-virtual {v10, v11, v13, v14, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2069
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v21

    .line 2070
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 2071
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2072
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2073
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 2080
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_a

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v13

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v13

    .line 2082
    :goto_0
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v13

    .line 2085
    :goto_1
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_2

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v7, v8, :cond_3

    :cond_2
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_4

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_4

    .line 2087
    :cond_3
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7, v15, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v13

    .line 2091
    :goto_2
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v8, v9, :cond_6

    :cond_5
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_7

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v8, v9, :cond_7

    .line 2093
    :cond_6
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    move v8, v2

    goto :goto_3

    :cond_7
    move v8, v13

    :goto_3
    if-eqz v0, :cond_8

    .line 2097
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v9, v1, :cond_8

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    .line 2099
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2100
    invoke-virtual {v14, v9, v10, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_8
    if-eqz v5, :cond_9

    .line 2103
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v9, v1, :cond_9

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    .line 2105
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2106
    invoke-virtual {v14, v9, v4, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_9
    move v12, v5

    move/from16 v22, v7

    move/from16 v23, v8

    goto :goto_4

    :cond_a
    move v0, v13

    move v12, v0

    move/from16 v22, v12

    move/from16 v23, v22

    .line 2110
    :goto_4
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2111
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v5, v7, :cond_b

    move v5, v7

    .line 2114
    :cond_b
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2115
    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_c

    move v7, v8

    .line 2120
    :cond_c
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v13

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_d

    move v8, v2

    goto :goto_5

    :cond_d
    move v8, v13

    .line 2121
    :goto_5
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v2

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v11, :cond_e

    move v9, v2

    goto :goto_6

    :cond_e
    move v9, v13

    .line 2126
    :goto_6
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2127
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/16 v16, 0x0

    cmpl-float v11, v11, v16

    const/4 v2, -0x1

    if-lez v11, :cond_13

    .line 2129
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v11, v1, :cond_13

    .line 2131
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v13

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v11, :cond_f

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v1, v1, v11

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v11, :cond_f

    .line 2133
    invoke-virtual {v15, v0, v12, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    const/4 v11, 0x1

    goto :goto_7

    .line 2134
    :cond_f
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v13

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v8, :cond_10

    .line 2135
    iput v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2136
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move/from16 v24, v1

    move/from16 v25, v7

    const/4 v11, 0x1

    const/16 v26, 0x1

    goto :goto_9

    .line 2137
    :cond_10
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v1, v1, v11

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v8, :cond_12

    .line 2138
    iput v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2139
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v1, v2, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2141
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v7

    iput v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2143
    :cond_11
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    move/from16 v25, v1

    move/from16 v24, v5

    goto :goto_8

    :cond_12
    :goto_7
    move/from16 v24, v5

    move/from16 v25, v7

    :goto_8
    move/from16 v26, v11

    goto :goto_9

    :cond_13
    const/4 v11, 0x1

    move/from16 v24, v5

    move/from16 v25, v7

    move/from16 v26, v13

    :goto_9
    if-eqz v26, :cond_15

    .line 2147
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v1, :cond_14

    if-ne v1, v2, :cond_15

    :cond_14
    move/from16 v27, v11

    goto :goto_a

    :cond_15
    move/from16 v27, v13

    .line 2151
    :goto_a
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v13

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_16

    instance-of v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_16

    move/from16 v28, v11

    goto :goto_b

    :cond_16
    move/from16 v28, v13

    .line 2154
    :goto_b
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v9, 0x2

    const/16 v29, 0x0

    if-eq v1, v9, :cond_19

    .line 2155
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_17

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_c

    :cond_17
    move-object/from16 v30, v29

    .line 2156
    :goto_c
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_18

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_d

    :cond_18
    move-object/from16 v31, v29

    .line 2157
    :goto_d
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v1, v13

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move v9, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v32, v11

    move v11, v1

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v1, v1, v13

    move/from16 v33, v12

    move v12, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v13, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v16, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v17, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v18, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v19, v1

    const/16 v20, 0x1

    move/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    move-object/from16 v35, v3

    move-object/from16 v3, v31

    move-object/from16 v31, v4

    move-object/from16 v4, v30

    move-object/from16 v36, v6

    move/from16 v6, v28

    move-object/from16 v28, v10

    move/from16 v10, v24

    move/from16 v14, v27

    move/from16 v15, v22

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    goto :goto_e

    :cond_19
    move-object/from16 v35, v3

    move-object/from16 v31, v4

    move-object/from16 v36, v6

    move-object/from16 v28, v10

    move/from16 v33, v12

    :goto_e
    move-object/from16 v15, p0

    .line 2163
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    return-void

    .line 2173
    :cond_1a
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1b

    instance-of v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1b

    move v6, v14

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    :goto_f
    if-eqz v26, :cond_1d

    .line 2176
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eq v0, v14, :cond_1c

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    :cond_1c
    move/from16 v20, v14

    goto :goto_10

    :cond_1d
    const/16 v20, 0x0

    .line 2180
    :goto_10
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_1e

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v10, p1

    move-object/from16 v2, v35

    move-object/from16 v4, v36

    invoke-virtual {v10, v2, v4, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2182
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    .line 2183
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    const/4 v3, 0x0

    .line 2185
    invoke-virtual {v10, v2, v0, v3, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move/from16 v22, v3

    goto :goto_11

    :cond_1e
    move-object/from16 v10, p1

    move-object/from16 v4, v36

    :cond_1f
    move/from16 v22, v14

    .line 2189
    :goto_11
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_12

    :cond_20
    move-object/from16 v24, v29

    .line 2190
    :goto_12
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v3, v0

    goto :goto_13

    :cond_21
    move-object/from16 v3, v29

    .line 2191
    :goto_13
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v0, v14

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v12, v0, v14

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v16, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v17, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v18, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    move-object/from16 v27, v4

    move-object/from16 v4, v24

    move/from16 v10, v25

    move/from16 v14, v20

    move/from16 v15, v23

    move/from16 v20, v22

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    if-eqz v26, :cond_23

    const/4 v6, 0x6

    move-object/from16 v7, p0

    .line 2198
    iget v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 2199
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_14

    .line 2201
    :cond_22
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v31

    move-object/from16 v4, v27

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_14

    :cond_23
    move-object/from16 v7, p0

    .line 2205
    :goto_14
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2206
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addCenterPoint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    :cond_24
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 6

    .line 1522
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 6

    .line 1507
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1539
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    .line 1557
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v11, 0x0

    if-ne v0, v1, :cond_c

    .line 1560
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_8

    .line 1561
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1562
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1563
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    .line 1564
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1567
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 1568
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v14, v11

    goto :goto_0

    .line 1571
    :cond_2
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1573
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    move v14, v13

    :goto_0
    if-eqz v9, :cond_3

    .line 1577
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz v12, :cond_5

    .line 1578
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v13, v11

    goto :goto_1

    .line 1581
    :cond_5
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1583
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    :goto_1
    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    .line 1588
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1589
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v14, :cond_7

    .line 1591
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1592
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_7
    if-eqz v13, :cond_1d

    .line 1594
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1595
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1597
    :cond_8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v0, :cond_b

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_9

    goto :goto_2

    .line 1605
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v0, :cond_a

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_1d

    .line 1607
    :cond_a
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1609
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1611
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1612
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1599
    :cond_b
    :goto_2
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1601
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1603
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1604
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1614
    :cond_c
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_e

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v1, :cond_d

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_e

    .line 1617
    :cond_d
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1618
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1619
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1620
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1621
    invoke-virtual {v2, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1622
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1623
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1624
    :cond_e
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_10

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v1, :cond_f

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_10

    .line 1627
    :cond_f
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1628
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1629
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1630
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1631
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1632
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1633
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1634
    :cond_10
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_11

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_11

    .line 1637
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1638
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1639
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1640
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1641
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1642
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1643
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1644
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1645
    :cond_11
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_12

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_12

    .line 1648
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1649
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1650
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1651
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1652
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1653
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1654
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1655
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1657
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1658
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1659
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1662
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_15

    .line 1663
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1664
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v0, :cond_13

    .line 1666
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_13
    if-eqz v3, :cond_14

    .line 1669
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_14
    :goto_3
    move-object/from16 v0, p5

    goto/16 :goto_6

    .line 1672
    :cond_15
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_19

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_16

    goto :goto_4

    .line 1698
    :cond_16
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_17

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_1c

    .line 1700
    :cond_17
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1701
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_18

    .line 1702
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1704
    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1705
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1706
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1707
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1708
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_5

    .line 1674
    :cond_19
    :goto_4
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1676
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1678
    :cond_1a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1679
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_1b

    .line 1680
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1682
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1683
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1684
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1685
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1686
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1c
    :goto_5
    move/from16 v11, p4

    goto :goto_3

    .line 1722
    :goto_6
    invoke-virtual {v1, v2, v11, v0, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 1723
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_1d
    :goto_7
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .locals 6

    .line 1486
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)V
    .locals 6

    .line 1482
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 8

    .line 1491
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1492
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 6

    .line 484
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 486
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    return-void
.end method

.method public connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    return-void
.end method

.method public disconnectUnlockedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 6

    .line 1878
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1880
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1881
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1882
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1883
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 1863
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1864
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1865
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1866
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1867
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 4

    .line 977
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 978
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 979
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v0

    .line 980
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v1

    .line 981
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 982
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v2, v0

    .line 983
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v3, v1

    .line 984
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .line 1895
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1923
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1915
    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1912
    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1918
    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1909
    :pswitch_4
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1906
    :pswitch_5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1903
    :pswitch_6
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1900
    :pswitch_7
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 1897
    :pswitch_8
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 862
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 824
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 872
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1382
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1176
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1185
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getDrawBottom()I
    .locals 2

    .line 741
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawHeight()I
    .locals 1

    .line 732
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return v0
.end method

.method public getDrawRight()I
    .locals 2

    .line 750
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawWidth()I
    .locals 1

    .line 728
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return v0
.end method

.method public getDrawX()I
    .locals 2

    .line 715
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 2

    .line 724
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 694
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 697
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 834
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5

    .line 1988
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object v2, p0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 1992
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 1993
    :cond_0
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_2

    .line 1994
    :cond_1
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 1995
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v1, v2

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    move-object v4, v1

    goto :goto_3

    .line 1999
    :cond_3
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    .line 2000
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v4, v2, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object v1, v0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1420
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1932
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 2

    .line 609
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getInternalDrawRight()I
    .locals 2

    .line 605
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method getInternalDrawX()I
    .locals 1

    .line 597
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    return v0
.end method

.method getInternalDrawY()I
    .locals 1

    .line 601
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 797
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 89
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 788
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 779
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .line 662
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 663
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 664
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_0

    .line 665
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 666
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_1

    .line 668
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 672
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .line 644
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 645
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 646
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 647
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 648
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_1

    .line 650
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 654
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 434
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .line 815
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRootWidgetContainer()Landroid/support/constraint/solver/widgets/WidgetContainer;
    .locals 2

    move-object v0, p0

    .line 419
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_0
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v1, :cond_1

    .line 423
    check-cast v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootX()I
    .locals 2

    .line 760
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 770
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 806
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 844
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5

    .line 2031
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object v2, p0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 2034
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 2035
    :cond_0
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_2

    .line 2036
    :cond_1
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 2037
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v1, v2

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    move-object v4, v1

    goto :goto_3

    .line 2041
    :cond_3
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    .line 2042
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v4, v2, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object v1, v0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1440
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1941
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 522
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 637
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 640
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getWrapHeight()I
    .locals 1

    .line 706
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return v0
.end method

.method public getWrapWidth()I
    .locals 1

    .line 685
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 619
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 628
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasAncestor(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 4

    .line 391
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 395
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    return v1

    .line 402
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-ne v0, v2, :cond_3

    return v1

    .line 406
    :cond_3
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v3
.end method

.method public hasBaseline()Z
    .locals 1

    .line 853
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 7

    .line 1467
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1468
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1469
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    return-void
.end method

.method public isHeightWrapContent()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 1974
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 2017
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .line 371
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 376
    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 379
    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isRoot()Z
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRootContainer()Z
    .locals 1

    .line 361
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWidthWrapContent()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public reset()V
    .locals 7

    .line 219
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 220
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 221
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 222
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 223
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 224
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 225
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 226
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    .line 228
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/4 v2, 0x0

    .line 229
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 230
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 231
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, -0x1

    .line 232
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 233
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 234
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 235
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 236
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 237
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 238
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 239
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 240
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 241
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 242
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 243
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 244
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 245
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 246
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 247
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 248
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v2

    .line 249
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 250
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 251
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 252
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 253
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 255
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 256
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 257
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 258
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 259
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 260
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 261
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aput v1, v0, v2

    .line 262
    aput v1, v0, v6

    .line 263
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 264
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 265
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v1, 0x7fffffff

    aput v1, v0, v2

    .line 266
    aput v1, v0, v6

    .line 267
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 268
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 269
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 270
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 271
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 272
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 273
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 274
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 275
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 276
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    return-void
.end method

.method public resetAllConstraints()V
    .locals 2

    .line 1732
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1733
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1734
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1735
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    return-void

    .line 1738
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 1739
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1740
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_0

    .line 1741
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1742
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1745
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_4

    .line 1746
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1747
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1748
    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1749
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public resetAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 8

    .line 1761
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1764
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1769
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1770
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1771
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1772
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1773
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1774
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1775
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1778
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1779
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1780
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1781
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1783
    :cond_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1784
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1785
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1786
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1788
    :cond_2
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1789
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    :cond_3
    if-ne p1, v5, :cond_5

    .line 1791
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1792
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1793
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1794
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1796
    :cond_4
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    :cond_5
    if-ne p1, v6, :cond_7

    .line 1798
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1799
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1800
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1801
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1803
    :cond_6
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1809
    :cond_9
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1810
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1805
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1806
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1813
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    return-void
.end method

.method public resetAnchors()V
    .locals 3

    .line 1820
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1821
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1823
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1827
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1828
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1829
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetAnchors(I)V
    .locals 4

    .line 1837
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1838
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1840
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1844
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1845
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1846
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 1847
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1848
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto :goto_1

    .line 1850
    :cond_1
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1852
    :goto_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 322
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 323
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 324
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 325
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 326
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 327
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 328
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0

    .line 1347
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 1370
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1372
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .locals 6

    .line 558
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 560
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 561
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 562
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".top"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 567
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    .line 568
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".baseline"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 1

    .line 1259
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1260
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1261
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1263
    :cond_0
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1264
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p2, p1, :cond_1

    .line 1265
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0

    .line 1166
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1167
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 1110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1111
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 1113
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1114
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 1116
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 1123
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 1126
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1127
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1130
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1131
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 1134
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 1136
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1144
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1147
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move p1, v0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 1155
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1156
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    :cond_7
    return-void

    .line 1105
    :cond_8
    :goto_2
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return-void
.end method

.method public setDrawHeight(I)V
    .locals 0

    .line 1035
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 1

    .line 994
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 995
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 996
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 997
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setDrawWidth(I)V
    .locals 0

    .line 1026
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return-void
.end method

.method public setDrawX(I)V
    .locals 1

    .line 1006
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1007
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setDrawY(I)V
    .locals 1

    .line 1016
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1017
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setFrame(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1281
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1282
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1284
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1285
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1286
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return-void

    .line 1291
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge p3, p1, :cond_1

    move p3, p1

    .line 1294
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge p4, p1, :cond_2

    move p4, p1

    .line 1298
    :cond_2
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1299
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1301
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p4, p1, :cond_3

    .line 1302
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1304
    :cond_3
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p3, p1, :cond_4

    .line 1305
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 1

    .line 931
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 941
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 937
    :cond_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 933
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    :goto_0
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1056
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1057
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v0, :cond_0

    .line 1058
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0

    .line 1195
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0

    .line 1410
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 0

    .line 1320
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    sub-int/2addr p2, p1

    .line 1321
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1322
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p2, p1, :cond_0

    .line 1323
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1950
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1951
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 1952
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 0

    .line 1071
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1072
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1073
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1074
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1076
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_0
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2

    .line 1391
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1228
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1230
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1215
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1217
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 920
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 921
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    return-void
.end method

.method public setOrigin(II)V
    .locals 0

    .line 909
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 910
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    .line 443
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0

    .line 1205
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0

    .line 1430
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 0

    .line 1334
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p2, p1

    .line 1335
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1336
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p2, p1, :cond_0

    .line 1337
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1962
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1963
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 1964
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 0

    .line 1089
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1090
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1091
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1092
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1094
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_0
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2

    .line 1400
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 513
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1044
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1045
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1046
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return-void
.end method

.method public setWrapHeight(I)V
    .locals 0

    .line 1249
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0

    .line 1240
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 890
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 899
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5

    .line 2226
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 2227
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2229
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_1

    .line 2230
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2233
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 2235
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    .line 2237
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2238
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne p3, v3, :cond_3

    .line 2240
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2245
    :cond_3
    :goto_0
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez p3, :cond_5

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_5

    .line 2246
    :cond_4
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2247
    :cond_5
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v4, :cond_7

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_7

    .line 2248
    :cond_6
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2252
    :cond_7
    :goto_1
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_a

    .line 2253
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2254
    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_a

    .line 2256
    :cond_8
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2257
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2258
    :cond_9
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 2259
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2260
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2265
    :cond_a
    :goto_2
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_c

    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    .line 2267
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    :cond_b
    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    .line 2269
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p1, v1, p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2270
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2274
    :cond_c
    :goto_3
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p1, v3, :cond_f

    .line 2275
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez p1, :cond_d

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p2, :cond_d

    .line 2276
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    .line 2277
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez p1, :cond_e

    .line 2278
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2279
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4

    .line 2281
    :cond_e
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2282
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_f
    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") wrap: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawPosition()V
    .locals 4

    .line 963
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 964
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 965
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v0

    .line 966
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v1

    .line 967
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 968
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v2, v0

    .line 969
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v3, v1

    .line 970
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 4

    .line 2510
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2511
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2512
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2513
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    .line 2514
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    return-void
.end method

.class public Lcom/android/calculator2/CalculatorResult;
.super Lcom/android/calculator2/AlignedTextView4Result;
.source "CalculatorResult.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lcom/android/calculator2/Evaluator$EvaluationListener;
.implements Lcom/android/calculator2/Evaluator$CharMetricsInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorResult$EvaluationRequest;
    }
.end annotation


# static fields
.field static final INVALID:I = 0x98bd90

.field private static final MAX_COPY_EXTRA:I = 0x64

.field private static final MAX_COPY_SIZE:I = 0xf4240

.field public static final MAX_LEADING_ZEROES:I = 0x6

.field private static final MAX_RECOMPUTE_DIGITS:I = 0x7d0

.field static final MAX_RIGHT_SCROLL:I = 0x989680

.field public static final MAX_TRAILING_ZEROES:I = 0x9

.field private static final SCI_NOTATION_EXTRA:I = 0x1

.field public static final SHOULD_EVALUATE:I = 0x1

.field public static final SHOULD_NOT_EVALUATE:I = 0x0

.field public static final SHOULD_REQUIRE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CalculatorResult"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAppendExponent:Z

.field private mCharWidth:F

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mCopyActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mCurrentPos:I

.field private mDecimalCredit:F

.field private mEvaluationListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

.field private mEvaluationRequest:I

.field private mEvaluator:Lcom/android/calculator2/Evaluator;

.field private final mExponentColorSpan:Landroid/text/style/ForegroundColorSpan;

.field final mGestureDetector:Landroid/view/GestureDetector;

.field private mGroupingSeparatorWidthRatio:F

.field private final mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

.field private mIndex:J

.field private mLastDisplayedOffset:I

.field private mLastPos:I

.field private mLsdOffset:I

.field private mMaxCharOffset:I

.field private mMaxPos:I

.field private mMinPos:I

.field private mNoEllipsisCredit:F

.field private mNoExponentCredit:F

.field private mScrollable:Z

.field final mScroller:Landroid/widget/OverScroller;

.field private mStoreToMemoryRequested:Z

.field private mValid:Z

.field private mWholeLen:I

.field private mWholePartFits:Z

.field private mWidthConstraint:I

.field private final mWidthLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/AlignedTextView4Result;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    .line 71
    iput-boolean p2, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    .line 110
    iput p2, p0, Lcom/android/calculator2/CalculatorResult;->mWidthConstraint:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    const/4 v0, 0x2

    .line 131
    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    .line 133
    iput-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    .line 161
    iput-boolean p2, p0, Lcom/android/calculator2/CalculatorResult;->mStoreToMemoryRequested:Z

    .line 165
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    .line 167
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getHighlightColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    .line 168
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, 0x7f06012b

    .line 169
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mExponentColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 170
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calculator2/CalculatorResult$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/CalculatorResult$1;-><init>(Lcom/android/calculator2/CalculatorResult;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mGestureDetector:Landroid/view/GestureDetector;

    .line 222
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 223
    new-instance v1, Lcom/android/calculator2/CalculatorResult$2;

    invoke-direct {v1, p0, v0}, Lcom/android/calculator2/CalculatorResult$2;-><init>(Lcom/android/calculator2/CalculatorResult;I)V

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorResult;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->setupActionMode()V

    .line 257
    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorResult;->setCursorVisible(Z)V

    .line 258
    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorResult;->setLongClickable(Z)V

    const p2, 0x7f110062

    .line 259
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorResult;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/calculator2/CalculatorResult;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorResult;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/calculator2/CalculatorResult;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/calculator2/CalculatorResult;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/calculator2/CalculatorResult;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/calculator2/CalculatorResult;Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorResult;->createContextMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->unhighlightResult()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/calculator2/CalculatorResult;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/calculator2/CalculatorResult;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method private copyContent()V
    .locals 6

    const-string v0, "copy_out"

    .line 1192
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getFullCopyText()Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1198
    new-instance v2, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide v4, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    invoke-virtual {v3, v4, v5}, Lcom/android/calculator2/Evaluator;->capture(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    const-string v0, "text/plain"

    .line 1199
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1200
    new-instance v3, Landroid/content/ClipData;

    const-string v4, "calculator result"

    invoke-direct {v3, v4, v0, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 1202
    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1100d8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private createContextMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f0e0004

    .line 1152
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1158
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->highlightResult()V

    const/4 p0, 0x1

    return p0
.end method

.method private expLen(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-double v0, p1

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method private formatResult(Ljava/lang/String;IIZZ[IZZZ)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, -0x1

    if-eqz p4, :cond_0

    move v8, v7

    goto :goto_0

    .line 676
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/calculator2/CalculatorResult;->getNaiveMsdIndexOf(Ljava/lang/String;)I

    move-result v8

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez p4, :cond_2

    if-eqz p5, :cond_1

    .line 679
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_1

    goto :goto_1

    :cond_1
    move v11, v9

    goto :goto_2

    .line 681
    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u2026"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v11, v10

    :goto_2
    const/16 v12, 0x2e

    .line 684
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eqz p6, :cond_3

    .line 686
    aput v2, p6, v9

    :cond_3
    if-nez p8, :cond_e

    if-eq v12, v7, :cond_4

    const v13, 0x7fffffff

    if-eq v8, v13, :cond_5

    sub-int v13, v8, v12

    const/4 v14, 0x7

    if-le v13, v14, :cond_5

    :cond_4
    if-eq v2, v7, :cond_5

    goto/16 :goto_9

    :cond_5
    if-eqz p9, :cond_19

    .line 768
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v12, v7, :cond_6

    .line 771
    invoke-virtual {p0, v1, v12}, Lcom/android/calculator2/CalculatorResult;->separatorChars(Ljava/lang/String;I)F

    move-result v4

    .line 772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v11, v12}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 775
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/android/calculator2/CalculatorResult;->separatorChars(Ljava/lang/String;I)F

    move-result v4

    .line 776
    invoke-static {v1, v11, v2}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v11, :cond_7

    add-int/lit8 v2, v2, -0x1

    :cond_7
    int-to-float v2, v2

    add-float/2addr v2, v4

    const/4 v4, 0x0

    if-ne v12, v7, :cond_8

    move v5, v4

    goto :goto_4

    .line 785
    :cond_8
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getDecimalCredit()F

    move-result v5

    :goto_4
    sub-float/2addr v2, v5

    if-eqz v11, :cond_9

    .line 786
    iget v5, v0, Lcom/android/calculator2/CalculatorResult;->mNoExponentCredit:F

    goto :goto_5

    .line 787
    :cond_9
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getNoEllipsisCredit()F

    move-result v5

    :goto_5
    sub-float v5, v2, v5

    sub-int v6, p3, v11

    int-to-float v6, v6

    const v7, 0x38d1b717    # 1.0E-4f

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    if-nez p7, :cond_b

    .line 793
    :goto_6
    iget v5, v0, Lcom/android/calculator2/CalculatorResult;->mNoExponentCredit:F

    sub-float v5, v2, v5

    sub-float/2addr v5, v4

    add-int/lit8 v6, p3, -0x1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 795
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_a

    .line 796
    iget-object v5, v0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter v5

    .line 797
    :try_start_0
    iget v6, v0, Lcom/android/calculator2/CalculatorResult;->mGroupingSeparatorWidthRatio:F

    add-float/2addr v4, v6

    .line 798
    monitor-exit v5

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    if-lez v9, :cond_c

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_c
    if-eqz v11, :cond_d

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    :cond_d
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorResult;->reformatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f

    :cond_e
    :goto_9
    if-lez v2, :cond_f

    neg-int v7, v2

    goto :goto_a

    :cond_f
    neg-int v7, v2

    sub-int/2addr v7, v10

    :goto_a
    if-nez p4, :cond_12

    add-int/lit8 v4, p3, -0x1

    if-ge v8, v4, :cond_12

    .line 702
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    add-int/2addr v4, v10

    add-int v4, v4, p5

    add-int/lit8 v3, p3, 0x1

    if-gt v4, v3, :cond_12

    if-le v12, v8, :cond_10

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v12, v10

    .line 714
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v8, 0x1

    .line 718
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 719
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_11

    const-string v5, "-"

    goto :goto_b

    :cond_11
    const-string v5, ""

    :goto_b
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v7

    sub-int/2addr v3, v8

    sub-int/2addr v3, v10

    move-object v4, v1

    move v1, v10

    goto :goto_c

    :cond_12
    move-object v4, v1

    move v3, v7

    move v1, v9

    :goto_c
    if-nez p7, :cond_18

    const/4 v5, 0x2

    if-eqz v1, :cond_13

    .line 733
    invoke-direct {p0, v3}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result v0

    .line 734
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    if-lt v0, v1, :cond_16

    .line 736
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_e

    :cond_13
    :goto_d
    add-int v1, v7, v5

    .line 742
    invoke-direct {p0, v1}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result v3

    if-le v3, v5, :cond_14

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    sub-int/2addr v2, v5

    .line 745
    iget v0, v0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    if-le v2, v0, :cond_15

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_e

    :cond_15
    move v3, v1

    move v0, v5

    .line 754
    :cond_16
    :goto_e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    if-lt v0, v1, :cond_17

    const-string v0, "\u2026E\u2026"

    return-object v0

    .line 758
    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p6, :cond_18

    .line 760
    aget v1, p6, v9

    sub-int/2addr v1, v0

    aput v1, p6, v9

    .line 763
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_19
    :goto_f
    return-object v1
.end method

.method private getFormattedResult(II[IZZZ)Ljava/lang/String;
    .locals 14

    move-object v9, p0

    const/4 v0, 0x1

    .line 871
    new-array v10, v0, [Z

    .line 872
    new-array v11, v0, [Z

    .line 873
    new-array v12, v0, [I

    const/4 v13, 0x0

    aput p1, v12, v13

    .line 874
    iget-object v0, v9, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide v1, v9, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    iget v4, v9, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    move-object v3, v12

    move/from16 v5, p2

    move-object v6, v10

    move-object v7, v11

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calculator2/Evaluator;->getString(J[III[Z[ZLcom/android/calculator2/Evaluator$EvaluationListener;)Ljava/lang/String;

    move-result-object v1

    .line 876
    aget v2, v12, v13

    aget-boolean v4, v10, v13

    aget-boolean v5, v11, v13

    move-object v0, p0

    move/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/calculator2/CalculatorResult;->formatResult(Ljava/lang/String;IIZZ[IZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMaxDigitWidth(Landroid/text/TextPaint;)F
    .locals 4

    const-string v0, "0123456789"

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    const-string v1, "0123456789"

    .line 275
    invoke-virtual {p0, v1, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 277
    array-length p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, v0, v2

    .line 278
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static getNaiveMsdIndexOf(Ljava/lang/String;)I
    .locals 4

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 632
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method private highlightResult()V
    .locals 4

    .line 1176
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 1177
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {v0, p0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initPositions(IIILjava/lang/String;)V
    .locals 7

    .line 489
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getMaxChars()I

    move-result v0

    .line 490
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    .line 495
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p4, v1}, Lcom/android/calculator2/CalculatorResult;->separatorChars(Ljava/lang/String;I)F

    move-result v1

    .line 496
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getNoEllipsisCredit()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 494
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 497
    iget v2, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/calculator2/CalculatorResult;->mWholePartFits:Z

    const v2, 0x98bd90

    .line 498
    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mLastPos:I

    .line 499
    iput p3, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    .line 500
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorResult;->mAppendExponent:Z

    int-to-float p1, p1

    .line 502
    iget v2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    const p1, 0x7fffffff

    const v2, 0x989680

    if-ne p2, p1, :cond_2

    const/high16 p1, -0x80000000

    if-ne p3, p1, :cond_1

    .line 507
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    .line 508
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    .line 509
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    goto :goto_1

    .line 512
    :cond_1
    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    .line 513
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    .line 514
    iput-boolean v4, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    :goto_1
    return-void

    .line 518
    :cond_2
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p4, 0x2d

    if-ne p1, p4, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v3

    .line 519
    :goto_2
    iget p4, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    if-le p2, p4, :cond_4

    iget p4, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    add-int/lit8 p4, p4, 0x3

    if-gt p2, p4, :cond_4

    .line 521
    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    sub-int/2addr p2, v4

    .line 524
    :cond_4
    iget p4, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    sub-int/2addr p2, p4

    const/4 p4, -0x1

    if-le p2, p4, :cond_5

    const/16 v5, 0x8

    if-ge p2, v5, :cond_5

    move p2, p4

    :cond_5
    if-ge p3, v2, :cond_12

    .line 530
    iput p3, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    .line 531
    iget v5, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    if-ge v5, p4, :cond_6

    iget v5, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    const/16 v6, -0xb

    if-le v5, v6, :cond_6

    .line 532
    iput p4, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    .line 536
    :cond_6
    iget v5, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    if-ge v5, p4, :cond_7

    neg-int v5, p2

    sub-int/2addr v5, v4

    .line 537
    invoke-direct {p0, v5}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result v5

    goto :goto_4

    :cond_7
    if-gt p2, p4, :cond_9

    .line 538
    iget v5, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    if-lt v5, v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v3

    goto :goto_4

    :cond_9
    :goto_3
    neg-int v5, p2

    .line 541
    invoke-direct {p0, v5}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result v5

    .line 545
    :goto_4
    iget-boolean v6, p0, Lcom/android/calculator2/CalculatorResult;->mWholePartFits:Z

    if-eqz v6, :cond_a

    const/4 v6, -0x3

    if-ge p2, v6, :cond_a

    goto :goto_5

    :cond_a
    move v1, v3

    .line 546
    :goto_5
    iget v6, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    sub-int/2addr v6, p2

    add-int/2addr v6, p1

    if-lt v6, v0, :cond_b

    move v1, v4

    goto :goto_6

    :cond_b
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-lez v5, :cond_e

    .line 551
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-eqz p1, :cond_c

    .line 553
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    neg-int p2, p3

    invoke-direct {p0, p2}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_7

    .line 555
    :cond_c
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    add-int/2addr p1, v5

    .line 557
    :goto_7
    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    if-gt p2, p4, :cond_d

    if-le p1, p4, :cond_d

    .line 559
    iput p4, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    goto :goto_8

    .line 561
    :cond_d
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    .line 563
    :goto_8
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    goto :goto_9

    .line 565
    :cond_e
    iget-boolean p3, p0, Lcom/android/calculator2/CalculatorResult;->mWholePartFits:Z

    if-nez p3, :cond_11

    iget-boolean p3, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-nez p3, :cond_11

    .line 574
    iget p3, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    neg-int p4, p2

    sub-int/2addr p4, v4

    invoke-direct {p0, p4}, Lcom/android/calculator2/CalculatorResult;->expLen(I)I

    move-result p4

    add-int/2addr p3, p4

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    if-lt p3, v0, :cond_f

    move v3, v4

    :cond_f
    iput-boolean v3, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    .line 576
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-eqz p1, :cond_10

    .line 577
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    goto :goto_9

    .line 580
    :cond_10
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    .line 581
    iput-boolean v4, p0, Lcom/android/calculator2/CalculatorResult;->mAppendExponent:Z

    goto :goto_9

    .line 584
    :cond_11
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    .line 587
    :goto_9
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-nez p1, :cond_13

    .line 590
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    goto :goto_a

    .line 593
    :cond_12
    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    .line 594
    iput-boolean v4, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    :cond_13
    :goto_a
    return-void
.end method

.method public static synthetic lambda$setupActionMode$0(Lcom/android/calculator2/CalculatorResult;Landroid/view/View;)Z
    .locals 1

    .line 1118
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    if-eqz p1, :cond_0

    .line 1119
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mCopyActionModeCallback:Landroid/view/ActionMode$Callback;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/calculator2/CalculatorResult;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mActionMode:Landroid/view/ActionMode;

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$setupContextMenu$1(Lcom/android/calculator2/CalculatorResult;Landroid/view/View;)Z
    .locals 0

    .line 1144
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    if-eqz p1, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->showContextMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setupActionMode()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1057
    new-instance v0, Lcom/android/calculator2/CalculatorResult$3;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorResult$3;-><init>(Lcom/android/calculator2/CalculatorResult;)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mCopyActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 1114
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mCopyActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1115
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mCopyActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1117
    new-instance v0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$6Vn8AEyRC0kXfgwsC5zkp4OI2nQ;

    invoke-direct {v0, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorResult$6Vn8AEyRC0kXfgwsC5zkp4OI2nQ;-><init>(Lcom/android/calculator2/CalculatorResult;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupContextMenu()V
    .locals 1

    .line 1131
    new-instance v0, Lcom/android/calculator2/CalculatorResult$4;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorResult$4;-><init>(Lcom/android/calculator2/CalculatorResult;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1143
    new-instance v0, Lcom/android/calculator2/-$$Lambda$CalculatorResult$4i-OC1GIUG-PCmw0Psoet69Y898;

    invoke-direct {v0, p0}, Lcom/android/calculator2/-$$Lambda$CalculatorResult$4i-OC1GIUG-PCmw0Psoet69Y898;-><init>(Lcom/android/calculator2/CalculatorResult;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private unhighlightResult()V
    .locals 1

    .line 1181
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 1182
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mHighlightSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v0, 0x0

    .line 955
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    .line 956
    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    const-string v1, ""

    .line 957
    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    .line 958
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setLongClickable(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1032
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-nez v0, :cond_0

    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    .line 1038
    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mLastPos:I

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1039
    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mLastPos:I

    .line 1040
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->redisplay()V

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->postInvalidateOnAnimation()V

    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setAccessibilityLiveRegion(I)V

    goto :goto_0

    .line 1047
    :cond_2
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 1048
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setAccessibilityLiveRegion(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public fullTextIsExact()Z
    .locals 2

    .line 896
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mMaxPos:I

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mMaxCharOffset:I

    const v0, 0x989680

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method getCharOffset(I)I
    .locals 0

    int-to-float p1, p1

    .line 951
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getDecimalCredit()F
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mDecimalCredit:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFullCopyText()Ljava/lang/String;
    .locals 11

    .line 905
    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_3

    .line 907
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->fullTextIsExact()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    const/16 v3, 0x7d0

    if-gt v1, v3, :cond_3

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mWholeLen:I

    iget v4, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    add-int/2addr v1, v4

    if-gt v1, v3, :cond_3

    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    iget v3, p0, Lcom/android/calculator2/CalculatorResult;->mLastDisplayedOffset:I

    sub-int/2addr v1, v3

    const/16 v3, 0x64

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 914
    :cond_0
    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 915
    iget-object v3, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide v4, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    invoke-virtual {v3, v4, v5}, Lcom/android/calculator2/Evaluator;->getResult(J)Lcom/android/calculator2/UnifiedReal;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object v3

    .line 916
    iget v4, p0, Lcom/android/calculator2/CalculatorResult;->mLsdOffset:I

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-gt v4, v6, :cond_1

    .line 918
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v6, v1

    move-object v1, v3

    :goto_0
    const v3, 0xf4240

    const/4 v4, 0x0

    .line 922
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    .line 921
    invoke-direct/range {v0 .. v9}, Lcom/android/calculator2/CalculatorResult;->formatResult(Ljava/lang/String;IIZZ[IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 911
    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorResult;->getFullText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullText(Z)Ljava/lang/String;
    .locals 7

    .line 885
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 887
    :cond_1
    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mLastDisplayedOffset:I

    const v2, 0xf4240

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calculator2/CalculatorResult;->getFormattedResult(II[IZZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxChars()I
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mWidthConstraint:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 936
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNoEllipsisCredit()F
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mNoEllipsisCredit:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isScrollable()Z
    .locals 0

    .line 943
    iget-boolean p0, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    return p0
.end method

.method public onCancelled(J)V
    .locals 0

    .line 963
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    const/4 p1, 0x0

    .line 964
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mStoreToMemoryRequested:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1236
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->stopActionModeOrContextMenu()Z

    .line 1237
    invoke-super {p0}, Lcom/android/calculator2/AlignedTextView4Result;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(JI)V
    .locals 2

    const/4 p1, 0x0

    .line 604
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mStoreToMemoryRequested:Z

    .line 605
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setLongClickable(Z)V

    .line 607
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    .line 608
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 609
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p3

    .line 610
    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mWidthConstraint:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    .line 612
    iget v1, p0, Lcom/android/calculator2/CalculatorResult;->mWidthConstraint:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p3

    .line 613
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p3, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 614
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {v0, p3, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 616
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onEvaluate(JIIILjava/lang/String;)V
    .locals 2

    const-string v0, "CalculatorResult"

    const-string v1, "onEvaluate()."

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/calculator2/CalculatorResult;->initPositions(IIILjava/lang/String;)V

    .line 443
    iget-boolean p3, p0, Lcom/android/calculator2/CalculatorResult;->mStoreToMemoryRequested:Z

    if-eqz p3, :cond_0

    .line 444
    iget-object p3, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p3, p1, p2}, Lcom/android/calculator2/Evaluator;->copyToMemory(J)V

    const/4 p1, 0x0

    .line 445
    iput-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mStoreToMemoryRequested:Z

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->redisplay()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 355
    invoke-super/range {p0 .. p5}, Lcom/android/calculator2/AlignedTextView4Result;->onLayout(ZIIII)V

    const-string p1, "CalculatorResult"

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout, mEvaluationRequest = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide p2, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    invoke-virtual {p1, p2, p3}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr;->hasInterestingOps()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    iget p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 362
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide p2, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide p2, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    iget-object p4, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/android/calculator2/Evaluator;->evaluateAndNotify(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const-string v0, "CalculatorResult"

    const-string v1, "onMeasure."

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-super {p0, p1, p2}, Lcom/android/calculator2/AlignedTextView4Result;->onMeasure(II)V

    .line 289
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getLineHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setMinimumHeight(I)V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    invoke-static {v0}, Lcom/android/calculator2/CalculatorResult;->getMaxDigitWidth(Landroid/text/TextPaint;)F

    move-result v2

    const v3, 0x7f11003d

    .line 319
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-static {v3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    const v4, 0x7f1100bf

    .line 320
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    sub-float/2addr v1, v2

    const/4 v4, 0x0

    .line 321
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-string v5, "\u2026"

    .line 322
    invoke-static {v5, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    sub-float/2addr v5, v2

    .line 323
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const-string v6, "e"

    .line 324
    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    sub-float/2addr v6, v2

    .line 325
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    add-float/2addr v7, v3

    add-float/2addr v6, v5

    add-float/2addr v6, v1

    .line 328
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v7, v6

    .line 329
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    .line 330
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 331
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    const-string v7, ","

    .line 335
    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 337
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v5, v6, v5

    sub-float/2addr v6, v1

    sub-float v1, v2, v3

    .line 339
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v5, v2

    .line 341
    iput v5, p0, Lcom/android/calculator2/CalculatorResult;->mNoExponentCredit:F

    .line 342
    iget-object v3, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter v3

    .line 343
    :try_start_0
    iput v8, p0, Lcom/android/calculator2/CalculatorResult;->mWidthConstraint:I

    .line 344
    iput v2, p0, Lcom/android/calculator2/CalculatorResult;->mCharWidth:F

    div-float/2addr v6, v2

    .line 345
    iput v6, p0, Lcom/android/calculator2/CalculatorResult;->mNoEllipsisCredit:F

    div-float/2addr v1, v2

    .line 346
    iput v1, p0, Lcom/android/calculator2/CalculatorResult;->mDecimalCredit:F

    div-float/2addr v0, v2

    .line 347
    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mGroupingSeparatorWidthRatio:F

    .line 348
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-super {p0, p1, p2}, Lcom/android/calculator2/AlignedTextView4Result;->onMeasure(II)V

    return-void

    :catchall_0
    move-exception p0

    .line 348
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0a0123

    if-eq p1, v1, :cond_0

    return v0

    .line 1220
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-wide v1, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    invoke-virtual {p1, v1, v2}, Lcom/android/calculator2/Evaluator;->evaluationInProgress(J)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const-string p1, "CalculatorResult"

    const-string v0, "Aaron: copy result."

    .line 1224
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->copyContent()V

    .line 1226
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->unhighlightResult()V

    const/4 p0, 0x1

    return p0
.end method

.method public onReevaluate(J)V
    .locals 0

    .line 973
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->redisplay()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1017
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calculator2/AlignedTextView4Result;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1019
    iget-boolean p1, p0, Lcom/android/calculator2/CalculatorResult;->mScrollable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    if-nez p3, :cond_1

    if-lez p4, :cond_1

    const/4 p1, 0x1

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setAccessibilityLiveRegion(I)V

    const/4 p1, 0x0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    if-nez p4, :cond_2

    const/4 p1, 0x0

    .line 1024
    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setAccessibilityLiveRegion(I)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110062

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorResult;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public redisplay()V
    .locals 10

    .line 977
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->getMaxChars()I

    move-result v2

    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 983
    invoke-virtual {p0, v7}, Lcom/android/calculator2/CalculatorResult;->setAccessibilityLiveRegion(I)V

    .line 985
    :cond_1
    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mCurrentPos:I

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v1

    .line 986
    new-array v8, v7, [I

    .line 987
    iget-boolean v4, p0, Lcom/android/calculator2/CalculatorResult;->mAppendExponent:Z

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorResult;->mWholePartFits:Z

    const/4 v9, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/calculator2/CalculatorResult;->mMinPos:I

    .line 990
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->getCharOffset(I)I

    move-result v0

    if-ne v1, v0, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v9

    :goto_0
    iget-boolean v6, p0, Lcom/android/calculator2/CalculatorResult;->mWholePartFits:Z

    move-object v0, p0

    move-object v3, v8

    .line 987
    invoke-direct/range {v0 .. v6}, Lcom/android/calculator2/CalculatorResult;->getFormattedResult(II[IZZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v1, 0x45

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 998
    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_4

    const/16 v2, 0x2e

    .line 999
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1001
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v3, p0, Lcom/android/calculator2/CalculatorResult;->mExponentColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1004
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1006
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "CalculatorResult"

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setText(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :goto_1
    aget v0, v8, v9

    iput v0, p0, Lcom/android/calculator2/CalculatorResult;->mLastDisplayedOffset:I

    .line 1010
    iput-boolean v7, p0, Lcom/android/calculator2/CalculatorResult;->mValid:Z

    .line 1011
    invoke-virtual {p0, v7}, Lcom/android/calculator2/CalculatorResult;->setLongClickable(Z)V

    return-void
.end method

.method public reformatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "."

    .line 818
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "\\."

    .line 819
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 820
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string p1, ""

    const/4 v0, 0x1

    .line 824
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 825
    aget-object v3, p0, v0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 826
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 827
    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v3

    const v4, 0x7f0a007e

    if-ne v3, v4, :cond_0

    .line 828
    aget-object p1, p0, v0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v1, p1

    move p1, v0

    :goto_1
    move v3, p1

    if-eqz p1, :cond_3

    .line 836
    aget-object p1, p0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_2
    if-lez p1, :cond_3

    .line 837
    aget-object v4, p0, v0

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 838
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 840
    aget-object v0, p0, v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v3, v2

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 847
    aget-object p0, p0, v2

    :goto_4
    move-object p1, p0

    goto :goto_5

    .line 849
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    :goto_5
    return-object p1
.end method

.method public separatorChars(Ljava/lang/String;I)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 392
    div-int/lit8 p2, p2, 0x3

    .line 393
    iget-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mWidthLock:Ljava/lang/Object;

    monitor-enter p1

    int-to-float p2, p2

    .line 395
    :try_start_0
    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mGroupingSeparatorWidthRatio:F

    mul-float/2addr p2, p0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p0

    .line 396
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setEvaluator(Lcom/android/calculator2/Evaluator;J)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 264
    iput-wide p2, p0, Lcom/android/calculator2/CalculatorResult;->mIndex:J

    .line 265
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->requestLayout()V

    return-void
.end method

.method public setShouldEvaluateResult(ILcom/android/calculator2/Evaluator$EvaluationListener;)V
    .locals 1

    .line 376
    iput-object p2, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    .line 377
    iput p1, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    const-string p1, "CalculatorResult"

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShouldEvaluateResult(), mEvaluationRequest = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/calculator2/CalculatorResult;->mEvaluationRequest:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopActionModeOrContextMenu()Z
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1164
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorResult;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    .line 1168
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorResult;->unhighlightResult()V

    .line 1169
    iget-object p0, p0, Lcom/android/calculator2/CalculatorResult;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {p0}, Landroid/view/ContextMenu;->close()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

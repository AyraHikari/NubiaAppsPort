.class public final Lcom/android/calculator2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/DragController$EmptyAnimationController;,
        Lcom/android/calculator2/DragController$ResultAnimationController;,
        Lcom/android/calculator2/DragController$AnimationController;,
        Lcom/android/calculator2/DragController$AnimateTextInterface;
    }
.end annotation


# static fields
.field private static final DIFF:F = 1.0E-6f

.field private static final LARGE_DISPLAY_DENTITY:F = 3.375f

.field private static final NORMAL_DISPLAY_DENTITY:F = 3.0f

.field private static final SMALL_DISPLAY_DENTITY:F = 2.55f

.field private static final TAG:Ljava/lang/String; = "DragController"

.field private static final mColorEvaluator:Landroid/animation/ArgbEvaluator;


# instance fields
.field private displayEmptyBottomMargin:I

.field private extraInitialFormulaSize:F

.field private extraInitialResultSize:F

.field private extraTranslationY:F

.field private mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

.field private mAnimationInitialized:Z

.field private mBottomPaddingHeight:I

.field private mDisplayFormula:Lcom/android/calculator2/CalculatorFormula;

.field private mDisplayHeight:I

.field private mDisplayResult:Lcom/android/calculator2/CalculatorResult;

.field private mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

.field private mEvaluator:Lcom/android/calculator2/Evaluator;

.field private mFormulaEndColor:I

.field private mFormulaScale:F

.field private mFormulaStartColor:I

.field private mFormulaTranslationX:I

.field private mFormulaTranslationY:F

.field private mIsDisplayEmpty:Z

.field private mIsResult:Z

.field private mOneLine:Z

.field private mResultEndColor:I

.field private mResultScale:F

.field private mResultStartColor:I

.field private mResultTranslationX:I

.field private mResultTranslationY:F

.field private mToolbar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/android/calculator2/DragController;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    .line 52
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    return-void
.end method

.method static synthetic access$002(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mFormulaStartColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorFormula;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/calculator2/DragController;->mDisplayFormula:Lcom/android/calculator2/CalculatorFormula;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/calculator2/DragController;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->displayEmptyBottomMargin:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    return p0
.end method

.method static synthetic access$1200(Lcom/android/calculator2/DragController;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mFormulaTranslationX:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mFormulaTranslationX:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mResultTranslationY:F

    return p0
.end method

.method static synthetic access$1302(Lcom/android/calculator2/DragController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mResultTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    return p0
.end method

.method static synthetic access$1500(Lcom/android/calculator2/DragController;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mResultTranslationX:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mResultTranslationX:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/calculator2/DragController;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/calculator2/DragController;->mToolbar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mResultScale:F

    return p0
.end method

.method static synthetic access$1702(Lcom/android/calculator2/DragController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mResultScale:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calculator2/DragController;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorDisplay;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/calculator2/DragController;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mFormulaEndColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mResultStartColor:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calculator2/DragController;)Lcom/android/calculator2/CalculatorResult;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/calculator2/DragController;->mDisplayResult:Lcom/android/calculator2/CalculatorResult;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/calculator2/DragController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mResultEndColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mFormulaScale:F

    return p0
.end method

.method static synthetic access$602(Lcom/android/calculator2/DragController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mFormulaScale:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/calculator2/DragController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/calculator2/DragController;->mOneLine:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/calculator2/DragController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mFormulaTranslationY:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/calculator2/DragController;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/calculator2/DragController;->mFormulaTranslationY:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/calculator2/DragController;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/calculator2/DragController;->mBottomPaddingHeight:I

    return p0
.end method

.method private initExtraInitialSize()V
    .locals 7

    const-string v0, "DragController"

    const-string v1, "Aaron: initExtraInitialSize."

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 550
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPortScreen()Z

    move-result v1

    .line 551
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/calculator2/DragController;->initExtraInitialSize4Split()V

    return-void

    :cond_0
    const v2, 0x40233333    # 2.55f

    const/high16 v3, 0x40580000    # 3.375f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41700000    # 15.0f

    const v6, 0x358637bd    # 1.0E-6f

    if-eqz v1, :cond_9

    .line 557
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-eqz v1, :cond_1

    const-string p0, "DragController"

    const-string v0, "Aaron: empty display, nothing more need to do."

    .line 558
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 559
    :cond_1
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsResult:Z

    if-eqz v1, :cond_5

    sub-float/2addr v4, v0

    .line 560
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    .line 561
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    :cond_2
    sub-float/2addr v3, v0

    .line 562
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 563
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    :cond_3
    sub-float/2addr v2, v0

    .line 564
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    const/high16 v0, 0x41100000    # 9.0f

    .line 565
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    .line 567
    :cond_4
    iget v0, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    :cond_5
    sub-float/2addr v4, v0

    .line 570
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_6

    const/high16 v0, 0x41f00000    # 30.0f

    .line 571
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    :cond_6
    sub-float/2addr v3, v0

    .line 572
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    const/high16 v0, 0x42040000    # 33.0f

    .line 573
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    :cond_7
    sub-float/2addr v2, v0

    .line 574
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8

    const/high16 v0, 0x41e00000    # 28.0f

    .line 575
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    .line 577
    :cond_8
    iget v0, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto/16 :goto_0

    .line 581
    :cond_9
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-eqz v1, :cond_a

    const-string p0, "DragController"

    const-string v0, "Aaron: empty display, nothing more need to do."

    .line 582
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 583
    :cond_a
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsResult:Z

    if-eqz v1, :cond_e

    sub-float/2addr v4, v0

    .line 584
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_b

    .line 585
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    const/high16 v0, 0x41900000    # 18.0f

    .line 586
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    :cond_b
    sub-float/2addr v3, v0

    .line 587
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_c

    const/high16 v0, -0x3e380000    # -25.0f

    .line 588
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto :goto_0

    :cond_c
    sub-float/2addr v2, v0

    .line 589
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_d

    const/high16 v0, 0x41400000    # 12.0f

    .line 590
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    .line 591
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    .line 593
    :cond_d
    iget v0, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto :goto_0

    :cond_e
    sub-float/2addr v4, v0

    .line 596
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    const/high16 v4, 0x40c00000    # 6.0f

    if-gez v1, :cond_f

    .line 597
    iput v4, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    .line 598
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    :cond_f
    sub-float/2addr v3, v0

    .line 599
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_10

    const/high16 v0, 0x41c00000    # 24.0f

    .line 600
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto :goto_0

    :cond_10
    sub-float/2addr v2, v0

    .line 601
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_11

    .line 602
    iput v4, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    const/high16 v0, 0x41600000    # 14.0f

    .line 603
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    .line 605
    :cond_11
    iget v0, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    :goto_0
    return-void
.end method

.method private initExtraInitialSize4Split()V
    .locals 7

    const-string v0, "DragController"

    const-string v1, "Aaron: initExtraInitialSize4Split."

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 522
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-eqz v1, :cond_0

    const-string p0, "DragController"

    const-string v0, "Aaron: empty display, nothing more need to do."

    .line 523
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    :cond_0
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsResult:Z

    const v2, 0x40233333    # 2.55f

    const/high16 v3, 0x40580000    # 3.375f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41900000    # 18.0f

    const v6, 0x358637bd    # 1.0E-6f

    if-eqz v1, :cond_3

    sub-float/2addr v4, v0

    .line 525
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    const/high16 v0, -0x3f800000    # -4.0f

    .line 526
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v0

    .line 527
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    const/high16 v0, -0x3f000000    # -8.0f

    .line 528
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    .line 529
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    :cond_2
    sub-float/2addr v2, v0

    .line 530
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_6

    const/high16 v0, 0x41700000    # 15.0f

    .line 531
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    const/high16 v0, 0x41b80000    # 23.0f

    .line 532
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    :cond_3
    sub-float/2addr v4, v0

    .line 535
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    const/high16 v0, 0x41c00000    # 24.0f

    .line 536
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    goto :goto_0

    :cond_4
    sub-float/2addr v3, v0

    .line 537
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    const/high16 v0, 0x41d80000    # 27.0f

    .line 538
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    const/high16 v0, 0x41880000    # 17.0f

    .line 539
    iput v0, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    goto :goto_0

    :cond_5
    sub-float/2addr v2, v0

    .line 540
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_6

    .line 541
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialFormulaSize:F

    .line 542
    iput v5, p0, Lcom/android/calculator2/DragController;->extraInitialResultSize:F

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method animateViews(FLandroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 124
    iget-object v0, p0, Lcom/android/calculator2/DragController;->mDisplayFormula:Lcom/android/calculator2/CalculatorFormula;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calculator2/DragController;->mDisplayResult:Lcom/android/calculator2/CalculatorResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calculator2/DragController;->mToolbar:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calculator2/DragController;->mEvaluator:Lcom/android/calculator2/Evaluator;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 137
    iget-boolean v2, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-nez v2, :cond_3

    .line 138
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 139
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getFormula()Lcom/android/calculator2/AlignedTextView;

    move-result-object v2

    .line 140
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getResult()Lcom/android/calculator2/CalculatorResult;

    move-result-object v3

    .line 141
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getDate()Landroid/widget/TextView;

    move-result-object v4

    .line 142
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getDivider()Landroid/view/View;

    move-result-object v5

    .line 143
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getDivider2()Landroid/view/View;

    move-result-object v6

    .line 144
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getDivider3()Landroid/view/View;

    move-result-object v7

    .line 145
    invoke-virtual {v1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getGroupPadding()Landroid/view/View;

    move-result-object v1

    .line 147
    iget-boolean v8, p0, Lcom/android/calculator2/DragController;->mAnimationInitialized:Z

    if-nez v8, :cond_2

    .line 148
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v8

    iput v8, p0, Lcom/android/calculator2/DragController;->mBottomPaddingHeight:I

    .line 150
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v2, v3}, Lcom/android/calculator2/DragController$AnimationController;->initializeScales(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V

    .line 152
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v2, v3}, Lcom/android/calculator2/DragController$AnimationController;->initializeColorAnimators(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V

    .line 154
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v2}, Lcom/android/calculator2/DragController$AnimationController;->initializeFormulaTranslationX(Lcom/android/calculator2/AlignedTextView;)V

    .line 156
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v2, v3}, Lcom/android/calculator2/DragController$AnimationController;->initializeFormulaTranslationY(Lcom/android/calculator2/AlignedTextView;Lcom/android/calculator2/CalculatorResult;)V

    .line 158
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v3}, Lcom/android/calculator2/DragController$AnimationController;->initializeResultTranslationX(Lcom/android/calculator2/CalculatorResult;)V

    .line 160
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, v3}, Lcom/android/calculator2/DragController$AnimationController;->initializeResultTranslationY(Lcom/android/calculator2/CalculatorResult;)V

    .line 162
    iput-boolean v0, p0, Lcom/android/calculator2/DragController;->mAnimationInitialized:Z

    .line 165
    :cond_2
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getResultScale(F)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setScaleX(F)V

    .line 166
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getResultScale(F)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setScaleY(F)V

    .line 168
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaScale(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setScaleX(F)V

    .line 169
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaScale(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setScaleY(F)V

    .line 171
    invoke-virtual {v2}, Lcom/android/calculator2/AlignedTextView;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/calculator2/AlignedTextView;->getPaddingEnd()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setPivotX(F)V

    .line 172
    invoke-virtual {v2}, Lcom/android/calculator2/AlignedTextView;->getHeight()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/calculator2/AlignedTextView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setPivotY(F)V

    .line 174
    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getPaddingEnd()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setPivotX(F)V

    .line 175
    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setPivotY(F)V

    .line 177
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaTranslationX(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setTranslationX(F)V

    .line 178
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getFormulaTranslationY(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setTranslationY(F)V

    .line 180
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getResultTranslationX(F)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setTranslationX(F)V

    .line 181
    iget-object v8, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v8, p1}, Lcom/android/calculator2/DragController$AnimationController;->getResultTranslationY(F)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/calculator2/CalculatorResult;->setTranslationY(F)V

    .line 183
    sget-object v8, Lcom/android/calculator2/DragController;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v9, p0, Lcom/android/calculator2/DragController;->mFormulaStartColor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/android/calculator2/DragController;->mFormulaEndColor:I

    .line 184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 183
    invoke-virtual {v8, p1, v9, v10}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/calculator2/AlignedTextView;->setTextColor(I)V

    .line 186
    sget-object v2, Lcom/android/calculator2/DragController;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v8, p0, Lcom/android/calculator2/DragController;->mResultStartColor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/android/calculator2/DragController;->mResultEndColor:I

    .line 187
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 186
    invoke-virtual {v2, p1, v8, v9}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    .line 189
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 190
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 191
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 192
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 193
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getDateTranslationY(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 194
    :cond_3
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-eqz v1, :cond_4

    .line 197
    iget-boolean v1, p0, Lcom/android/calculator2/DragController;->mAnimationInitialized:Z

    if-nez v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v1}, Lcom/android/calculator2/DragController$AnimationController;->initializeDisplayHeight()V

    .line 199
    iput-boolean v0, p0, Lcom/android/calculator2/DragController;->mAnimationInitialized:Z

    .line 205
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    invoke-virtual {v0}, Lcom/android/calculator2/DragController$AnimationController;->getFirstTranslatedViewHolderIndex()I

    move-result v0

    if-lt v1, v0, :cond_6

    .line 209
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 213
    iget-object v2, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    .line 214
    invoke-virtual {v2, p1}, Lcom/android/calculator2/DragController$AnimationController;->getHistoryElementTranslationY(F)F

    move-result v2

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method initializeAnimation(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/calculator2/DragController;->mAnimationInitialized:Z

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/DragController;->initializeController(ZZZ)V

    return-void
.end method

.method initializeController(ZZZ)V
    .locals 0

    .line 85
    iput-boolean p2, p0, Lcom/android/calculator2/DragController;->mOneLine:Z

    .line 86
    iput-boolean p3, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    .line 87
    iput-boolean p1, p0, Lcom/android/calculator2/DragController;->mIsResult:Z

    .line 88
    iget-boolean p2, p0, Lcom/android/calculator2/DragController;->mIsDisplayEmpty:Z

    if-eqz p2, :cond_0

    .line 90
    new-instance p1, Lcom/android/calculator2/DragController$EmptyAnimationController;

    invoke-direct {p1, p0}, Lcom/android/calculator2/DragController$EmptyAnimationController;-><init>(Lcom/android/calculator2/DragController;)V

    iput-object p1, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Lcom/android/calculator2/DragController$ResultAnimationController;

    invoke-direct {p1, p0}, Lcom/android/calculator2/DragController$ResultAnimationController;-><init>(Lcom/android/calculator2/DragController;)V

    iput-object p1, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    .line 94
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lcom/android/calculator2/DragController$AnimationController;

    invoke-direct {p1, p0}, Lcom/android/calculator2/DragController$AnimationController;-><init>(Lcom/android/calculator2/DragController;)V

    iput-object p1, p0, Lcom/android/calculator2/DragController;->mAnimationController:Lcom/android/calculator2/DragController$AnimationController;

    .line 99
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/DragController;->extraTranslationY:F

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/DragController;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorDisplay;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/android/calculator2/DragController;->mDisplayFormula:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorFormula;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/calculator2/DragController;->mDisplayResult:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/calculator2/DragController;->mToolbar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/calculator2/DragController;->displayEmptyBottomMargin:I

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/calculator2/DragController;->initExtraInitialSize()V

    :cond_2
    return-void
.end method

.method setDisplayFormula(Lcom/android/calculator2/CalculatorFormula;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/calculator2/DragController;->mDisplayFormula:Lcom/android/calculator2/CalculatorFormula;

    return-void
.end method

.method setDisplayResult(Lcom/android/calculator2/CalculatorResult;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/calculator2/DragController;->mDisplayResult:Lcom/android/calculator2/CalculatorResult;

    return-void
.end method

.method setDisplayView(Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/calculator2/DragController;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    return-void
.end method

.method setEvaluator(Lcom/android/calculator2/Evaluator;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/calculator2/DragController;->mEvaluator:Lcom/android/calculator2/Evaluator;

    return-void
.end method

.method public setToolbar(Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/calculator2/DragController;->mToolbar:Landroid/view/View;

    return-void
.end method

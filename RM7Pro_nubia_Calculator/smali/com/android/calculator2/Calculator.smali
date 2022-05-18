.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/calculator2/AlertDialogFragment$OnClickListener;
.implements Lcom/android/calculator2/Evaluator$EvaluationListener;
.implements Lcom/android/calculator2/DragLayout$CloseCallback;
.implements Lcom/android/calculator2/DragLayout$DragCallback;
.implements Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;
.implements Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Calculator$RotationObserver;,
        Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;,
        Lcom/android/calculator2/Calculator$CalculatorState;
    }
.end annotation


# static fields
.field public static final INVALID_RES_ID:I = -0x1

.field private static final KEY_CHANGE_MODE:Ljava/lang/String; = "Calculator_change_mode"

.field private static final KEY_DISPLAY_STATE:Ljava/lang/String; = "Calculator_display_state"

.field private static final KEY_EVAL_STATE:Ljava/lang/String; = "Calculator_eval_state"

.field private static final KEY_INVERSE_MODE:Ljava/lang/String; = "Calculator_inverse_mode"

.field private static final KEY_REPEAT_STATE_INITIALIZED:I = 0x0

.field private static final KEY_REPEAT_STATE_KEY_DOWN:I = 0x1

.field private static final KEY_REPEAT_STATE_KEY_REPEAT:I = 0x2

.field private static final KEY_UNPROCESSED_CHARS:Ljava/lang/String; = "Calculator_unprocessed_chars"

.field static final MAX_REPEAT_COUNT_TIME:J

.field private static final NAME:Ljava/lang/String; = "Calculator"

.field private static final TAG:Ljava/lang/String; = "Calculator"

.field private static handleBackKeyTime:J = 0x0L

.field private static handleDelKeyTime:J = 0x0L

.field static final mKeyRepeatInterval:J = 0x32L

.field static final mKeyRepeatStartTimeout:J = 0x190L

.field public static mod:I = -0x1

.field protected static screenOrientationFlag:Z = false


# instance fields
.field private final TEXT_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private autoRotationEnabled:Z

.field private clipDate:Landroid/content/ClipData;

.field private currentDarkMode:I

.field private isAddRightParen:Z

.field private isAlreadyAdd2DB:Z

.field private isFloatCalculatorInResultState:Z

.field private isFromControlCenterFlag:Z

.field private isInverseToggleSelected:Z

.field private isNotFirstControlCenterPause:Z

.field private isStartFromFloat:Z

.field private isStartFromSystemUI:Z

.field private mCalculatorService:Lcom/android/calculator2/CalculatorService;

.field private mClearButton:Landroid/view/View;

.field mConnection:Landroid/content/ServiceConnection;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mCurrentButton:Landroid/view/View;

.field private mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteKeyOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

.field private mDivideButton:Landroid/view/View;

.field private mDragLayout:Lcom/android/calculator2/DragLayout;

.field private mEqualButton:Landroid/view/View;

.field private mEvaluator:Lcom/android/calculator2/Evaluator;

.field private final mEvaluatorCallback:Lcom/android/calculator2/Evaluator$Callback;

.field private mFormulaContainer:Landroid/widget/HorizontalScrollView;

.field private mFormulaText:Lcom/android/calculator2/CalculatorFormula;

.field private final mFormulaTextWatcher:Landroid/text/TextWatcher;

.field private mInverseButtons:[Landroid/view/View;

.field private mInverseToggle:Landroid/widget/TextView;

.field private mInvertibleButtons:[Landroid/view/View;

.field private mIsOneLine:Z

.field private mMainCalculator:Landroid/view/View;

.field private mModeToggle:Landroid/widget/TextView;

.field private mModeView:Landroid/widget/TextView;

.field private final mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

.field private mPadAdvanced:Landroid/widget/GridLayout;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mResultText:Lcom/android/calculator2/CalculatorResult;

.field private mRotation:Z

.field private mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

.field private mState:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private mToolbar:Landroid/view/View;

.field private mUnprocessedChars:Ljava/lang/String;

.field private mUnprocessedColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private m_bRegistedScreenoff:Z

.field private final m_screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private manualOrientationChange:Z

.field private mode_change:Landroid/view/View;

.field private more_float:Landroid/view/View;

.field private revealAnimator:Landroid/animation/Animator;

.field private showHistory:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2414
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/calculator2/Calculator;->MAX_REPEAT_COUNT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromFloat:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isAlreadyAdd2DB:Z

    .line 180
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 182
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isAddRightParen:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isInverseToggleSelected:Z

    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    .line 197
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    .line 244
    new-instance v1, Lcom/android/calculator2/Calculator$1;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "textColor"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/calculator2/Calculator$1;-><init>(Lcom/android/calculator2/Calculator;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->TEXT_COLOR:Landroid/util/Property;

    .line 257
    new-instance v1, Lcom/android/calculator2/Calculator$2;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$2;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 270
    new-instance v1, Lcom/android/calculator2/Calculator$3;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$3;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluatorCallback:Lcom/android/calculator2/Evaluator$Callback;

    .line 283
    new-instance v1, Lcom/android/calculator2/Calculator$4;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$4;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

    .line 291
    new-instance v1, Lcom/android/calculator2/Calculator$5;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$5;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaTextWatcher:Landroid/text/TextWatcher;

    .line 805
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->m_bRegistedScreenoff:Z

    .line 806
    new-instance v1, Lcom/android/calculator2/Calculator$7;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$7;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->m_screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 2426
    iput v0, p0, Lcom/android/calculator2/Calculator;->mState:I

    .line 2427
    new-instance v1, Lcom/android/calculator2/Calculator$14;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$14;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mDeleteKeyOnTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x1

    .line 2539
    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->mRotation:Z

    .line 2540
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    .line 2541
    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    .line 2686
    new-instance v0, Lcom/android/calculator2/Calculator$16;

    invoke-direct {v0, p0}, Lcom/android/calculator2/Calculator$16;-><init>(Lcom/android/calculator2/Calculator;)V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private IsValidChars(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "UTF-8"

    .line 2503
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "//"

    .line 2504
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":"

    .line 2505
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\""

    .line 2506
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2a

    .line 2507
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x3e

    .line 2508
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x23

    .line 2509
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x40

    .line 2510
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x7e

    .line 2511
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_1

    array-length p0, p0

    const/16 p1, 0xfe

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method

.method private RegistScreenOff()V
    .locals 2

    const-string v0, "Calculator"

    const-string v1, "Aaon calculator:RegistScreenOff: "

    .line 821
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->m_bRegistedScreenoff:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 825
    :cond_0
    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->m_bRegistedScreenoff:Z

    .line 826
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->m_screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calculator2/Calculator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private UnregistScreenOff()V
    .locals 2

    const-string v0, "Calculator"

    const-string v1, "Aaron calculator:UnregistScreenOff: "

    .line 832
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->m_bRegistedScreenoff:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->m_bRegistedScreenoff:Z

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->m_screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 841
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorFormula;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/Calculator;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaContainer:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Calculator$CalculatorState;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorResult;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/calculator2/Calculator;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->initCountTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->onTouchDown(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->onTouchCanceled(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calculator2/Calculator;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onKeyRepeat()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/calculator2/Calculator;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/calculator2/Calculator;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/calculator2/Calculator;Landroid/content/Context;)I
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->getRotationStatus(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorService;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/Evaluator;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/calculator2/Calculator;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/calculator2/Calculator;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/calculator2/Calculator;->isAlreadyAdd2DB:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calculator2/Calculator;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/calculator2/Calculator;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->UnregistScreenOff()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/calculator2/Calculator;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calculator2/Calculator;)Landroid/animation/Animator;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private addChars(Ljava/lang/String;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 2242
    iget-object v4, v0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 2243
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/calculator2/Calculator;->shouldIgnoreInput(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const-string v7, "Calculator"

    .line 2247
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addChars  position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", moreChars = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mUnprocessedChars = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_2

    const-string v7, "00"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_2

    .line 2251
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "0,"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    move v3, v9

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    move v7, v8

    .line 2256
    :goto_0
    iget-object v10, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2261
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v8

    :goto_1
    if-ge v8, v10, :cond_c

    .line 2270
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 2271
    invoke-static {v12}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v13

    .line 2272
    sget-boolean v14, Lcom/android/calculator2/Calculator;->screenOrientationFlag:Z

    const/4 v15, -0x1

    if-eqz v14, :cond_4

    move v14, v15

    goto :goto_2

    :cond_4
    invoke-static {v1, v8}, Lcom/android/calculator2/KeyMaps;->funForString(Ljava/lang/String;I)I

    move-result v14

    :goto_2
    if-eq v13, v15, :cond_8

    if-eqz p2, :cond_6

    if-eqz v7, :cond_5

    if-ne v3, v9, :cond_5

    .line 2276
    invoke-direct {v0, v13, v3}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_3

    :cond_5
    add-int v14, v3, v8

    .line 2278
    invoke-direct {v0, v13, v14}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_3

    :cond_6
    const-string v14, "Calculator"

    .line 2281
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aaron: addChars  c == "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 2282
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aaron: addChars  k == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 2283
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aaron: addChars  position == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", current = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", distance = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v9, v3, v8

    add-int/2addr v9, v11

    .line 2284
    invoke-direct {v0, v13, v9}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    .line 2286
    :goto_3
    iget-object v9, v0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v9, v5, v6}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2287
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    sub-int/2addr v9, v13

    add-int/2addr v11, v9

    .line 2288
    invoke-static {v12}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_8
    if-eq v14, v15, :cond_b

    if-eqz p2, :cond_9

    add-int v9, v3, v8

    .line 2295
    invoke-direct {v0, v14, v9}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_5

    :cond_9
    const-string v9, "Calculator"

    .line 2297
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aaron: addChars  c == "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 2298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aaron: addChars  f == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 2299
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aaron: addChars  position == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 2300
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Aaron: addChars  current == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v9, v3, v8

    .line 2301
    invoke-direct {v0, v14, v9}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    :goto_5
    const v9, 0x7f0a0156

    if-ne v14, v9, :cond_a

    const v9, 0x7f0a0113

    add-int v12, v3, v8

    .line 2305
    invoke-direct {v0, v9, v12}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    :cond_a
    const/16 v9, 0x28

    .line 2307
    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto/16 :goto_1

    :cond_b
    const-string v2, "Calculator"

    const-string v3, "There are characters left, but we can\'t convert them to button presses."

    .line 2310
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    const-string v1, "Calculator"

    .line 2312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnprocessedChars = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    invoke-direct/range {p0 .. p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 2317
    iput-object v1, v0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    .line 2318
    invoke-direct/range {p0 .. p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    return-void
.end method

.method private addCharsAfterClickEqual(Ljava/lang/String;ZI)V
    .locals 11

    const-string v0, "Calculator"

    .line 2322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChars  position == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2328
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2329
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_7

    .line 2337
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2338
    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v7

    .line 2339
    invoke-static {p1, v4}, Lcom/android/calculator2/KeyMaps;->funForString(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    if-eqz p2, :cond_1

    add-int v8, p3, v4

    .line 2342
    invoke-direct {p0, v7, v8}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_1

    :cond_1
    const-string v8, "Calculator"

    .line 2344
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addChars  c == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Calculator"

    .line 2345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addChars  k == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Calculator"

    .line 2346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addChars  position == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Calculator"

    .line 2347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addChars  current == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v8, p3, v4

    add-int/2addr v8, v5

    .line 2348
    invoke-direct {p0, v7, v8}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    .line 2350
    :goto_1
    iget-object v7, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v7, v2, v3}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 2351
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 2352
    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    if-eq v8, v9, :cond_6

    if-eqz p2, :cond_4

    add-int v6, p3, v4

    .line 2359
    invoke-direct {p0, v8, v6}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_2

    :cond_4
    const-string v7, "Calculator"

    .line 2361
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addChars  c == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Calculator"

    .line 2362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addChars  f == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Calculator"

    .line 2363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addChars  position == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Calculator"

    .line 2364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addChars  current == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v6, p3, v4

    .line 2365
    invoke-direct {p0, v8, v6}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    :goto_2
    const v6, 0x7f0a0156

    if-ne v8, v6, :cond_5

    const v6, 0x7f0a0113

    add-int v7, p3, v4

    .line 2369
    invoke-direct {p0, v6, v7}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    :cond_5
    const/16 v6, 0x28

    .line 2371
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2374
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 2380
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    return-void
.end method

.method private addExplicitKeyToExpr(II)V
    .locals 0

    .line 1409
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Calculator;->addKeyToExpr(II)V

    return-void
.end method

.method private addKeyToExpr(II)V
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    .line 1393
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    goto :goto_0

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_1

    .line 1395
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->switchToInput(I)V

    .line 1397
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1398
    :goto_1
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->append(Landroid/content/Context;IIZ)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Calculator"

    const-string p1, "Aaron: Evaluator append returns false."

    .line 1399
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private addRightParenAtLast()V
    .locals 5

    .line 1658
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1659
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calculator"

    .line 1660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRighrParenAtLast() forText == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->addRightParentNumbers(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1663
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isAddRightParen:Z

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 1666
    iput-boolean v2, p0, Lcom/android/calculator2/Calculator;->isAddRightParen:Z

    :goto_0
    if-lez v1, :cond_1

    const v3, 0x7f0a0196

    .line 1668
    invoke-static {p0, v3}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/calculator2/Calculator;->addCharsAfterClickEqual(Ljava/lang/String;ZI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRightParentNumbers(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1674
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x7f1100c7

    .line 1677
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x7f11009c

    .line 1678
    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p0, v1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method private announceClearedForAccessibility()V
    .locals 2

    .line 1926
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f11002f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private calculatorReset()V
    .locals 3

    .line 1778
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1781
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 1782
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->announceClearedForAccessibility()V

    const/4 v1, 0x0

    .line 1783
    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    .line 1784
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->clear()V

    .line 1785
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorFormula;->changeTextTo(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v1}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 1787
    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1788
    sget-boolean v1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz v1, :cond_1

    .line 1789
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    :cond_1
    return-void
.end method

.method private cancelIfEvaluating(Z)Z
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    .line 1640
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/calculator2/Evaluator;->cancel(JZ)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private cancelUnrequested()V
    .locals 3

    .line 1648
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    .line 1649
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calculator2/Evaluator;->cancel(JZ)Z

    :cond_0
    return-void
.end method

.method private changeOrientationInThreeSeconds()V
    .locals 4

    .line 2517
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2518
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "Calculator"

    .line 2519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: in changeOrientationInThreeSeconds(), currentOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2521
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2523
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    .line 2525
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    return-void
.end method

.method private changeOrientationPermanently()V
    .locals 4

    .line 2529
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2530
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "Calculator"

    .line 2531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: in changeOrientationPermanently(), currentOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2533
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2535
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearService()V
    .locals 1

    .line 2706
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 2707
    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2709
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private customizeViews()V
    .locals 3

    const-string v0, "Calculator"

    const-string v1, "Aaron: customizeViews()."

    .line 2556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isfull()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Calculator"

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: not multi window, isStartFromSystemUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->updateMenusWhileFullScreen()V

    const/4 p0, 0x0

    .line 2571
    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->setMultiWindowMode(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Calculator"

    const-string v1, "Aaron: in multi window.customizeViews"

    .line 2560
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2563
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2564
    :cond_3
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    :cond_4
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPadAdvanced:Landroid/widget/GridLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPadAdvanced:Landroid/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 2566
    :cond_5
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    const/4 p0, 0x1

    .line 2567
    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->setMultiWindowMode(Z)V

    :goto_1
    return-void
.end method

.method private getDecimalSeparator()Ljava/lang/String;
    .locals 1

    .line 2397
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    const/16 v0, 0x66b

    if-ne p0, v0, :cond_0

    const-string p0, ","

    goto :goto_0

    .line 2399
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getHistoryFragment()Lcom/android/calculator2/HistoryFragment;
    .locals 2

    .line 2195
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2196
    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "HistoryFragment"

    .line 2199
    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2200
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/android/calculator2/HistoryFragment;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getRotationStatus(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 2546
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2549
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move p1, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    .line 2551
    :cond_0
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->mRotation:Z

    return p1
.end method

.method private haveUnprocessed()Z
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideKeyBoard(Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 2662
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 2664
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initCountTimer()V
    .locals 7

    .line 2454
    new-instance v6, Lcom/android/calculator2/Calculator$15;

    sget-wide v2, Lcom/android/calculator2/Calculator;->MAX_REPEAT_COUNT_TIME:J

    const-wide/16 v4, 0x32

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calculator2/Calculator$15;-><init>(Lcom/android/calculator2/Calculator;JJ)V

    iput-object v6, p0, Lcom/android/calculator2/Calculator;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isSoftInputShowing()Z
    .locals 2

    .line 2668
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2669
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2670
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    .line 2671
    div-int/lit8 v0, v0, 0x3

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/calculator2/Calculator;)V
    .locals 3

    .line 516
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->isSoftInputShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Calculator"

    const-string v1, "Aaron: SoftInput is Showing, hideKeyBoard."

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00cc

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->hideKeyBoard(Landroid/view/View;)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 525
    iget v0, p0, Lcom/android/calculator2/Calculator;->currentDarkMode:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Calculator"

    const-string v2, "aaron onCreate:case Configuration.UI_MODE_NIGHT_YES:1 "

    .line 531
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 533
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 3

    .line 608
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-nez p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p1, v0, :cond_2

    const-string p1, "Calculator"

    const-string v0, "click formula."

    .line 612
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz p1, :cond_1

    .line 614
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    .line 617
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 618
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0

    .line 629
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "change_orientation"

    .line 633
    invoke-static {p1}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 634
    iget-boolean p1, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    if-eqz p1, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->changeOrientationInThreeSeconds()V

    goto :goto_0

    .line 637
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->changeOrientationPermanently()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 7

    .line 643
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "change_to_float"

    .line 647
    invoke-static {p1}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 648
    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->getAppOps(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 649
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/calculator2/CalculatorService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 651
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const-string v1, "Calculator"

    const-string v2, "Aaron: in landscape."

    .line 652
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CUR_EXPR_2_FLOAT_CALCULATOR"

    const/4 v2, 0x0

    .line 653
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RESULT_STATE"

    .line 654
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Calculator"

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aaron: will start float calculator, current formula = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CUR_EXPR_2_FLOAT_CALCULATOR"

    .line 658
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RESULT_STATE"

    .line 659
    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v2, v5, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 662
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/calculator2/Calculator;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 665
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->calculatorReset()V

    .line 666
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->onBackPressed()V

    goto :goto_1

    .line 668
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0xa

    .line 669
    invoke-virtual {p0, p1, v0}, Lcom/android/calculator2/Calculator;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/android/calculator2/Calculator;Landroid/view/View;)V
    .locals 0

    const-string p1, "check_history_with_button"

    .line 676
    invoke-static {p1}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->showHistoryFragment()V

    return-void
.end method

.method private mapFromSaved(Lcom/android/calculator2/Calculator$CalculatorState;)Lcom/android/calculator2/Calculator$CalculatorState;
    .locals 1

    .line 314
    sget-object p0, Lcom/android/calculator2/Calculator$17;->$SwitchMap$com$android$calculator2$Calculator$CalculatorState:[I

    invoke-virtual {p1}, Lcom/android/calculator2/Calculator$CalculatorState;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 327
    sget-object p0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    return-object p0

    :pswitch_0
    return-object p1

    .line 321
    :pswitch_1
    sget-object p0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    return-object p0

    .line 318
    :pswitch_2
    sget-object p0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onClickClear()V
    .locals 3

    const-string v0, "Calculator"

    const-string v1, "onClickClear()."

    .line 1755
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1759
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 1760
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->announceClearedForAccessibility()V

    .line 1762
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Calculator"

    const-string v0, "onClickClear() under Monkey."

    .line 1763
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    const v1, 0x7f060049

    new-instance v2, Lcom/android/calculator2/Calculator$10;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Calculator$10;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->reveal(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method private onClickDelete()V
    .locals 6

    const/4 v0, 0x0

    .line 1704
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1707
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1708
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v2}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/calculator2/Evaluator;->collapseForResultDelete(J)V

    .line 1709
    sget-boolean v1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz v1, :cond_1

    .line 1710
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1, v3}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 1711
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    .line 1712
    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1713
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/Evaluator;->reformResultFormula(Landroid/content/Context;)V

    .line 1715
    :cond_2
    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    const-string v1, "Calculator"

    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: mFormulaText = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Calculator"

    .line 1718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: mFormulaText.getSelectionStart() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 1722
    :cond_3
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v1

    .line 1723
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v4

    invoke-virtual {v2, p0, v4}, Lcom/android/calculator2/Evaluator;->getInitialIndexOfExpr(Landroid/content/Context;I)I

    move-result v2

    const-wide/16 v4, 0x0

    if-eq v1, v2, :cond_7

    .line 1724
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1725
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    goto :goto_0

    .line 1727
    :cond_4
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/calculator2/Evaluator;->delete(Landroid/content/Context;ZI)V

    .line 1729
    :goto_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v4, v5}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1731
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->announceClearedForAccessibility()V

    .line 1733
    :cond_5
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1734
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1735
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->evaluateInstantIfNecessary()V

    goto :goto_1

    .line 1737
    :cond_6
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    .line 1739
    :goto_1
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    goto :goto_3

    .line 1741
    :cond_7
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1742
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    goto :goto_2

    .line 1744
    :cond_8
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/calculator2/Evaluator;->delete(Landroid/content/Context;ZI)V

    .line 1746
    :goto_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v4, v5}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1748
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->announceClearedForAccessibility()V

    .line 1750
    :cond_9
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    :goto_3
    return-void
.end method

.method private onClickDigital00()V
    .locals 4

    const/4 v0, 0x0

    .line 1823
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->shouldIgnoreInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1827
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 1828
    sget-boolean v0, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    :cond_1
    const-string v0, "Calculator"

    const-string v2, "Aaron: onClickDigital00()."

    .line 1830
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    const v2, 0x7f0a00a4

    if-eqz v0, :cond_2

    .line 1834
    invoke-static {p0, v2}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    goto :goto_1

    .line 1836
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v3, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1837
    invoke-static {p0, v2}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1839
    :cond_3
    invoke-static {p0, v2}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    .line 1841
    :goto_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    :goto_1
    return-void
.end method

.method private onClickEquals()V
    .locals 4

    .line 1684
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1685
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    const v0, 0x7f110078

    .line 1687
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/calculator2/Calculator;->onError(JI)V

    goto :goto_0

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->hasInterestingOps()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Calculator"

    const-string v3, "Aaron: onEquals(), call requireResult()."

    .line 1689
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->addRightParenAtLast()V

    .line 1691
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1692
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onClickNormalButton(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1846
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->shouldIgnoreInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1850
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 1851
    sget-boolean v0, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    :cond_1
    const-string v0, "Calculator"

    const-string v2, "Aaron: onClickNormalButton()."

    .line 1853
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1858
    invoke-static {p0, p1}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    goto :goto_1

    .line 1860
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1861
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    goto :goto_0

    .line 1863
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/Calculator;->addExplicitKeyToExpr(II)V

    .line 1865
    :goto_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    :goto_1
    return-void
.end method

.method private onClickToggleInv()V
    .locals 2

    .line 1793
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1794
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1795
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onInverseToggled(Z)V

    .line 1796
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    .line 1797
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->redisplay()V

    :cond_0
    return-void
.end method

.method private onClickToggleMode()V
    .locals 5

    const/4 v0, 0x0

    .line 1802
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    const-string v0, "Calculator"

    const-string v1, "Aaron: onToggleMode()."

    .line 1803
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getDegreeMode(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1805
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v4, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 1806
    invoke-virtual {v3, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr;->hasTrigFuncs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v2}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/Evaluator;->collapse(J)V

    .line 1809
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    .line 1812
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/Evaluator;->setDegreeMode(Z)V

    .line 1813
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onModeChanged(Z)V

    .line 1815
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1816
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    .line 1817
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1818
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->evaluateInstantIfNecessary()V

    :cond_1
    return-void
.end method

.method private onInverseToggled(Z)V
    .locals 5

    .line 1290
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1295
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    const v2, 0x7f110052

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mInvertibleButtons:[Landroid/view/View;

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 1297
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1299
    :cond_1
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mInverseButtons:[Landroid/view/View;

    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_4

    aget-object v2, p0, v0

    .line 1300
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1303
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    const v2, 0x7f110051

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mInvertibleButtons:[Landroid/view/View;

    array-length v2, p1

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 1305
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1307
    :cond_3
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mInverseButtons:[Landroid/view/View;

    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_4

    aget-object v2, p0, v1

    .line 1308
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private onKeyRepeat()V
    .locals 1

    .line 2486
    iget v0, p0, Lcom/android/calculator2/Calculator;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2495
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDelete()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    .line 2492
    iput v0, p0, Lcom/android/calculator2/Calculator;->mState:I

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onModeChanged(Z)V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1100a4

    const v1, 0x7f1100a3

    if-eqz p1, :cond_1

    .line 1324
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1325
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v1, 0x7f110054

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1328
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    const v0, 0x7f110065

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1330
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1331
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f110055

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1334
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    const v0, 0x7f110064

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onModeTextViewChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1340
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f1100a3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1341
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f110054

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1343
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f1100a4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1344
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f110055

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onPaste(Landroid/content/ClipData;)Z
    .locals 6

    .line 2576
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return v1

    .line 2583
    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2584
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/calculator2/Calculator;->IsValidChars(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string p0, "Calculator"

    const-string p1, "Aaron: is invalid."

    .line 2585
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    if-eqz v0, :cond_7

    .line 2586
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/Evaluator;->isLastSaved(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Calculator"

    .line 2587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: onPaste 2nd branch, valid chars, mCurrentState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v2, :cond_3

    .line 2589
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 2590
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2591
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->getSavedIndex()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/calculator2/Evaluator;->appendExpr(J)V

    goto/16 :goto_1

    .line 2592
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v2, :cond_4

    .line 2593
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2594
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v3}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 2595
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    .line 2596
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 2597
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->getSavedIndex()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/calculator2/Evaluator;->appendExpr(J)V

    goto/16 :goto_1

    .line 2598
    :cond_4
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v2, :cond_5

    .line 2599
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Calculator"

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: onPaste, mFormulaText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Calculator"

    .line 2601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: onPaste, paste text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorFormula;->getSelectionEnd()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Calculator"

    .line 2605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: onPaste, new text = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2607
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    goto :goto_1

    .line 2608
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p1, v0, :cond_6

    .line 2609
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->getSavedIndex()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/calculator2/Evaluator;->appendExpr(J)V

    .line 2611
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    goto/16 :goto_2

    :cond_7
    const-string v0, "Calculator"

    .line 2613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: onPaste 3rd branch, mCurrentState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Calculator"

    .line 2615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: mFormulaText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Calculator"

    .line 2616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: onPaste, paste text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorFormula;->getSelectionEnd()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Calculator"

    .line 2619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: new text text = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2621
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    :goto_2
    return v3
.end method

.method private onResult(ZZ)V
    .locals 13

    const-string v0, "Calculator"

    .line 1983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult(), animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", resultWasPreserved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getMinimumTextSize()F

    move-result v0

    .line 1988
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->isScrollable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->getVariableTextSize(Ljava/lang/CharSequence;)F

    move-result v0

    .line 1994
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    .line 1997
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorResult;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorResult;->setPivotX(F)V

    .line 1998
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorResult;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorResult;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorResult;->setPivotY(F)V

    .line 2001
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorFormula;->setPivotX(F)V

    .line 2002
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorFormula;->setPivotY(F)V

    .line 2008
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorResult;->getTextSize()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v0, v2

    mul-float/2addr v1, v3

    .line 2010
    iget-boolean v3, p0, Lcom/android/calculator2/Calculator;->mIsOneLine:Z

    if-eqz v3, :cond_1

    .line 2012
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorResult;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/calculator2/CalculatorResult;->setY(F)V

    .line 2018
    :cond_1
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getCurrentTextColor()I

    move-result v3

    .line 2019
    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorResult;->getCurrentTextColor()I

    move-result v4

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 2023
    iget-object p2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p2}, Lcom/android/calculator2/Evaluator;->represerve()V

    goto :goto_0

    .line 2026
    :cond_2
    iget-object p2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7, v5}, Lcom/android/calculator2/Evaluator;->preserve(JZ)J

    .line 2028
    :goto_0
    iget-boolean p2, p0, Lcom/android/calculator2/Calculator;->isAddRightParen:Z

    if-eqz p2, :cond_3

    .line 2029
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    :cond_3
    if-eqz p1, :cond_5

    .line 2032
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 2033
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, p2}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 2034
    :cond_4
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    .line 2035
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2036
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorResult;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2037
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 2038
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {p1, v7, v7, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2039
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    .line 2040
    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v9, 0x2

    new-array v10, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v5, [F

    aput v0, v12, p2

    .line 2042
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v10, p2

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v5, [F

    aput v0, v12, p2

    .line 2043
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v10, v5

    .line 2041
    invoke-static {v8, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, p2

    iget-object v8, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v10, p0, Lcom/android/calculator2/Calculator;->TEXT_COLOR:Landroid/util/Property;

    new-array v11, v5, [I

    aput v3, v11, p2

    .line 2047
    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v7, v5

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v8, 0x3

    new-array v10, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v5, [F

    div-float/2addr v2, v0

    aput v2, v12, p2

    .line 2051
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v10, p2

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v5, [F

    aput v2, v11, p2

    .line 2052
    invoke-static {v0, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v10, v5

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v5, [F

    neg-float v1, v1

    aput v1, v2, p2

    .line 2053
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v10, v9

    .line 2050
    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v9

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->TEXT_COLOR:Landroid/util/Property;

    new-array v2, v5, [I

    aput v4, v2, p2

    .line 2054
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v7, v8

    .line 2040
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2055
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0001

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2057
    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2058
    new-instance p1, Lcom/android/calculator2/Calculator$13;

    invoke-direct {p1, p0}, Lcom/android/calculator2/Calculator$13;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2067
    iput-object v6, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 2068
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 2070
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorResult;->setScaleX(F)V

    .line 2071
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorResult;->setScaleY(F)V

    .line 2072
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorResult;->setTranslationY(F)V

    .line 2073
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v3}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    .line 2074
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaContainer:Landroid/widget/HorizontalScrollView;

    neg-float p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 2075
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/android/calculator2/CalculatorFormula;->setScaleX(F)V

    .line 2076
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v2}, Lcom/android/calculator2/CalculatorFormula;->setScaleY(F)V

    .line 2077
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    :goto_1
    return-void
.end method

.method private onTouchCanceled(Landroid/view/View;)V
    .locals 1

    .line 2480
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 2481
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2482
    iput v0, p0, Lcom/android/calculator2/Calculator;->mState:I

    return-void
.end method

.method private onTouchDown(Landroid/view/View;)V
    .locals 1

    .line 2472
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2473
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDelete()V

    const/4 v0, 0x1

    .line 2474
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2475
    iput v0, p0, Lcom/android/calculator2/Calculator;->mState:I

    .line 2476
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private prepareForHistory()Z
    .locals 3

    .line 2176
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2181
    invoke-direct {p0, v2}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 2182
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    return v2

    :cond_1
    return v2
.end method

.method private processExtraData()V
    .locals 4

    .line 791
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isFromControlCenter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    const-string v0, "Calculator"

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron processExtraData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    if-eqz v0, :cond_1

    const-string v0, "Calculator"

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron isFromControlCenterFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->RegistScreenOff()V

    .line 800
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 803
    :cond_1
    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->isNotFirstControlCenterPause:Z

    return-void
.end method

.method private redisplayAfterFormulaChange()V
    .locals 2

    const-string v0, "Calculator"

    const-string v1, "Aaron: redisplayAfterFormulaChange()."

    .line 1424
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    .line 1426
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1427
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    .line 1428
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->haveUnprocessed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Calculator"

    const-string v1, "Aaron: haveUnprocessed."

    .line 1429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->touch()V

    goto :goto_0

    :cond_0
    const-string v0, "Calculator"

    const-string v1, "Aaron: call evaluateInstantIfNecessary()."

    .line 1433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->evaluateInstantIfNecessary()V

    :goto_0
    return-void
.end method

.method private removeHistoryFragment()V
    .locals 4

    .line 1349
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "HistoryFragment"

    const/4 v2, 0x1

    .line 1352
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Calculator"

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeHistoryFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mMainCalculator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private restoreDisplay()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v2, p0}, Lcom/android/calculator2/CalculatorResult;->setShouldEvaluateResult(ILcom/android/calculator2/Evaluator$EvaluationListener;)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_2

    .line 340
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 341
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v2, p0}, Lcom/android/calculator2/CalculatorResult;->setShouldEvaluateResult(ILcom/android/calculator2/Evaluator$EvaluationListener;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->mapFromSaved(Lcom/android/calculator2/Calculator$CalculatorState;)Lcom/android/calculator2/Calculator$CalculatorState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 346
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/android/calculator2/CalculatorResult;->setShouldEvaluateResult(ILcom/android/calculator2/Evaluator$EvaluationListener;)V

    :goto_0
    return-void
.end method

.method private restoreDisplayPositions()V
    .locals 2

    .line 2085
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setScaleX(F)V

    .line 2088
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setScaleY(F)V

    .line 2089
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setTranslationX(F)V

    .line 2090
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setTranslationY(F)V

    .line 2091
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 2092
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->requestFocus()Z

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 926
    invoke-static {}, Lcom/android/calculator2/Calculator$CalculatorState;->values()[Lcom/android/calculator2/Calculator$CalculatorState;

    move-result-object v0

    const-string v1, "Calculator_display_state"

    sget-object v2, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 927
    invoke-virtual {v2}, Lcom/android/calculator2/Calculator$CalculatorState;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 928
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    const-string v0, "Calculator_unprocessed_chars"

    .line 929
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    :cond_0
    const-string v0, "Calculator_eval_state"

    .line 933
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 935
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 936
    :try_start_1
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/Evaluator;->restoreInstanceState(Ljava/io/DataInput;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    :try_start_2
    invoke-interface {v1}, Ljava/io/ObjectInput;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 935
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 937
    :try_start_4
    invoke-interface {v1}, Ljava/io/ObjectInput;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/io/ObjectInput;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 939
    :catch_2
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 940
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    :cond_2
    :goto_2
    const-string v0, "Calculator_inverse_mode"

    .line 944
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isInverseToggleSelected:Z

    const-string v0, "Calculator_change_mode"

    .line 945
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    const-string p1, "Calculator"

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aaron: restoreInstanceState, manualOrientationChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-boolean p1, p0, Lcom/android/calculator2/Calculator;->isInverseToggleSelected:Z

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->onInverseToggled(Z)V

    return-void
.end method

.method private reveal(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)V
    .locals 12

    .line 1870
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroupOverlay;

    .line 1872
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1873
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/CalculatorDisplay;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1876
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1877
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 1878
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 1879
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setRight(I)V

    .line 1880
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1881
    invoke-virtual {p1, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 1882
    invoke-virtual {v1, p2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    const/4 v0, 0x2

    .line 1884
    new-array v2, v0, [I

    .line 1885
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mDivideButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1886
    aget v3, v2, p2

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mDivideButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, v2, p2

    const/4 v3, 0x1

    .line 1887
    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mDivideButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1889
    aget v0, v2, p2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1890
    aget v2, v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1892
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1893
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v8, v0

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 1894
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    int-to-double v10, v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1895
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 1899
    :try_start_0
    invoke-static {v1, v0, v2, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    .line 1900
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1901
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1903
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v3, [F

    aput v5, v0, p2

    invoke-static {v1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1904
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0001

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1905
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p3, v2, v2, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1907
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1908
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1909
    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1910
    new-instance p2, Lcom/android/calculator2/Calculator$11;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/calculator2/Calculator$11;-><init>(Lcom/android/calculator2/Calculator;Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1918
    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 1919
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1921
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setPcMode()V
    .locals 2

    .line 2676
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2677
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string v0, "DecorCaptionViewExt"

    .line 2678
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 2682
    :cond_0
    invoke-static {v1}, Lcom/android/calculator2/SystemUtil;->setPcMode(Z)V

    return-void
.end method

.method private setState(Lcom/android/calculator2/Calculator$CalculatorState;)V
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, p1, :cond_7

    .line 1067
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorResult;->setShouldEvaluateResult(ILcom/android/calculator2/Evaluator$EvaluationListener;)V

    .line 1070
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->restoreDisplayPositions()V

    .line 1072
    :cond_0
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 1074
    iget-boolean p1, p0, Lcom/android/calculator2/Calculator;->mIsOneLine:Z

    if-eqz p1, :cond_4

    .line 1075
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1080
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v2, 0x4

    if-ne p1, v0, :cond_2

    .line 1081
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v2}, Lcom/android/calculator2/CalculatorFormula;->setVisibility(I)V

    .line 1082
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorResult;->setVisibility(I)V

    goto :goto_1

    .line 1084
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorFormula;->setVisibility(I)V

    .line 1085
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v2}, Lcom/android/calculator2/CalculatorResult;->setVisibility(I)V

    goto :goto_1

    .line 1078
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorFormula;->setVisibility(I)V

    .line 1079
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorResult;->setVisibility(I)V

    .line 1089
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p1, v0, :cond_5

    const p1, 0x7f060217

    .line 1090
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 1091
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->setTextColor(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    goto :goto_2

    .line 1093
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq p1, v0, :cond_6

    .line 1094
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const v0, 0x7f060129

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setTextColor(I)V

    .line 1095
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const v0, 0x7f06012c

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorResult;->setTextColor(I)V

    .line 1097
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->invalidateOptionsMenu()V

    :cond_7
    return-void
.end method

.method private shouldIgnoreInput(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2736
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2738
    invoke-static {p1}, Lcom/android/calculator2/SystemUtil;->isFormulaContainsIllegalChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v0, :cond_1

    :cond_0
    return v1

    .line 2743
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2744
    invoke-static {p1}, Lcom/android/calculator2/SystemUtil;->isFormulaContainsIllegalChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v0, :cond_2

    goto :goto_0

    .line 2748
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 2749
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/calculator2/SystemUtil;->isFormulaContainsIllegalChars(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v0, :cond_5

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 2754
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private showHistoryFragment()V
    .locals 4

    .line 2204
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2205
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2209
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getHistoryFragment()Lcom/android/calculator2/HistoryFragment;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->prepareForHistory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2213
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 2217
    :cond_2
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    .line 2218
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a00e4

    new-instance v2, Lcom/android/calculator2/HistoryFragment;

    invoke-direct {v2}, Lcom/android/calculator2/HistoryFragment;-><init>()V

    const-string v3, "HistoryFragment"

    .line 2219
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 2220
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "HistoryFragment"

    .line 2221
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2222
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 2225
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mMainCalculator:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private stopActionModeOrContextMenu()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->stopActionModeOrContextMenu()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->stopActionModeOrContextMenu()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private switchToInput(I)V
    .locals 5

    .line 1367
    invoke-static {p1}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/calculator2/KeyMaps;->isSuffix(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->announceClearedForAccessibility()V

    .line 1380
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 1381
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1382
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 1383
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->changeTextTo(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1368
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/calculator2/Evaluator;->collapse(J)V

    .line 1369
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1371
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->changeTextTo(Ljava/lang/CharSequence;)V

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Calculator"

    const-string v1, "Aaron: receive IndexOutOfBoundsException."

    .line 1375
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1386
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    return-void
.end method

.method private updateMenusWhileFullScreen()V
    .locals 4

    .line 2761
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2762
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2770
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2773
    :cond_3
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_5

    .line 2774
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPadAdvanced:Landroid/widget/GridLayout;

    if-eqz v0, :cond_4

    .line 2775
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPadAdvanced:Landroid/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 2777
    :cond_4
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2778
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2782
    :cond_5
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2783
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2784
    :cond_6
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public destroyEvaluator()V
    .locals 0

    .line 1118
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->destroyEvaluator()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    .line 1152
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getHistoryFragment()Lcom/android/calculator2/HistoryFragment;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v1}, Lcom/android/calculator2/DragLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Lcom/android/calculator2/HistoryFragment;->stopActionModeOrContextMenu()Z

    .line 1157
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public evaluateInstantIfNecessary()V
    .locals 4

    const/4 v0, 0x0

    .line 1413
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->shouldIgnoreInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->hasInterestingOps()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Calculator"

    const-string v3, "evaluateAndNotify()."

    .line 1418
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/calculator2/Evaluator;->evaluateAndNotify(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    :cond_1
    return-void
.end method

.method public getDisplayHeight()I
    .locals 0

    .line 2166
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public isOneLine()Z
    .locals 0

    .line 1111
    iget-boolean p0, p0, Lcom/android/calculator2/Calculator;->mIsOneLine:Z

    return p0
.end method

.method public isResultLayout()Z
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isfull()Z
    .locals 9

    .line 357
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 360
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    .line 361
    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x3

    .line 362
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calculator2/SystemUtil;->dpToPixel(FLandroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    .line 363
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/calculator2/SystemUtil;->dpToPixel(FLandroid/content/Context;)F

    move-result p0

    mul-float/2addr p0, v3

    const-string v3, "Calculator"

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aaron isfullscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v0

    cmpl-float v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_0

    int-to-float v8, v1

    cmpl-float v8, p0, v8

    if-lez v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Calculator"

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aaron isfullscreen:screenWidth: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " screenHeight:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  displayHeight:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  displayWidth:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v5, :cond_1

    int-to-float v0, v1

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    return v6
.end method

.method public notifyClickCloseButton()V
    .locals 3

    .line 2724
    sget-boolean v0, Lcom/android/calculator2/SystemUtil;->restoreAfterCloseFloat:Z

    if-eqz v0, :cond_2

    .line 2725
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorService;->isInResultState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 2726
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2727
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorService;->getFormula()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    goto :goto_2

    .line 2729
    :cond_2
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->calculatorReset()V

    .line 2731
    :goto_2
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->clearService()V

    return-void
.end method

.method public notifyClickFloatEqualButton()V
    .locals 3

    .line 2715
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2716
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 2717
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 2718
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorService;->getFormula()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1123
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1124
    invoke-virtual {p1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ACTION_MODE"

    if-ne p1, v0, :cond_0

    .line 1125
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaContainer:Landroid/widget/HorizontalScrollView;

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getRight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "Calculator"

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onBackPressed(), isStartFromSystemUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1165
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getHistoryFragment()Lcom/android/calculator2/HistoryFragment;

    move-result-object v0

    .line 1166
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v1}, Lcom/android/calculator2/DragLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0}, Lcom/android/calculator2/HistoryFragment;->stopActionModeOrContextMenu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->removeHistoryFragment()V

    .line 1169
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->onClickBackArrowButton()V

    goto :goto_0

    .line 1172
    :cond_0
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    if-eqz v0, :cond_1

    .line 1173
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const-string v0, "Calculator"

    const-string v1, "Aaron: super.onBackPressed()."

    .line 1174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Calculator"

    const-string v1, "Aaron: moveTaskToBack()."

    .line 1176
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1177
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->moveTaskToBack(Z)Z

    const v1, 0x7f010011

    .line 1178
    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Calculator;->overridePendingTransition(II)V

    .line 1185
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1186
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1

    .line 1440
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1441
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    .line 1444
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->onClickNormalButton(I)V

    goto :goto_0

    .line 1463
    :sswitch_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickToggleMode()V

    goto :goto_0

    .line 1460
    :sswitch_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickToggleInv()V

    goto :goto_0

    .line 1447
    :sswitch_2
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickEquals()V

    goto :goto_0

    .line 1466
    :sswitch_3
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDigital00()V

    goto :goto_0

    .line 1450
    :sswitch_4
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz p1, :cond_0

    .line 1451
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDelete()V

    goto :goto_0

    .line 1455
    :sswitch_5
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz p1, :cond_1

    .line 1456
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 1457
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickClear()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0079 -> :sswitch_5
        0x7f0a009c -> :sswitch_4
        0x7f0a00a4 -> :sswitch_3
        0x7f0a00bf -> :sswitch_2
        0x7f0a0201 -> :sswitch_1
        0x7f0a0202 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCancelled(J)V
    .locals 1

    .line 1590
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1591
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorResult;->onCancelled(J)V

    return-void
.end method

.method public onClearAnimationEnd()V
    .locals 2

    const-string v0, "Calculator"

    const-string v1, "onClearAnimationEnd()."

    .line 1930
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1931
    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    .line 1932
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    .line 1933
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 1934
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1935
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    return-void
.end method

.method public onClick(Lcom/android/calculator2/AlertDialogFragment;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const-string p2, "clear"

    .line 2098
    invoke-virtual {p1}, Lcom/android/calculator2/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Calculator"

    const-string p2, "Aaron: clear calculate history."

    .line 2099
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator;->clearEverything()V

    .line 2103
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->onClearAnimationEnd()V

    .line 2104
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluatorCallback:Lcom/android/calculator2/Evaluator$Callback;

    invoke-interface {p1}, Lcom/android/calculator2/Evaluator$Callback;->onMemoryStateChanged()V

    .line 2105
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string p2, "timeout"

    .line 2106
    invoke-virtual {p1}, Lcom/android/calculator2/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2108
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->setLongTimeout()V

    goto :goto_0

    :cond_1
    const-string p0, "Calculator"

    .line 2110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown AlertDialogFragment click:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/calculator2/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickBackArrowButton()V
    .locals 4

    const-string v0, "Calculator"

    const-string v1, "Aaron: onClickBackArrowButton receive."

    .line 2655
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mToolbar:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 2657
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2658
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onClose()V
    .locals 0

    .line 2118
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->removeHistoryFragment()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1044
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Calculator"

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), screenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1048
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-nez p1, :cond_0

    .line 1049
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    .line 1051
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne p1, v0, :cond_2

    .line 1052
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz p1, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->setCursorVisible(Z)V

    .line 1055
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    .line 1056
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1057
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    :cond_2
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 2407
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "oncreate_onnewintent"

    .line 375
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    const-string v0, "Calculator"

    const-string v1, "Aaron: onCreate() of Calculator."

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->setPcMode()V

    .line 378
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 381
    new-instance v0, Lcom/android/calculator2/Calculator$RotationObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/calculator2/Calculator$RotationObserver;-><init>(Lcom/android/calculator2/Calculator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

    .line 383
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

    invoke-virtual {v0}, Lcom/android/calculator2/Calculator$RotationObserver;->startObserver()V

    .line 385
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v4, "shake"

    .line 391
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Calculator"

    const-string v4, "Aaron: Show Calculator when launch from lock screen"

    .line 393
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0, v3}, Lcom/android/calculator2/Calculator;->setShowWhenLocked(Z)V

    .line 395
    iput-boolean v3, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    .line 403
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Calculator"

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v2, "com.android.calculator2.startappLand"

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v2, 0x400

    const/4 v4, 0x2

    if-ne v4, v0, :cond_2

    const-string v0, "land_orientation"

    .line 416
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v0

    if-eq v0, v3, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/android/calculator2/Calculator;->currentDarkMode:I

    const-string v0, "Calculator"

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aaron: onCreate(), currentDarkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/calculator2/Calculator;->currentDarkMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v5, "Calculator"

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aaron: dm.heightPixels = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dm.widthPixels == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dm.density == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " densityDpi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    const-string v0, "Calculator"

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aaron onCreate:  this.isInMultiWindowMode():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x2000

    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 443
    iget v0, p0, Lcom/android/calculator2/Calculator;->currentDarkMode:I

    const/16 v6, 0x10

    if-eq v0, v6, :cond_4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "Calculator"

    const-string v7, "aaron onCreate:case Configuration.UI_MODE_NIGHT_YES:3 "

    .line 452
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string v0, "Calculator"

    const-string v7, "aaron onStart: currentDarkMode  UI_MODE_NIGHT_NO3"

    .line 447
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Calculator"

    const-string v2, "Aaron: Calculator in PCMode."

    .line 459
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0d0029

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 462
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 463
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    .line 468
    :cond_5
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v0

    const v7, 0x7f0d002b

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isOneThirdScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Calculator"

    const-string v2, "Aaron: Calculator in one-third Split Mode."

    .line 469
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 471
    invoke-virtual {p0, v7}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 473
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    .line 474
    :cond_6
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v0

    const v8, 0x7f0d002a

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Calculator"

    const-string v2, "Aaron: Calculator in Split Mode."

    .line 475
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 482
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f06004a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_2

    .line 486
    :cond_7
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 509
    :cond_8
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 510
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0d0028

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    const-string v0, "Calculator"

    const-string v2, "onCreate: aaron:layout.activity_calculator_main"

    .line 512
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 488
    :cond_9
    :goto_1
    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isOneThirdScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Calculator"

    const-string v2, "Aaron: Calculator in one-third Split Mode2 1/3."

    .line 490
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0, v7}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    goto :goto_2

    .line 493
    :cond_a
    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Calculator"

    const-string v2, "Aaron: Calculator in Split Mode2 1/2."

    .line 494
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    goto :goto_2

    :cond_b
    const-string v0, "Calculator"

    const-string v7, "Aaron: Calculator in Split2 Mode."

    .line 499
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 504
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "Calculator"

    const-string v2, "Aaron:isInMultiWindowMode: Calculator in Split Mode."

    .line 506
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 515
    :goto_2
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/calculator2/-$$Lambda$Calculator$iDKzUtyAV72uru2nA69ozg15Wf8;

    invoke-direct {v2, p0}, Lcom/android/calculator2/-$$Lambda$Calculator$iDKzUtyAV72uru2nA69ozg15Wf8;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v0, 0x7f0a0203

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mToolbar:Landroid/view/View;

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setActionBar(Landroid/widget/Toolbar;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 547
    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->setActivity(Landroid/app/Activity;)V

    const v0, 0x7f0a0168

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mPadAdvanced:Landroid/widget/GridLayout;

    const v0, 0x7f0a0115

    .line 550
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mMainCalculator:Landroid/view/View;

    const v0, 0x7f0a00af

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mDisplayView:Lcom/android/calculator2/CalculatorDisplay;

    const v0, 0x7f0a012d

    .line 552
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mModeView:Landroid/widget/TextView;

    const v0, 0x7f0a00cc

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorFormula;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    .line 555
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_c

    .line 556
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, v5}, Lcom/android/calculator2/CalculatorFormula;->setInputType(I)V

    .line 557
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v1

    invoke-virtual {v0, v5}, Lcom/android/calculator2/CalculatorFormula;->setFilters([Landroid/text/InputFilter;)V

    .line 558
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    const-string v5, "0123456789"

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/calculator2/CalculatorFormula;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 563
    :cond_c
    sget-boolean v0, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-eqz v0, :cond_d

    .line 564
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->requestFocus()Z

    :cond_d
    const v0, 0x7f0a0190

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorResult;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    const v0, 0x7f0a00cd

    .line 566
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaContainer:Landroid/widget/HorizontalScrollView;

    .line 567
    invoke-static {p0}, Lcom/android/calculator2/Evaluator;->getInstance(Landroid/content/Context;)Lcom/android/calculator2/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 568
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mEvaluatorCallback:Lcom/android/calculator2/Evaluator$Callback;

    invoke-virtual {v0, v5}, Lcom/android/calculator2/Evaluator;->setCallback(Lcom/android/calculator2/Evaluator$Callback;)V

    .line 569
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/calculator2/CalculatorResult;->setEvaluator(Lcom/android/calculator2/Evaluator;J)V

    const v0, 0x7f0a009c

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mDeleteButton:Landroid/view/View;

    const v0, 0x7f0a0079

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    const v0, 0x7f0a0169

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0150

    .line 573
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calculator2/Calculator;->mDivideButton:Landroid/view/View;

    const v5, 0x7f0a00bf

    .line 574
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calculator2/Calculator;->mEqualButton:Landroid/view/View;

    const v5, 0x7f0a0098

    .line 575
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 576
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->getDecimalSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0201

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    const v0, 0x7f0a0202

    .line 578
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    .line 579
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorResult;->getVisibility()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_e

    move v0, v3

    goto :goto_3

    :cond_e
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->mIsOneLine:Z

    const/4 v0, 0x6

    .line 581
    new-array v8, v0, [Landroid/view/View;

    const v9, 0x7f0a00d7

    .line 582
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v1

    const v9, 0x7f0a00d3

    .line 583
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v3

    const v9, 0x7f0a00d8

    .line 584
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v4

    const v9, 0x7f0a00d5

    .line 585
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const v9, 0x7f0a00d6

    .line 586
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v5

    const v9, 0x7f0a0156

    .line 587
    invoke-virtual {p0, v9}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v8, v2

    iput-object v8, p0, Lcom/android/calculator2/Calculator;->mInvertibleButtons:[Landroid/view/View;

    .line 589
    new-array v0, v0, [Landroid/view/View;

    const v8, 0x7f0a00d1

    .line 590
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v1

    const v8, 0x7f0a00d0

    .line 591
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v3

    const v8, 0x7f0a00d2

    .line 592
    invoke-virtual {p0, v8}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v4

    const v4, 0x7f0a00d4

    .line 593
    invoke-virtual {p0, v4}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v10

    const v4, 0x7f0a00cf

    .line 594
    invoke-virtual {p0, v4}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v5

    const v4, 0x7f0a0155

    .line 595
    invoke-virtual {p0, v4}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v2

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseButtons:[Landroid/view/View;

    const v0, 0x7f0a00b5

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/DragLayout;

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    .line 599
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/DragLayout;->removeDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V

    .line 600
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/DragLayout;->addDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V

    .line 601
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/DragLayout;->setCloseCallback(Lcom/android/calculator2/DragLayout$CloseCallback;)V

    .line 603
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mOnDisplayMemoryOperationsListener:Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;

    invoke-virtual {v0, v2}, Lcom/android/calculator2/CalculatorFormula;->setOnDisplayMemoryOperationsListener(Lcom/android/calculator2/Calculator$OnDisplayMemoryOperationsListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorFormula;->setOnTextSizeChangeListener(Lcom/android/calculator2/CalculatorFormula$OnTextSizeChangeListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/calculator2/CalculatorFormula;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 607
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    new-instance v2, Lcom/android/calculator2/-$$Lambda$Calculator$FjMN3zEBUW5QgRPbHlco9x44k20;

    invoke-direct {v2, p0}, Lcom/android/calculator2/-$$Lambda$Calculator$FjMN3zEBUW5QgRPbHlco9x44k20;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v2}, Lcom/android/calculator2/CalculatorFormula;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDeleteKeyOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a012c

    .line 627
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    .line 628
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mode_change:Landroid/view/View;

    new-instance v2, Lcom/android/calculator2/-$$Lambda$Calculator$ivnbohRUSNevuG2pfjvGQYRsksE;

    invoke-direct {v2, p0}, Lcom/android/calculator2/-$$Lambda$Calculator$ivnbohRUSNevuG2pfjvGQYRsksE;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0171

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    .line 642
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->more_float:Landroid/view/View;

    new-instance v2, Lcom/android/calculator2/-$$Lambda$Calculator$mUpmdt9eaj1_pw5-r8PhjtFHqeQ;

    invoke-direct {v2, p0}, Lcom/android/calculator2/-$$Lambda$Calculator$mUpmdt9eaj1_pw5-r8PhjtFHqeQ;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0138

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    .line 674
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->showHistory:Landroid/view/View;

    new-instance v2, Lcom/android/calculator2/-$$Lambda$Calculator$POAwjX9IesTClAPmMnOkcWjUptQ;

    invoke-direct {v2, p0}, Lcom/android/calculator2/-$$Lambda$Calculator$POAwjX9IesTClAPmMnOkcWjUptQ;-><init>(Lcom/android/calculator2/Calculator;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mModeToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 681
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onInverseToggled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v6, v7}, Lcom/android/calculator2/Evaluator;->getDegreeMode(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onModeChanged(Z)V

    goto :goto_4

    .line 684
    :cond_f
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v6, v7}, Lcom/android/calculator2/Evaluator;->getDegreeMode(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onModeTextViewChanged(Z)V

    .line 687
    :goto_4
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 688
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorFormula;->setShowSoftInputOnFocus(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setShowSoftInputOnFocus(Z)V

    .line 691
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    const-string v2, "setShowSoftInputOnFocus"

    .line 693
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 695
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Calculator"

    const-string v2, "Aaron: catch exception for reflect EditText methods."

    .line 699
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_5
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_10

    .line 703
    sput-boolean v3, Lcom/android/calculator2/Calculator;->screenOrientationFlag:Z

    .line 704
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onInverseToggled(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0, v6, v7}, Lcom/android/calculator2/Evaluator;->getDegreeMode(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->onModeChanged(Z)V

    goto :goto_6

    .line 707
    :cond_10
    sput-boolean v1, Lcom/android/calculator2/Calculator;->screenOrientationFlag:Z

    :goto_6
    if-eqz p1, :cond_11

    const-string v0, "Calculator"

    const-string v1, "Aaron: 1."

    .line 711
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0, p1}, Lcom/android/calculator2/Calculator;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_7

    :cond_11
    const-string p1, "Calculator"

    const-string v0, "Aaron: 2."

    .line 714
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    sget-object p1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    .line 716
    sget-boolean p1, Lcom/android/calculator2/SystemUtil;->isCalculatorSupportCursor:Z

    if-nez p1, :cond_12

    .line 717
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorFormula;->requestFocus()Z

    .line 718
    :cond_12
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 721
    :goto_7
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->restoreDisplay()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "Calculator"

    const-string v1, "Aaron: onDestroy()."

    .line 1004
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->destroyEvaluator()V

    const/4 v0, 0x0

    .line 1008
    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->setActivity(Landroid/app/Activity;)V

    .line 1009
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/DragLayout;->removeDragCallback(Lcom/android/calculator2/DragLayout$DragCallback;)V

    .line 1011
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

    invoke-virtual {v1}, Lcom/android/calculator2/Calculator$RotationObserver;->stopObserver()V

    .line 1013
    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mRotationObserver:Lcom/android/calculator2/Calculator$RotationObserver;

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    if-eqz v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->clearService()V

    :cond_1
    const/4 v0, 0x0

    .line 1020
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    .line 1021
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1022
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 1944
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_2

    .line 1945
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ANIMATE:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1946
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isAddRightParen:Z

    if-eqz v0, :cond_0

    .line 1947
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1950
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1952
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/CalculatorResult;->onError(JI)V

    goto :goto_1

    .line 1954
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    const v1, 0x7f060049

    new-instance v2, Lcom/android/calculator2/Calculator$12;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/calculator2/Calculator$12;-><init>(Lcom/android/calculator2/Calculator;JI)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->reveal(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1966
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 1971
    :cond_3
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorResult;->clear()V

    goto :goto_1

    .line 1968
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->setState(Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1969
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/CalculatorResult;->onError(JI)V

    :goto_1
    return-void

    .line 1942
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected error source"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public onEvaluate(JIIILjava/lang/String;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const-string v0, "Calculator"

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluate(), mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Calculator"

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluate(), isFloatCalculatorInResultState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->invalidateOptionsMenu()V

    .line 1576
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/calculator2/CalculatorResult;->onEvaluate(JIIILjava/lang/String;)V

    .line 1577
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object p2, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    .line 1579
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object p2, Lcom/android/calculator2/Calculator$CalculatorState;->EVALUATE:Lcom/android/calculator2/Calculator$CalculatorState;

    const/4 p4, 0x1

    if-ne p1, p2, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iget-object p2, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object p5, Lcom/android/calculator2/Calculator$CalculatorState;->INIT_FOR_RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq p2, p5, :cond_1

    iget-object p2, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object p5, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq p2, p5, :cond_1

    iget-boolean p2, p0, Lcom/android/calculator2/Calculator;->isAlreadyAdd2DB:Z

    if-eqz p2, :cond_2

    :cond_1
    move p3, p4

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/calculator2/Calculator;->onResult(ZZ)V

    goto :goto_1

    .line 1581
    :cond_3
    iget-boolean p1, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    if-eqz p1, :cond_4

    .line 1582
    iput-boolean p3, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 1583
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickEquals()V

    :cond_4
    :goto_1
    return-void

    .line 1567
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected evaluation result index\n"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public onInstanceStateRestored(Z)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const-string v0, "Calculator"

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onKeyUp, keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    .line 1228
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->stopActionModeOrContextMenu()Z

    .line 1233
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->cancelUnrequested()V

    const/16 v0, 0x17

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x70

    const-wide/16 v2, 0x96

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x0

    .line 1262
    invoke-direct {p0, v0}, Lcom/android/calculator2/Calculator;->cancelIfEvaluating(Z)Z

    .line 1263
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    const/high16 p2, -0x80000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    return v1

    .line 1269
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    int-to-char p1, p1

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_3

    .line 1274
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEqualButton:Landroid/view/View;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1275
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickEquals()V

    goto :goto_0

    .line 1277
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    .line 1278
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->redisplayAfterFormulaChange()V

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1

    .line 1243
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-wide v4, Lcom/android/calculator2/Calculator;->handleBackKeyTime:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_5

    return v1

    .line 1245
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mDeleteButton:Landroid/view/View;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1246
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->redisplayFormula()V

    .line 1247
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDelete()V

    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sput-wide p0, Lcom/android/calculator2/Calculator;->handleBackKeyTime:J

    return v1

    .line 1251
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-wide v4, Lcom/android/calculator2/Calculator;->handleDelKeyTime:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_7

    return v1

    .line 1253
    :cond_7
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mDeleteButton:Landroid/view/View;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1254
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickDelete()V

    .line 1255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sput-wide p0, Lcom/android/calculator2/Calculator;->handleDelKeyTime:J

    return v1

    .line 1258
    :cond_8
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mClearButton:Landroid/view/View;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1259
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickClear()V

    return v1

    .line 1239
    :cond_9
    :pswitch_1
    iget-object p1, p0, Lcom/android/calculator2/Calculator;->mEqualButton:Landroid/view/View;

    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1240
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickEquals()V

    return v1

    .line 1224
    :cond_a
    :pswitch_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1555
    iput-object p1, p0, Lcom/android/calculator2/Calculator;->mCurrentButton:Landroid/view/View;

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a009c

    if-ne p1, v0, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->onClickClear()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 352
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    const-string p0, "Calculator"

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aaron onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " newConfig: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 729
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "oncreate_onnewintent"

    .line 731
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    const-string v0, "Calculator"

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onNewIntent, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->processExtraData()V

    const-string v1, "android.intent.action.MAIN"

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Calculator"

    const-string v1, "Aaron: Start from Launcher, clear flag1 - FLAG_SHOW_WHEN_LOCKED."

    .line 736
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->setShowWhenLocked(Z)V

    .line 738
    iput-boolean v2, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.android.calculator2.start"

    .line 739
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Calculator"

    const-string v1, "Aaron: Start from LockScreen, set flag2 - FLAG_SHOW_WHEN_LOCKED."

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 742
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const-string v1, "Calculator"

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron onNewIntent: isKeyguardLocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 746
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->setShowWhenLocked(Z)V

    .line 747
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    const-string v0, "Calculator"

    const-string v1, "Aaron onNewIntent: isKeyguardLocked"

    .line 748
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Calculator"

    const-string v2, "Aaron: receive IndexOutOfBoundsException."

    .line 750
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "Calculator"

    const-string v1, "Aaron onNewIntent: !isKeyguardLocked"

    .line 754
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->setShowWhenLocked(Z)V

    .line 756
    iput-boolean v2, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.android.calculator2.start_from_float"

    .line 760
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Calculator"

    const-string v1, "Aaron: Start from float, keep the original."

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iput-boolean v2, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    .line 763
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "RESULT_STATE"

    .line 765
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 766
    iget-boolean v1, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->isAlreadyAdd2DB:Z

    const-string v1, "CUR_EXPR_2_FULL_SCREEN"

    .line 767
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    if-eqz v1, :cond_4

    .line 770
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v3, "START_FROM_FLOAT_CALCULATOR"

    .line 771
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Calculator"

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aaron: paste text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 774
    invoke-virtual {v1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    .line 777
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calculator2/Calculator$6;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$6;-><init>(Lcom/android/calculator2/Calculator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    :cond_5
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->clearService()V

    .line 786
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Calculator;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1027
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "Calculator"

    const-string v1, "aaron:onPause: "

    .line 1028
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isNotFirstControlCenterPause:Z

    if-eqz v0, :cond_0

    const-string v0, "Calculator"

    const-string v1, "Aaron :isFromControlCenterFlag && isNotFirstControlCenterPause "

    .line 1030
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1035
    :cond_0
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFromControlCenterFlag:Z

    if-eqz v0, :cond_1

    const-string v0, "Calculator"

    const-string v1, "Aaron :isFromControlCenterFlag "

    .line 1036
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isNotFirstControlCenterPause:Z

    :cond_1
    return-void
.end method

.method public onReevaluate(J)V
    .locals 0

    .line 1597
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mResultText:Lcom/android/calculator2/CalculatorResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorResult;->onReevaluate(J)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Calculator"

    const-string v1, "aaron onResume: "

    .line 884
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-direct {p0, p0}, Lcom/android/calculator2/Calculator;->getRotationStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    const-string v0, "Calculator"

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: onResume, autoRotationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", manualOrientationChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 890
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->autoRotationEnabled:Z

    if-eqz v0, :cond_1

    .line 894
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    if-eqz v0, :cond_2

    .line 895
    new-instance v0, Lcom/android/calculator2/Calculator$9;

    invoke-direct {v0, p0}, Lcom/android/calculator2/Calculator$9;-><init>(Lcom/android/calculator2/Calculator;)V

    .line 901
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    const-wide/16 v3, 0xbb8

    .line 902
    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_1
    const-string v0, "Calculator"

    const-string v2, "Aaron: onResume, autoRotationEnabled is false, do nothing."

    .line 906
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 909
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->customizeViews()V

    .line 917
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mMainCalculator:Landroid/view/View;

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    .line 918
    invoke-virtual {p0}, Lcom/android/calculator2/DragLayout;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    .line 917
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Calculator"

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: onSaveInstanceState, manualOrientationChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Evaluator;->cancelAll(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 963
    iput-object v1, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    .line 966
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Calculator_display_state"

    .line 967
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-virtual {v2}, Lcom/android/calculator2/Calculator$CalculatorState;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "Calculator_unprocessed_chars"

    .line 968
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 969
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 970
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 971
    :try_start_1
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v3, v2}, Lcom/android/calculator2/Evaluator;->saveInstanceState(Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    :try_start_2
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "Calculator_eval_state"

    .line 976
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 977
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mInverseToggle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isInverseToggleSelected:Z

    :cond_2
    const-string v0, "Calculator_inverse_mode"

    .line 980
    iget-boolean v1, p0, Lcom/android/calculator2/Calculator;->isInverseToggleSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "Calculator_change_mode"

    .line 981
    iget-boolean v1, p0, Lcom/android/calculator2/Calculator;->manualOrientationChange:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 984
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->waitForWrites()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 970
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 972
    :try_start_4
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 974
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Impossible IO exception"

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected onStart()V
    .locals 4

    const-string v0, "Calculator"

    const-string v1, "Aaron: onStart()."

    .line 847
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "com.android.calculator2.CalculatorService"

    .line 852
    invoke-static {p0, v0}, Lcom/android/calculator2/SystemUtil;->isCalculatorServicesExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 853
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorService;->isInResultState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    .line 854
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isAlreadyAdd2DB:Z

    .line 855
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    .line 856
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCalculatorService:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorService;->getFormula()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calculator2/Calculator;->addChars(Ljava/lang/String;ZI)V

    .line 857
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calculator2/Calculator$8;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Calculator$8;-><init>(Lcom/android/calculator2/Calculator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 863
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->clearService()V

    .line 865
    iget v0, p0, Lcom/android/calculator2/Calculator;->currentDarkMode:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 872
    :cond_2
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    const-string p0, "Calculator"

    const-string v0, "aaron onCreate:case Configuration.UI_MODE_NIGHT_YES: 2"

    .line 873
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string p0, "Calculator"

    const-string v0, "aaron onStart: currentDarkMode  UI_MODE_NIGHT_NO2"

    .line 869
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public onStartDraggingOpen()V
    .locals 1

    .line 2124
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isPcMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->isStartFromSystemUI:Z

    if-nez v0, :cond_0

    const-string v0, "check_heistory_with_drag"

    .line 2126
    invoke-static {v0}, Lcom/android/calculator2/ZteTrackProxy;->sendEvent(Ljava/lang/String;)V

    .line 2127
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->showHistoryFragment()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "Calculator"

    const-string v1, "Aaron: onStop()."

    .line 989
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 991
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 993
    iput-object v0, p0, Lcom/android/calculator2/Calculator;->revealAnimator:Landroid/animation/Animator;

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 999
    iput-boolean v0, p0, Lcom/android/calculator2/Calculator;->isFloatCalculatorInResultState:Z

    return-void
.end method

.method public onTextSizeChanged(Landroid/widget/TextView;F)V
    .locals 10

    .line 1605
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INIT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v1, Lcom/android/calculator2/Calculator$CalculatorState;->INPUT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "Calculator"

    const-string v1, "do next animator."

    .line 1606
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p2

    .line 1616
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v1

    .line 1618
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    mul-float/2addr v1, v4

    .line 1620
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    .line 1621
    new-array v4, v4, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v9, 0x1

    aput v0, v7, v9

    .line 1622
    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v6, [F

    aput p2, v7, v8

    aput v0, v7, v9

    .line 1623
    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v4, v9

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v6, [F

    aput v2, v0, v8

    const/4 v2, 0x0

    aput v2, v0, v9

    .line 1624
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v4, v6

    const/4 p2, 0x3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    aput v1, v5, v8

    aput v2, v5, v9

    .line 1625
    invoke-static {p1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, p2

    .line 1621
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1626
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 p1, 0x10e0000

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1627
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1628
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1139
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1142
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1143
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method redisplayFormula()V
    .locals 12

    .line 1475
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1476
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mUnprocessedChars:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mUnprocessedColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 1481
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 1482
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-string v3, "Calculator"

    .line 1483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: formulaText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Calculator"

    .line 1484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aaron: formula = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cursorPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1486
    invoke-interface {v1, v4, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void

    .line 1489
    :cond_1
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mCurrentState:Lcom/android/calculator2/Calculator$CalculatorState;

    sget-object v5, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 1492
    :cond_2
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/android/calculator2/Evaluator;->getInitialIndexOfExpr(Landroid/content/Context;I)I

    move-result v3

    .line 1493
    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mEvaluator:Lcom/android/calculator2/Evaluator;

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    invoke-virtual {v5, p0, v6}, Lcom/android/calculator2/Evaluator;->getInsertedIndexOfExpr(Landroid/content/Context;I)I

    move-result v5

    .line 1494
    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    iget-object v7, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v7}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v4

    .line 1495
    :goto_0
    iget-object v7, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v7}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v9}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v9

    sub-int/2addr v7, v9

    const-string v9, "Calculator"

    .line 1496
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Aaron: mFormulaText.getText().length() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v11}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 1497
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Aaron: mFormulaText.getSelectionStart() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v11}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Calculator"

    .line 1498
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Aaron: prePos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", curPos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", flag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    .line 1502
    :try_start_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne v6, v2, :cond_5

    if-ne v3, v5, :cond_4

    .line 1503
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    if-lez v2, :cond_4

    .line 1504
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    sub-int/2addr v2, v8

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1505
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v0, v3, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_2

    :cond_4
    if-ge v3, v5, :cond_d

    .line 1506
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-gt v5, v2, :cond_d

    .line 1507
    invoke-interface {v1, v3, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_2

    .line 1509
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-le v3, v2, :cond_6

    .line 1510
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_2

    .line 1512
    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 1515
    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne v6, v2, :cond_a

    if-ne v3, v5, :cond_8

    .line 1516
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    if-lez v2, :cond_8

    .line 1517
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    sub-int/2addr v2, v8

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1518
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v9}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v0, v6, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_8
    if-le v3, v5, :cond_9

    .line 1521
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    add-int/2addr v3, v8

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1522
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v0, v3, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_2

    :cond_9
    if-ge v3, v5, :cond_d

    .line 1523
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-gt v5, v2, :cond_d

    .line 1524
    invoke-interface {v1, v3, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_2

    .line 1526
    :cond_a
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-le v6, v2, :cond_b

    .line 1527
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v5

    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 1528
    :cond_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v6, v2, :cond_d

    .line 1529
    iget-object v6, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v6}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int v8, v2, v8

    if-lt v6, v8, :cond_d

    if-ge v3, v5, :cond_c

    .line 1530
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int v6, v2, v6

    sub-int v8, v5, v3

    if-ne v6, v8, :cond_c

    .line 1531
    invoke-interface {v1, v3, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_2

    .line 1533
    :cond_c
    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v3}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorFormula;->getSelectionStart()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1539
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_2
    const-string v1, "Calculator"

    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formula.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSelection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v7

    if-lez v1, :cond_e

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int v4, v1, v7

    :cond_e
    const-string v1, "Calculator"

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: mFormulaText change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/CalculatorFormula;->changeTextTo(Ljava/lang/CharSequence;)V

    .line 1546
    :try_start_1
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-virtual {v1, v4}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1548
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1550
    :goto_3
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mFormulaText:Lcom/android/calculator2/CalculatorFormula;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f110046

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_f
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {v1, p0}, Lcom/android/calculator2/CalculatorFormula;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldCaptureView(Landroid/view/View;II)Z
    .locals 2

    .line 2146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00e4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    .line 2147
    invoke-virtual {v0}, Lcom/android/calculator2/DragLayout;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mDragLayout:Lcom/android/calculator2/DragLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/DragLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public whileDragging(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 2138
    iget-object p0, p0, Lcom/android/calculator2/Calculator;->mToolbar:Landroid/view/View;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 2139
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2140
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

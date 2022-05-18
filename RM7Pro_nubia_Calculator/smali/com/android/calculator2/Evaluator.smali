.class public Lcom/android/calculator2/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Lcom/android/calculator2/CalculatorExpr$ExprResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Evaluator$Callback;,
        Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;,
        Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;,
        Lcom/android/calculator2/Evaluator$SetWhenDoneListener;,
        Lcom/android/calculator2/Evaluator$AsyncReevaluator;,
        Lcom/android/calculator2/Evaluator$ReevalResult;,
        Lcom/android/calculator2/Evaluator$AsyncEvaluator;,
        Lcom/android/calculator2/Evaluator$InitialResult;,
        Lcom/android/calculator2/Evaluator$ExprInfo;,
        Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;,
        Lcom/android/calculator2/Evaluator$CharMetricsInfo;,
        Lcom/android/calculator2/Evaluator$EvaluationListener;
    }
.end annotation


# static fields
.field private static final ERRONEOUS_RESULT:Ljava/lang/String; = "ERR"

.field private static final EXP_COST:I = 0x3

.field private static final EXTRA_DIGITS:I = 0x14

.field private static final EXTRA_DIVISOR:I = 0x5

.field public static final HISTORY_MAIN_INDEX:J = -0x1L

.field private static final INIT_PREC:I = 0x32

.field public static final INVALID_MSD:I = 0x7fffffff

.field private static final KEY_PREF_DEGREE_MODE:Ljava/lang/String; = "degree_mode"

.field private static final KEY_PREF_MEMORY_INDEX:Ljava/lang/String; = "memory_index"

.field private static final KEY_PREF_SAVED_INDEX:Ljava/lang/String; = "saved_index"

.field private static final KEY_PREF_SAVED_NAME:Ljava/lang/String; = "saved_name"

.field public static final MAIN_INDEX:J = 0x0L

.field private static final MAX_EXP_CHARS:I = 0x8

.field private static final MAX_MSD_PREC_OFFSET:I = 0x44c

.field private static final MIN_DISPLAYED_DIGS:I = 0x5

.field private static final NON_MAIN_TIMEOUT:J = 0x2710L

.field private static final PRECOMPUTE_DIGITS:I = 0x1e

.field private static final PRECOMPUTE_DIVISOR:I = 0x5

.field private static final QUICK_MAX_RESULT_BITS:I = 0x3a98

.field private static final QUICK_TIMEOUT:J = 0x3e8L

.field private static final SHORT_TARGET_LENGTH:I = 0x8

.field private static final SHORT_TARGET_LENGTH_DELETE_RESULT:I = 0x12

.field private static final SHORT_UNCERTAIN_ZERO:Ljava/lang/String; = "0.00000\u2026"

.field private static final TAG:Ljava/lang/String; = "Evaluator"

.field public static final TIMEOUT_DIALOG_TAG:Ljava/lang/String; = "timeout"

.field private static evaluator:Lcom/android/calculator2/Evaluator;


# instance fields
.field private mCallback:Lcom/android/calculator2/Evaluator$Callback;

.field private mChangedValue:Z

.field private mContext:Landroid/content/Context;

.field private final mDummyCharMetricsInfo:Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;

.field private mExprDB:Lcom/android/calculator2/ExpressionDB;

.field private mExprs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/calculator2/Evaluator$ExprInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasTrigFuncs:Z

.field private mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

.field private mMemoryIndex:J

.field private mSavedIndex:J

.field private mSavedName:Ljava/lang/String;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private sRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;-><init>(Lcom/android/calculator2/Evaluator$1;)V

    iput-object v0, p0, Lcom/android/calculator2/Evaluator;->mDummyCharMetricsInfo:Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;

    .line 337
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 354
    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mContext:Landroid/content/Context;

    .line 355
    new-instance v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v1}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/Evaluator$ExprInfo;-><init>(Lcom/android/calculator2/CalculatorExpr;Z)V

    invoke-direct {p0, v0}, Lcom/android/calculator2/Evaluator;->setMainExpr(Lcom/android/calculator2/Evaluator$ExprInfo;)V

    const-string v0, "none"

    .line 356
    iput-object v0, p0, Lcom/android/calculator2/Evaluator;->mSavedName:Ljava/lang/String;

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Evaluator;->mTimeoutHandler:Landroid/os/Handler;

    .line 359
    new-instance v0, Lcom/android/calculator2/ExpressionDB;

    invoke-direct {v0, p1}, Lcom/android/calculator2/ExpressionDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    .line 361
    invoke-static {p1}, Lcom/android/calculator2/SystemUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 362
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "degree_mode"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    .line 363
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "saved_index"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 364
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "memory_index"

    invoke-interface {p1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 365
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->sRandom:Ljava/security/SecureRandom;

    cmp-long p1, v0, v3

    const-wide/16 v7, -0x1

    if-eqz p1, :cond_0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Evaluator;->setSavedIndexWhenEvaluated(J)V

    :cond_0
    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/calculator2/Evaluator;->setMemoryIndexWhenEvaluated(JZ)V

    .line 372
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "saved_name"

    const-string v1, "none"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mSavedName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calculator2/Evaluator;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/calculator2/Evaluator;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/calculator2/Evaluator;J)J
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/calculator2/Evaluator;J)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->setMemoryIndex(J)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/calculator2/Evaluator;J)J
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/android/calculator2/Evaluator;->mSavedIndex:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/calculator2/Evaluator;)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/calculator2/Evaluator;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator;->displayTimeoutMessage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calculator2/Evaluator;Z)J
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator;->getTimeout(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/android/calculator2/Evaluator;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/calculator2/Evaluator;Z)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator;->getMaxResultBits(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I
    .locals 0

    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/android/calculator2/Evaluator;->getPreferredPrec(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/calculator2/Evaluator;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator;->displayCancelledMessage()V

    return-void
.end method

.method private add10pow(Landroid/content/Context;I)V
    .locals 2

    .line 1995
    new-instance v0, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v0}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    const v1, 0x7f0a00a3

    .line 1996
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->add(Landroid/content/Context;II)Z

    const v1, 0x7f0a00a5

    .line 1997
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->add(Landroid/content/Context;II)Z

    const/4 v1, 0x1

    .line 1998
    iput-boolean v1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1999
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    .line 2000
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    const v0, 0x7f0a0154

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->add(Landroid/content/Context;II)Z

    return-void
.end method

.method private addToDB(ZLcom/android/calculator2/Evaluator$ExprInfo;)J
    .locals 7

    .line 1658
    iget-object v0, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->toBytes()[B

    move-result-object v2

    .line 1659
    new-instance v0, Lcom/android/calculator2/ExpressionDB$RowData;

    iget-boolean v3, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    iget-boolean v4, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/calculator2/ExpressionDB$RowData;-><init>([BZZJ)V

    .line 1661
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/android/calculator2/ExpressionDB;->addRow(ZLcom/android/calculator2/ExpressionDB$RowData;)J

    move-result-wide v1

    .line 1662
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1666
    iget-wide v3, v0, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    iput-wide v3, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mTimeStamp:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 1670
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v1

    .line 1668
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should not store main expression"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1663
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "result slot already occupied! + Slot = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z
    .locals 3

    .line 1437
    iget-object v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    .line 1438
    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    instance-of p2, p2, Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    if-eqz p2, :cond_0

    .line 1439
    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    check-cast p2, Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    invoke-static {p2}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->access$1000(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V

    .line 1442
    :cond_0
    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1443
    iget-object p0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1444
    iget p0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    iput p0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    .line 1447
    iput-object v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    goto :goto_0

    .line 1449
    :cond_1
    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    invoke-virtual {p2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1450
    iget-object p2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    if-ne p1, p2, :cond_2

    .line 1454
    iget-object p2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v2, v2, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorExpr;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr;

    iput-object v2, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 1457
    iput-boolean v1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1459
    :cond_2
    iput-object v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private clearMainCache()V
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    iput v2, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    .line 1299
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    return-void
.end method

.method private copy(JZ)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 1

    .line 1597
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1598
    new-instance p1, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorExpr;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorExpr;

    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    invoke-direct {p1, p2, v0}, Lcom/android/calculator2/Evaluator$ExprInfo;-><init>(Lcom/android/calculator2/CalculatorExpr;Z)V

    if-eqz p3, :cond_0

    .line 1603
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p3, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1604
    iget-object p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 1605
    iget p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    iput p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    iput p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    .line 1606
    iget p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    iput p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    .line 1608
    :cond_0
    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    iput-boolean p0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    return-object p1
.end method

.method private copyToSaved(J)Z
    .locals 4

    .line 1888
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1889
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const-string v2, "ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Evaluator"

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aaron: copyToSaved(), index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->isMutableIndex(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/calculator2/Evaluator;->preserve(JZ)J

    move-result-wide p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->setSavedIndex(J)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "Evaluator"

    const-string p1, "Aaron: copyToSaved(), return false."

    .line 1890
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static destroyInstance()V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 117
    sput-object v0, Lcom/android/calculator2/Evaluator;->evaluator:Lcom/android/calculator2/Evaluator;

    return-void
.end method

.method private difference(JJ)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 6

    const v5, 0x7f0a0158

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1630
    invoke-direct/range {v0 .. v5}, Lcom/android/calculator2/Evaluator;->generalized_sum(JJI)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    return-object p0
.end method

.method private displayCancelledMessage()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    if-eqz v0, :cond_0

    .line 443
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    const v0, 0x7f110027

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v2, v1}, Lcom/android/calculator2/Evaluator$Callback;->showMessageDialog(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private displayTimeoutMessage(Z)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    if-eqz v0, :cond_1

    .line 494
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    const v0, 0x7f110067

    const v1, 0x7f1100e4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f1100b5

    :goto_0
    const-string v2, "timeout"

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/calculator2/Evaluator$Callback;->showMessageDialog(IIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ensureCachePrec(JILcom/android/calculator2/Evaluator$EvaluationListener;)V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 816
    iget-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    if-ge v1, p3, :cond_1

    :cond_0
    iget v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    if-lt v1, p3, :cond_2

    :cond_1
    return-void

    .line 818
    :cond_2
    iget-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 820
    iget-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 821
    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    .line 823
    :cond_3
    new-instance v1, Lcom/android/calculator2/Evaluator$AsyncReevaluator;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/calculator2/Evaluator$AsyncReevaluator;-><init>(Lcom/android/calculator2/Evaluator;JLcom/android/calculator2/Evaluator$EvaluationListener;)V

    .line 824
    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    add-int/lit8 p3, p3, 0x1e

    .line 825
    iput p3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    .line 826
    iget-object p0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 827
    iget p0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    iget p1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    div-int/lit8 p1, p1, 0x5

    add-int/2addr p0, p1

    iput p0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    .line 829
    :cond_4
    new-array p0, v2, [Ljava/lang/Integer;

    const/4 p1, 0x0

    iget p2, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-virtual {v1, p0}, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 6

    .line 2011
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_3

    .line 2018
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {v1, p1, p2}, Lcom/android/calculator2/ExpressionDB;->getRow(J)Lcom/android/calculator2/ExpressionDB$RowData;

    move-result-object v1

    .line 2019
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v1, Lcom/android/calculator2/ExpressionDB$RowData;->mExpression:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2022
    :try_start_0
    new-instance v3, Lcom/android/calculator2/Evaluator$ExprInfo;

    new-instance v4, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v4, v2}, Lcom/android/calculator2/CalculatorExpr;-><init>(Ljava/io/DataInput;)V

    invoke-virtual {v1}, Lcom/android/calculator2/ExpressionDB$RowData;->degreeMode()Z

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/android/calculator2/Evaluator$ExprInfo;-><init>(Lcom/android/calculator2/CalculatorExpr;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2023
    :try_start_1
    iget-wide v4, v1, Lcom/android/calculator2/ExpressionDB$RowData;->mTimeStamp:J

    iput-wide v4, v3, Lcom/android/calculator2/Evaluator$ExprInfo;->mTimeStamp:J

    .line 2024
    invoke-virtual {v1}, Lcom/android/calculator2/ExpressionDB$RowData;->longTimeout()Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_0
    const-string v0, "Evaluator"

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception without real IO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 2031
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    goto :goto_2

    :cond_1
    move-object p0, v0

    :goto_2
    if-nez p0, :cond_2

    move-object p0, v3

    :cond_2
    return-object p0

    .line 2016
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Main expression should be cached"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private evaluateResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;Z)V
    .locals 12

    move-object v8, p0

    .line 1327
    iget-object v0, v8, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/calculator2/Evaluator$ExprInfo;

    const-wide/16 v0, 0x0

    cmp-long v10, p1, v0

    if-nez v10, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator;->clearMainCache()V

    .line 1331
    :cond_0
    new-instance v11, Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    iget-boolean v6, v9, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;-><init>(Lcom/android/calculator2/Evaluator;JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;ZZ)V

    .line 1332
    iput-object v11, v9, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    .line 1333
    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {v11, v1}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-nez v10, :cond_1

    .line 1335
    iput-boolean v0, v8, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    :cond_1
    return-void
.end method

.method public static exponentEnd(Ljava/lang/String;I)I
    .locals 4

    .line 2091
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_6

    .line 2092
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2096
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    const v3, 0x7f0a0158

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eq v1, v0, :cond_5

    .line 2099
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-ge v1, v0, :cond_4

    .line 2103
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0x8

    if-le v1, v2, :cond_3

    return p1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return p1

    :cond_6
    :goto_1
    return p1
.end method

.method private generalized_sum(JJI)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 2

    .line 1636
    new-instance p5, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {p5}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    .line 1637
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getCollapsedExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v0

    .line 1638
    invoke-direct {p0, p3, p4}, Lcom/android/calculator2/Evaluator;->getCollapsedExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 1642
    :cond_0
    invoke-virtual {p5, v0}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    .line 1644
    invoke-virtual {p5, v1}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    .line 1645
    new-instance v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p5, v1}, Lcom/android/calculator2/Evaluator$ExprInfo;-><init>(Lcom/android/calculator2/CalculatorExpr;Z)V

    .line 1646
    iget-object p5, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1647
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCollapsedExpr(J)Lcom/android/calculator2/CalculatorExpr;
    .locals 3

    .line 1721
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->isMutableIndex(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->preserve(JZ)J

    move-result-wide p1

    .line 1722
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1723
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const-string v1, "ERR"

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    .line 1731
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1732
    iget-object v2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/UnifiedReal;

    invoke-static {v2, v0, v1}, Lcom/android/calculator2/Evaluator;->getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I

    move-result v1

    .line 1733
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 1734
    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/calculator2/Evaluator;->getShortString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1733
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorExpr;->abbreviate(JLjava/lang/String;)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDeleteResultShortString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x2e

    .line 1030
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    move v1, v3

    :cond_0
    if-ne v1, v3, :cond_1

    const-string v2, "-"

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 1035
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    sub-int/2addr v4, v5

    const v6, 0x7fffffff

    if-lt p2, v4, :cond_2

    move p2, v6

    :cond_2
    if-ne p2, v6, :cond_4

    const/16 p2, 0x32

    if-ge p3, p2, :cond_3

    const-string p0, "0"

    return-object p0

    .line 1042
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v4, -0x1

    if-ge p3, v4, :cond_5

    sub-int v7, v0, p2

    add-int/2addr v7, v1

    if-gt v7, v5, :cond_5

    const/16 v7, -0xa

    if-lt p3, v7, :cond_5

    move p3, v4

    :cond_5
    if-le p2, v0, :cond_7

    add-int/lit8 v7, v0, 0x3

    add-int/2addr v7, v3

    if-gt p2, v7, :cond_6

    add-int/lit8 p2, v0, -0x1

    goto :goto_1

    :cond_6
    rsub-int/lit8 v7, v1, 0x12

    add-int/lit8 v7, v7, -0x2

    if-gt p3, v7, :cond_7

    const/4 v7, 0x7

    if-gt p3, v7, :cond_7

    add-int/lit8 p2, v0, -0x1

    :cond_7
    :goto_1
    sub-int v7, v0, p2

    if-lez v7, :cond_8

    add-int/lit8 v7, v7, -0x1

    :cond_8
    if-eq p3, v6, :cond_a

    add-int v6, v0, p3

    sub-int v8, v6, p2

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    if-gt v8, v5, :cond_9

    if-le v0, p2, :cond_9

    if-lt p3, v4, :cond_9

    .line 1076
    invoke-static {p1, p2, v0}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    add-int/2addr v6, v3

    .line 1077
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 p3, 0xf

    if-gt v8, p3, :cond_a

    .line 1081
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p2, v5

    .line 1082
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-le v0, p2, :cond_b

    add-int/lit8 p3, p2, 0x12

    sub-int/2addr p3, v1

    sub-int/2addr p3, v3

    if-ge v0, p3, :cond_b

    .line 1091
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1093
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-lez v7, :cond_c

    .line 1101
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p2, v5

    .line 1103
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x2

    .line 1102
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1106
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p2, v5

    .line 1108
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x3

    .line 1107
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator;->reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calculator2/Evaluator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Evaluator"

    const-string v1, "Aaron: enter getInstance()."

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/android/calculator2/Evaluator;->evaluator:Lcom/android/calculator2/Evaluator;

    if-nez v0, :cond_0

    const-string v0, "Evaluator"

    const-string v1, "Aaron: evaluator is null."

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/Evaluator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calculator2/Evaluator;->evaluator:Lcom/android/calculator2/Evaluator;

    :cond_0
    const-string p0, "Evaluator"

    const-string v0, "Aaron: evaluator constructed."

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object p0, Lcom/android/calculator2/Evaluator;->evaluator:Lcom/android/calculator2/Evaluator;

    return-object p0
.end method

.method static getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I
    .locals 2

    if-eqz p0, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->digitsRequired()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    :goto_0
    add-int v0, p2, p0

    if-lez v0, :cond_1

    .line 846
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method private getMaxResultBits(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x11170

    goto :goto_0

    :cond_0
    const/16 p0, 0x5dc0

    :goto_0
    return p0
.end method

.method private getMsdIndex(J)I
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1189
    iget p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_1

    .line 1191
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    iget p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    if-ne p1, p2, :cond_0

    .line 1192
    iget p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    .line 1194
    :cond_0
    iget p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    return p0

    .line 1198
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return p2

    .line 1206
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1207
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    :cond_3
    return p2

    :catch_0
    return p2
.end method

.method public static getMsdIndexOf(Ljava/lang/String;)I
    .locals 4

    .line 1165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_2

    .line 1174
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x31

    if-eq p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const p0, 0x7fffffff

    return p0
.end method

.method private static getPreferredPrec(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I
    .locals 6

    .line 867
    invoke-interface {p3}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->getMaxChars()I

    move-result v0

    const/16 v1, 0x2e

    .line 868
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 869
    invoke-interface {p3, p0, v1}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->separatorChars(Ljava/lang/String;I)F

    move-result v2

    .line 870
    invoke-interface {p3}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->getNoEllipsisCredit()F

    move-result v3

    sub-float/2addr v2, v3

    .line 871
    invoke-interface {p3}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->getDecimalCredit()F

    move-result p3

    sub-float p3, v2, p3

    const/4 v3, 0x0

    .line 872
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 873
    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p3, v3

    const/4 v3, 0x0

    .line 874
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v4, 0x1

    const/16 v5, 0x2d

    if-ne p0, v5, :cond_0

    move v3, v4

    :cond_0
    const/4 p0, -0x1

    if-nez p2, :cond_1

    move p2, p0

    :cond_1
    const v5, 0x7fffffff

    if-eq p2, v5, :cond_3

    sub-int v5, v0, v2

    if-gt v1, v5, :cond_2

    if-gtz p2, :cond_2

    return p0

    :cond_2
    if-ltz p2, :cond_3

    add-int p0, v1, p2

    add-int/2addr p0, v4

    sub-int v5, v0, p3

    if-gt p0, v5, :cond_3

    return p2

    :cond_3
    if-le p1, v1, :cond_4

    add-int/lit8 p0, v1, 0x3

    add-int/2addr p0, v4

    if-gt p1, p0, :cond_4

    add-int/lit8 p1, v1, -0x1

    :cond_4
    const/16 p0, 0x3a98

    if-le p1, p0, :cond_5

    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_5
    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v4

    sub-int p0, v0, v2

    if-gt v1, p0, :cond_7

    sub-int/2addr v0, p3

    if-ge v1, v0, :cond_6

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_6
    sub-int/2addr p1, v2

    :cond_7
    :goto_0
    return p1
.end method

.method private getResultExpr(J)Lcom/android/calculator2/CalculatorExpr;
    .locals 4

    .line 1738
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->isMutableIndex(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->preserve(JZ)J

    move-result-wide p1

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1740
    iget-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const-string v2, "ERR"

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2e

    .line 1748
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1749
    iget-object v3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/UnifiedReal;

    invoke-static {v3, v1, v2}, Lcom/android/calculator2/Evaluator;->getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I

    move-result v2

    .line 1750
    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 1751
    invoke-static {v1}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/calculator2/Evaluator;->getDeleteResultShortString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 1750
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/calculator2/CalculatorExpr;->abbreviate(JLjava/lang/String;)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getShortString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x2e

    .line 939
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 940
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    move v1, v3

    :cond_0
    if-ne v1, v3, :cond_1

    const-string v2, "-"

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 944
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    const v6, 0x7fffffff

    if-lt p1, v4, :cond_2

    move p1, v6

    :cond_2
    if-ne p1, v6, :cond_4

    const/16 p0, 0x32

    if-ge p2, p0, :cond_3

    const-string p0, "0"

    return-object p0

    :cond_3
    const-string p0, "0.00000\u2026"

    return-object p0

    :cond_4
    const/4 v4, -0x1

    if-ge p2, v4, :cond_5

    sub-int v7, v0, p1

    add-int/2addr v7, v1

    if-gt v7, v5, :cond_5

    const/16 v7, -0xa

    if-lt p2, v7, :cond_5

    move p2, v4

    :cond_5
    if-le p1, v0, :cond_7

    add-int/lit8 v7, v0, 0x3

    add-int/2addr v7, v3

    if-gt p1, v7, :cond_6

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    rsub-int/lit8 v7, v1, 0x8

    add-int/lit8 v7, v7, -0x2

    if-gt p2, v7, :cond_7

    const/4 v7, 0x7

    if-gt p2, v7, :cond_7

    add-int/lit8 p1, v0, -0x1

    :cond_7
    :goto_1
    sub-int v7, v0, p1

    if-lez v7, :cond_8

    add-int/lit8 v7, v7, -0x1

    :cond_8
    if-eq p2, v6, :cond_b

    add-int v6, v0, p2

    sub-int v8, v6, p1

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    if-gt v8, v5, :cond_9

    if-le v0, p1, :cond_9

    if-lt p2, v4, :cond_9

    .line 984
    invoke-static {p0, p1, v0}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 985
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v3

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p2, 0x5

    if-gt v8, p2, :cond_b

    .line 988
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v6, p2, :cond_a

    if-ltz p1, :cond_a

    if-lt v6, p1, :cond_a

    .line 989
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v3

    add-int/2addr v6, v3

    .line 990
    invoke-virtual {p0, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "E"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 992
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ".E"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-le v0, p1, :cond_c

    add-int/lit8 p2, p1, 0x8

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    if-ge v0, p2, :cond_c

    .line 999
    invoke-static {p0, p1, v0}, Lcom/android/calculator2/StringUtils;->addCommas(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1005
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v5

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x4

    .line 1006
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "E"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeout(Z)J
    .locals 0

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0xc8

    :goto_0
    return-wide p0
.end method

.method private isMutableIndex(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

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

.method private setMainExpr(Lcom/android/calculator2/Evaluator$ExprInfo;)V
    .locals 2

    .line 349
    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 350
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMemoryIndex(J)V
    .locals 2

    .line 1846
    iput-wide p1, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    .line 1847
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "memory_index"

    .line 1848
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1849
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1851
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    if-eqz p1, :cond_0

    .line 1852
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    invoke-interface {p0}, Lcom/android/calculator2/Evaluator$Callback;->onMemoryStateChanged()V

    :cond_0
    return-void
.end method

.method private setSavedIndex(J)V
    .locals 3

    const-string v0, "Evaluator"

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: setSavedIndex(), index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iput-wide p1, p0, Lcom/android/calculator2/Evaluator;->mSavedIndex:J

    .line 1862
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "saved_index"

    .line 1863
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1864
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sum(JJ)Lcom/android/calculator2/Evaluator$ExprInfo;
    .locals 6

    const v5, 0x7f0a014f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1621
    invoke-direct/range {v0 .. v5}, Lcom/android/calculator2/Evaluator;->generalized_sum(JJI)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    return-object p0
.end method

.method public static unflipZeroes(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    return-object p2

    .line 719
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 720
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_1

    return-object p2

    .line 723
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, p1

    add-int/lit8 p1, v0, -0x1

    sub-int/2addr p1, p3

    .line 726
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x30

    if-eq p1, v2, :cond_2

    return-object p2

    :cond_2
    sub-int/2addr v0, p3

    .line 731
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3}, Lcom/android/calculator2/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Lcom/android/calculator2/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 732
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "New approximation invalidates old one!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private uriForSaved()Landroid/net/Uri;
    .locals 2

    .line 1947
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mSavedName:Ljava/lang/String;

    .line 1948
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1949
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addExponent(Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 2124
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0a0158

    if-ne v1, v3, :cond_0

    const/4 v1, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-ge p2, p3, :cond_1

    mul-int/lit8 v2, v2, 0xa

    .line 2129
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2131
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    mul-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/calculator2/CalculatorExpr;->addExponent(I)V

    .line 2132
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    return-void
.end method

.method public addToMemory(J)V
    .locals 2

    .line 1911
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/calculator2/Evaluator;->sum(JJ)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1913
    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/Evaluator;->addToDB(ZLcom/android/calculator2/Evaluator$ExprInfo;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 1914
    iput-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    const/4 v0, 0x1

    .line 1915
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->setMemoryIndexWhenEvaluated(JZ)V

    :cond_0
    return-void
.end method

.method public append(Landroid/content/Context;IIZ)Z
    .locals 3

    const-string v0, "Calculator"

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluator append flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v1, 0x7f0a00cf

    if-ne p2, v1, :cond_0

    .line 1541
    invoke-direct {p0, p1, p3}, Lcom/android/calculator2/Evaluator;->add10pow(Landroid/content/Context;I)V

    return v0

    .line 1544
    :cond_0
    iget-boolean v1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    move p4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v0

    :goto_1
    iput-boolean p4, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1545
    iget-object p4, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p4, p4, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/calculator2/CalculatorExpr;->add(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1546
    iget-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    if-nez p1, :cond_3

    .line 1547
    invoke-static {p2}, Lcom/android/calculator2/KeyMaps;->isTrigFunc(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public appendExpr(J)V
    .locals 3

    .line 1981
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v1, 0x1

    .line 1982
    iput-boolean v1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1983
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v2, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    or-int/2addr v0, v2

    iput-boolean v0, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 1984
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getCollapsedExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1986
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    :cond_0
    return-void
.end method

.method public cancel(JZ)Z
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Evaluator$ExprInfo;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1477
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/calculator2/Evaluator;->cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z

    move-result p0

    return p0
.end method

.method public cancelAll(Z)V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1485
    invoke-direct {p0, v1, p1}, Lcom/android/calculator2/Evaluator;->cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelNonMain()V
    .locals 3

    .line 1496
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 1497
    iget-object v2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    .line 1498
    invoke-direct {p0, v1, v2}, Lcom/android/calculator2/Evaluator;->cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public capture(J)Landroid/net/Uri;
    .locals 3

    const-string v0, "Evaluator"

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: call capture(), index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->copyToSaved(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1961
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 1962
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1964
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 1965
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculator2.android.com,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->sRandom:Ljava/security/SecureRandom;

    .line 1966
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mSavedName:Ljava/lang/String;

    .line 1967
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "saved_name"

    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mSavedName:Ljava/lang/String;

    .line 1968
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1969
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1970
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator;->uriForSaved()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public clearEverything()V
    .locals 3

    .line 1310
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    const/4 v1, 0x1

    .line 1311
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Evaluator;->cancelAll(Z)V

    const-wide/16 v1, 0x0

    .line 1312
    invoke-direct {p0, v1, v2}, Lcom/android/calculator2/Evaluator;->setSavedIndex(J)V

    .line 1313
    invoke-direct {p0, v1, v2}, Lcom/android/calculator2/Evaluator;->setMemoryIndex(J)V

    .line 1314
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {v1}, Lcom/android/calculator2/ExpressionDB;->eraseAll()V

    .line 1315
    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1316
    new-instance v1, Lcom/android/calculator2/Evaluator$ExprInfo;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v2}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/android/calculator2/Evaluator$ExprInfo;-><init>(Lcom/android/calculator2/CalculatorExpr;Z)V

    invoke-direct {p0, v1}, Lcom/android/calculator2/Evaluator;->setMainExpr(Lcom/android/calculator2/Evaluator$ExprInfo;)V

    return-void
.end method

.method public clearMain()V
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr;->clear()V

    const/4 v0, 0x0

    .line 1304
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    .line 1305
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator;->clearMainCache()V

    .line 1306
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    return-void
.end method

.method public collapse(J)V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 1764
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getCollapsedExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    .line 1765
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    if-eqz p1, :cond_0

    .line 1767
    iget-object p2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p2, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p2, p1}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    .line 1768
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-boolean v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    const/4 p1, 0x1

    .line 1769
    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    const/4 p1, 0x0

    .line 1770
    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    return-void
.end method

.method public collapseForResultDelete(J)V
    .locals 2

    .line 1774
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 1775
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getResultExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    .line 1776
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->clearMain()V

    if-eqz p1, :cond_0

    .line 1778
    iget-object p2, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p2, p2, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p2, p1}, Lcom/android/calculator2/CalculatorExpr;->append(Lcom/android/calculator2/CalculatorExpr;)V

    .line 1779
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-boolean v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    const/4 p1, 0x1

    .line 1780
    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    const/4 p1, 0x0

    .line 1781
    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    return-void
.end method

.method public copyMainToHistory()V
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    .line 1708
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/calculator2/Evaluator;->cancel(JZ)Z

    const-wide/16 v3, 0x0

    .line 1709
    invoke-direct {p0, v3, v4, v0}, Lcom/android/calculator2/Evaluator;->copy(JZ)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object v0

    .line 1710
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public copyToMemory(J)V
    .locals 1

    .line 1903
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->isMutableIndex(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->preserve(JZ)J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->setMemoryIndex(J)V

    return-void
.end method

.method public delete(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 1571
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1572
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calculator2/CalculatorExpr;->delete(Landroid/content/Context;ZI)V

    .line 1573
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 1576
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->hasTrigFuncs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    return-void
.end method

.method public destroyEvaluator()V
    .locals 0

    .line 2180
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->close()V

    .line 2182
    invoke-static {}, Lcom/android/calculator2/Evaluator;->destroyInstance()V

    return-void
.end method

.method public evaluateAndNotify(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V
    .locals 8

    .line 1362
    invoke-interface {p4}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->getMaxChars()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1366
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object v0

    .line 1367
    iget-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "ERR"

    iget-object v2, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    if-nez v1, :cond_2

    :cond_1
    const-wide/16 v3, 0x0

    .line 1370
    iget-object v5, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    move-object v2, p0

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/calculator2/Evaluator;->notifyImmediately(JLcom/android/calculator2/Evaluator$ExprInfo;Lcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    return-void

    .line 1372
    :cond_2
    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "Evaluator"

    const-string v1, "evaluateResult()."

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 1377
    invoke-direct/range {v2 .. v7}, Lcom/android/calculator2/Evaluator;->evaluateResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;Z)V

    return-void
.end method

.method public evaluationInProgress(J)Z
    .locals 0

    .line 1427
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    if-eqz p0, :cond_0

    .line 1428
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDegreeMode(J)Z
    .locals 0

    .line 2051
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    return p0
.end method

.method public getExpr(J)Lcom/android/calculator2/CalculatorExpr;
    .locals 0

    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    return-object p0
.end method

.method public getExprAsSpannable(J)Landroid/text/Spannable;
    .locals 0

    .line 2145
    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p1

    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorExpr;->toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getExprAsString(J)Ljava/lang/String;
    .locals 0

    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getExprAsSpannable(J)Landroid/text/Spannable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialIndexOfExpr(Landroid/content/Context;I)I
    .locals 0

    .line 1557
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->getInitIndexOfExpr(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getInsertedIndexOfExpr(Landroid/content/Context;I)I
    .locals 0

    .line 1560
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->getInsertedIndexOfExpr(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getMaxIndex()J
    .locals 2

    .line 394
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->getMaxIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryIndex()J
    .locals 2

    .line 1943
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    return-wide v0
.end method

.method public getMinIndex()J
    .locals 2

    .line 383
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->getMinIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult(J)Lcom/android/calculator2/UnifiedReal;
    .locals 0

    .line 2056
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/UnifiedReal;

    return-object p0
.end method

.method public getSavedIndex()J
    .locals 2

    .line 1936
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mSavedIndex:J

    return-wide v0
.end method

.method public getString(J[III[Z[ZLcom/android/calculator2/Evaluator$EvaluationListener;)Ljava/lang/String;
    .locals 6

    .line 1241
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    if-nez v0, :cond_0

    const-string p0, " "

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 1243
    aget v2, p3, v1

    .line 1245
    iget-object v3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x14

    .line 1246
    invoke-direct {p0, p1, p2, v2, p8}, Lcom/android/calculator2/Evaluator;->ensureCachePrec(JILcom/android/calculator2/Evaluator$EvaluationListener;)V

    const-string p0, " "

    return-object p0

    :cond_1
    add-int/lit8 v3, v2, 0x14

    .line 1251
    iget-object v4, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    invoke-direct {p0, p1, p2, v3, p8}, Lcom/android/calculator2/Evaluator;->ensureCachePrec(JILcom/android/calculator2/Evaluator$EvaluationListener;)V

    .line 1255
    iget-object p8, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p8

    .line 1256
    iget-object v3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v1

    .line 1257
    :goto_0
    aput-boolean v3, p7, v1

    .line 1260
    iget p7, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    sub-int p7, p8, p7

    if-eqz v3, :cond_3

    add-int/lit8 p7, p7, -0x1

    :cond_3
    rsub-int/lit8 p7, p7, 0x5

    const/4 v3, -0x1

    .line 1265
    invoke-static {p7, v3}, Ljava/lang/Math;->min(II)I

    move-result p7

    .line 1266
    invoke-static {v2, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    invoke-static {p7, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 1268
    aput p4, p3, v1

    .line 1269
    iget p3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    sub-int/2addr p3, p4

    if-gez p3, :cond_4

    .line 1273
    iget p3, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    sub-int/2addr p4, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    move p4, p3

    move p3, v1

    goto :goto_1

    :cond_4
    move p4, v1

    :goto_1
    sub-int/2addr p8, p3

    if-ge p8, v5, :cond_5

    const-string p0, " "

    return-object p0

    :cond_5
    add-int p3, p8, p4

    sub-int/2addr p3, p5

    .line 1279
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getMsdIndex(J)I

    move-result p0

    if-le p3, p0, :cond_6

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    aput-boolean v5, p6, v1

    .line 1281
    iget-object p0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {p0, p3, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-lez p4, :cond_7

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-static {p0, p4}, Lcom/android/calculator2/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public getTimeStamp(J)J
    .locals 0

    .line 2046
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mTimeStamp:J

    return-wide p0
.end method

.method public hasResult(J)Z
    .locals 0

    .line 1419
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p0

    .line 1420
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTrigFuncs()Z
    .locals 0

    .line 2075
    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z

    return p0
.end method

.method public historyAsString()Ljava/lang/String;
    .locals 8

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2156
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMinIndex()J

    move-result-wide v1

    :goto_0
    const-wide/16 v3, -0xa

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x1

    if-gez v3, :cond_0

    .line 2157
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExprAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v1, v4

    goto :goto_0

    :cond_0
    move-wide v1, v4

    .line 2159
    :goto_1
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gez v3, :cond_1

    .line 2160
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/android/calculator2/Evaluator;->getExprAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v1, v4

    goto :goto_1

    :cond_1
    const-string v1, "Memory index = "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMemoryIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Saved index = "

    .line 2163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getSavedIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLastSaved(Landroid/net/Uri;)Z
    .locals 4

    .line 1974
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mSavedIndex:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calculator2/Evaluator;->uriForSaved()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyImmediately(JLcom/android/calculator2/Evaluator$ExprInfo;Lcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V
    .locals 10

    const-string v0, "Evaluator"

    const-string v1, "notifyImmediately()."

    .line 1344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p3, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1346
    iget-object v1, p3, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1347
    iget-object v1, p3, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/UnifiedReal;

    iget-object v2, p3, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/calculator2/Evaluator;->getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I

    move-result v8

    .line 1348
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->getMsdIndex(J)I

    move-result v7

    .line 1349
    iget-object p0, p3, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-static {p0, v7, v8, p5}, Lcom/android/calculator2/Evaluator;->getPreferredPrec(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I

    move-result v6

    move-object v3, p4

    move-wide v4, p1

    .line 1351
    invoke-interface/range {v3 .. v9}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onEvaluate(JIIILjava/lang/String;)V

    return-void
.end method

.method public preserve(JZ)J
    .locals 1

    const/4 v0, 0x1

    .line 1682
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->copy(JZ)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p1

    .line 1683
    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const-string v0, "ERR"

    if-eq p2, v0, :cond_0

    .line 1686
    invoke-direct {p0, p3, p1}, Lcom/android/calculator2/Evaluator;->addToDB(ZLcom/android/calculator2/Evaluator$ExprInfo;)J

    move-result-wide p0

    return-wide p0

    .line 1684
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Preserving unevaluated expression"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public putResultIfAbsent(JLcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 0

    .line 2061
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 2062
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p3

    .line 2066
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/UnifiedReal;

    return-object p0
.end method

.method public reformResultFormula(Landroid/content/Context;)V
    .locals 0

    .line 1564
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorExpr;->reformResultFormula(Landroid/content/Context;)V

    return-void
.end method

.method public reformatResultfunc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, "."

    .line 1119
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "\\."

    .line 1120
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1121
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const-string p1, ""

    const/4 v0, 0x1

    .line 1125
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 1126
    aget-object v3, p0, v0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1127
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1128
    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v3

    const v4, 0x7f0a007e

    if-ne v3, v4, :cond_0

    .line 1129
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

    .line 1137
    aget-object p1, p0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_2
    if-lez p1, :cond_3

    .line 1138
    aget-object v4, p0, v0

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 1139
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1141
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

    .line 1148
    aget-object p0, p0, v2

    goto :goto_4

    .line 1150
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
    const/4 p0, 0x0

    :goto_4
    move-object p1, p0

    :cond_6
    return-object p1
.end method

.method public represerve()V
    .locals 2

    .line 1694
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v0

    .line 1699
    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    return-void
.end method

.method public requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V
    .locals 11

    .line 1388
    invoke-interface {p4}, Lcom/android/calculator2/Evaluator$CharMetricsInfo;->getMaxChars()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1391
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/Evaluator;->ensureExprIsCached(J)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object v4

    .line 1392
    iget-object v0, v4, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ERR"

    .line 1406
    iget-object v2, v4, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    invoke-direct {p0, v4, v1}, Lcom/android/calculator2/Evaluator;->cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z

    const/4 v10, 0x1

    move-object v5, p0

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    .line 1409
    invoke-direct/range {v5 .. v10}, Lcom/android/calculator2/Evaluator;->evaluateResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;Z)V

    goto :goto_1

    :cond_1
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    .line 1411
    invoke-virtual/range {v1 .. v6}, Lcom/android/calculator2/Evaluator;->notifyImmediately(JLcom/android/calculator2/Evaluator$ExprInfo;Lcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 1397
    invoke-interface {p3, p1, p2}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onCancelled(J)V

    goto :goto_1

    .line 1398
    :cond_3
    iget-object v0, v4, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    instance-of v0, v0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    check-cast v0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1403
    :cond_4
    invoke-direct {p0, v4, v1}, Lcom/android/calculator2/Evaluator;->cancel(Lcom/android/calculator2/Evaluator$ExprInfo;Z)Z

    const/4 v10, 0x1

    move-object v5, p0

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    .line 1404
    invoke-direct/range {v5 .. v10}, Lcom/android/calculator2/Evaluator;->evaluateResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;Z)V

    :goto_1
    return-void

    .line 1389
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "requireResult called too early"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public restoreInstanceState(Ljava/io/DataInput;)V
    .locals 2

    const/4 v0, 0x1

    .line 1507
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    .line 1510
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 1511
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v1, p1}, Lcom/android/calculator2/CalculatorExpr;-><init>(Ljava/io/DataInput;)V

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 1512
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->hasTrigFuncs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/calculator2/Evaluator;->mHasTrigFuncs:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Calculator"

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while restoring:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public saveInstanceState(Ljava/io/DataOutput;)V
    .locals 2

    .line 1523
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 1525
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorExpr;->write(Ljava/io/DataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Calculator"

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while saving state:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/android/calculator2/Evaluator$Callback;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/calculator2/Evaluator;->mCallback:Lcom/android/calculator2/Evaluator$Callback;

    return-void
.end method

.method public setDegreeMode(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1583
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    .line 1584
    iget-object v0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-boolean p1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    .line 1586
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "degree_mode"

    .line 1587
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1588
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLongTimeout()V
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mMainExpr:Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    return-void
.end method

.method setMemoryIndexWhenEvaluated(JZ)V
    .locals 1

    .line 1872
    new-instance v0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;-><init>(Lcom/android/calculator2/Evaluator;JZ)V

    iget-object p3, p0, Lcom/android/calculator2/Evaluator;->mDummyCharMetricsInfo:Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    return-void
.end method

.method setSavedIndexWhenEvaluated(J)V
    .locals 2

    .line 1880
    new-instance v0, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calculator2/Evaluator$SetSavedWhenDoneListener;-><init>(Lcom/android/calculator2/Evaluator;J)V

    iget-object v1, p0, Lcom/android/calculator2/Evaluator;->mDummyCharMetricsInfo:Lcom/android/calculator2/Evaluator$DummyCharMetricsInfo;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/calculator2/Evaluator;->requireResult(JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;)V

    return-void
.end method

.method public subtractFromMemory(J)V
    .locals 2

    .line 1924
    iget-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/calculator2/Evaluator;->difference(JJ)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1926
    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/Evaluator;->addToDB(ZLcom/android/calculator2/Evaluator$ExprInfo;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 1927
    iput-wide v0, p0, Lcom/android/calculator2/Evaluator;->mMemoryIndex:J

    const/4 v0, 0x1

    .line 1928
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calculator2/Evaluator;->setMemoryIndexWhenEvaluated(JZ)V

    :cond_0
    return-void
.end method

.method public touch()V
    .locals 1

    const/4 v0, 0x1

    .line 1788
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator;->mChangedValue:Z

    return-void
.end method

.method public waitForWrites()V
    .locals 0

    .line 2171
    iget-object p0, p0, Lcom/android/calculator2/Evaluator;->mExprDB:Lcom/android/calculator2/ExpressionDB;

    invoke-virtual {p0}, Lcom/android/calculator2/ExpressionDB;->waitForWrites()V

    return-void
.end method

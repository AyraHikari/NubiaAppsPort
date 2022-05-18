.class Lcom/android/calculator2/Evaluator$AsyncEvaluator;
.super Landroid/os/AsyncTask;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/calculator2/Evaluator$InitialResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mCharMetricsInfo:Lcom/android/calculator2/Evaluator$CharMetricsInfo;

.field private mDm:Z

.field private mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

.field private mIndex:J

.field private mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

.field private mQuiet:Z

.field mRequired:Z

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/calculator2/Evaluator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Evaluator;JLcom/android/calculator2/Evaluator$EvaluationListener;Lcom/android/calculator2/Evaluator$CharMetricsInfo;ZZ)V
    .locals 1

    .line 519
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 520
    iput-wide p2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    .line 521
    iput-object p4, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    .line 522
    iput-object p5, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mCharMetricsInfo:Lcom/android/calculator2/Evaluator$CharMetricsInfo;

    .line 523
    iput-boolean p6, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mDm:Z

    .line 524
    iput-boolean p7, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz p7, :cond_1

    .line 525
    iget-wide p2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mQuiet:Z

    .line 526
    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->access$100(Lcom/android/calculator2/Evaluator;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-wide p2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    .line 527
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    if-nez p0, :cond_2

    return-void

    .line 528
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Evaluation already in progress!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method static synthetic access$1000(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->suppressCancelMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->handleTimeout()V

    return-void
.end method

.method private handleTimeout()V
    .locals 4

    .line 534
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0, v2}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->access$100(Lcom/android/calculator2/Evaluator;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    .line 537
    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->access$200(Lcom/android/calculator2/Evaluator;)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v1}, Lcom/android/calculator2/Evaluator;->access$200(Lcom/android/calculator2/Evaluator;)Lcom/android/calculator2/Evaluator$ExprInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr;

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 540
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->suppressCancelMessage()V

    .line 541
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    invoke-static {v0, p0}, Lcom/android/calculator2/Evaluator;->access$300(Lcom/android/calculator2/Evaluator;Z)V

    :cond_1
    return-void
.end method

.method private isTooBig(Lcom/android/calculator2/UnifiedReal;)Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    invoke-static {v0, p0}, Lcom/android/calculator2/Evaluator;->access$700(Lcom/android/calculator2/Evaluator;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3a98

    .line 576
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/calculator2/UnifiedReal;->approxWholeNumberBitsGreaterThan(I)Z

    move-result p0

    return p0
.end method

.method private suppressCancelMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mQuiet:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calculator2/Evaluator$InitialResult;
    .locals 6

    .line 583
    :try_start_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/UnifiedReal;
    :try_end_0
    .catch Lcom/android/calculator2/CalculatorExpr$SyntaxException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/calculator2/UnifiedReal$ZeroDivisionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hp/creals/CR$PrecisionOverflowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hp/creals/CR$AbortedException; {:try_start_0 .. :try_end_0} :catch_1

    const v0, 0x7f1100e4

    if-nez p1, :cond_1

    .line 586
    :try_start_1
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    iget-boolean v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mDm:Z

    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1, v1, v2}, Lcom/android/calculator2/CalculatorExpr;->eval(ZLcom/android/calculator2/CalculatorExpr$ExprResolver;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    .line 587
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    iget-wide v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/calculator2/Evaluator;->putResultIfAbsent(JLcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_0

    .line 589
    :cond_0
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/calculator2/CalculatorExpr$SyntaxException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/calculator2/UnifiedReal$ZeroDivisionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/hp/creals/CR$PrecisionOverflowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/hp/creals/CR$AbortedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    :catch_0
    :try_start_2
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    .line 598
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->isTooBig(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    invoke-direct {p0, v0}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    :cond_2
    const/16 v0, 0x32

    .line 603
    invoke-virtual {p1, v0}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v1}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_5

    .line 606
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->leadingBinaryZeroes()I

    move-result v0

    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_4

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 610
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v1, v4

    int-to-double v4, v0

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1e

    .line 611
    invoke-virtual {p1, v0}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v1}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 614
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Impossible zero result"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    const/16 v0, 0x44c

    .line 619
    invoke-virtual {p1, v0}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-static {v1}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v2

    :cond_5
    :goto_1
    const/16 v3, 0x2e

    .line 623
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/calculator2/Evaluator;->getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I

    move-result v3

    .line 624
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mCharMetricsInfo:Lcom/android/calculator2/Evaluator$CharMetricsInfo;

    invoke-static {v1, v2, v3, p0}, Lcom/android/calculator2/Evaluator;->access$800(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I

    move-result p0

    add-int/lit8 v2, p0, 0x14

    if-le v2, v0, :cond_6

    .line 629
    invoke-virtual {p1, v2}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object v1

    move v0, v2

    .line 631
    :cond_6
    new-instance v2, Lcom/android/calculator2/Evaluator$InitialResult;

    invoke-direct {v2, p1, v1, v0, p0}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;II)V
    :try_end_2
    .catch Lcom/android/calculator2/CalculatorExpr$SyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/calculator2/UnifiedReal$ZeroDivisionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/hp/creals/CR$PrecisionOverflowException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/hp/creals/CR$AbortedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 642
    :catch_1
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    const p1, 0x7f110075

    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    .line 640
    :catch_2
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    const p1, 0x7f110077

    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    .line 637
    :catch_3
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    const p1, 0x7f110076

    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    .line 635
    :catch_4
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    const p1, 0x7f110079

    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0

    .line 633
    :catch_5
    new-instance p0, Lcom/android/calculator2/Evaluator$InitialResult;

    const p1, 0x7f110078

    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$InitialResult;-><init>(I)V

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 509
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->doInBackground([Ljava/lang/Void;)Lcom/android/calculator2/Evaluator$InitialResult;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Lcom/android/calculator2/Evaluator$InitialResult;)V
    .locals 2

    .line 692
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->access$600(Lcom/android/calculator2/Evaluator;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 693
    iget-boolean p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mQuiet:Z

    if-nez p1, :cond_0

    .line 694
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->access$900(Lcom/android/calculator2/Evaluator;)V

    .line 696
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-interface {p1, v0, v1}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onCancelled(J)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p1, Lcom/android/calculator2/Evaluator$InitialResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->onCancelled(Lcom/android/calculator2/Evaluator$InitialResult;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/calculator2/Evaluator$InitialResult;)V
    .locals 10

    .line 648
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    .line 649
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->access$600(Lcom/android/calculator2/Evaluator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    invoke-virtual {p1}, Lcom/android/calculator2/Evaluator$InitialResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    iget v0, p1, Lcom/android/calculator2/Evaluator$InitialResult;->errorResourceId:I

    const v1, 0x7f1100e4

    if-ne v0, v1, :cond_1

    .line 653
    iget-boolean p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 654
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->access$100(Lcom/android/calculator2/Evaluator;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    invoke-static {p1, v0}, Lcom/android/calculator2/Evaluator;->access$300(Lcom/android/calculator2/Evaluator;Z)V

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    invoke-interface {p1, v0, v1}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onCancelled(J)V

    goto :goto_0

    .line 658
    :cond_1
    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    const-string v1, "ERR"

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    iget p0, p1, Lcom/android/calculator2/Evaluator$InitialResult;->errorResourceId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onError(JI)V

    :goto_0
    return-void

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, p1, Lcom/android/calculator2/Evaluator$InitialResult;->newResultString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget v1, p1, Lcom/android/calculator2/Evaluator$InitialResult;->newResultStringOffset:I

    iput v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    .line 668
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 674
    iget v1, p1, Lcom/android/calculator2/Evaluator$InitialResult;->initDisplayOffset:I

    .line 675
    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v3, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v3, v3, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/calculator2/Evaluator;->getMsdIndexOf(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    .line 676
    iget-object p1, p1, Lcom/android/calculator2/Evaluator$InitialResult;->val:Lcom/android/calculator2/UnifiedReal;

    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v2, v2, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/android/calculator2/Evaluator;->getLsdOffset(Lcom/android/calculator2/UnifiedReal;Ljava/lang/String;I)I

    move-result v8

    .line 678
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p1, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget v0, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mCharMetricsInfo:Lcom/android/calculator2/Evaluator$CharMetricsInfo;

    invoke-static {p1, v0, v8, v2}, Lcom/android/calculator2/Evaluator;->access$800(Ljava/lang/String;IILcom/android/calculator2/Evaluator$CharMetricsInfo;)I

    move-result p1

    if-ge p1, v1, :cond_4

    move v6, p1

    goto :goto_1

    :cond_4
    move v6, v1

    .line 686
    :goto_1
    iget-object v3, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v4, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget v7, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    invoke-interface/range {v3 .. v9}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onEvaluate(JIIILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p1, Lcom/android/calculator2/Evaluator$InitialResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->onPostExecute(Lcom/android/calculator2/Evaluator$InitialResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .line 552
    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-boolean v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    invoke-static {v0, v1}, Lcom/android/calculator2/Evaluator;->access$400(Lcom/android/calculator2/Evaluator;Z)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 553
    :goto_0
    iget-wide v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mIndex:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x2710

    .line 560
    :cond_1
    new-instance v2, Lcom/android/calculator2/Evaluator$AsyncEvaluator$1;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Evaluator$AsyncEvaluator$1;-><init>(Lcom/android/calculator2/Evaluator$AsyncEvaluator;)V

    iput-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 566
    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v2}, Lcom/android/calculator2/Evaluator;->access$600(Lcom/android/calculator2/Evaluator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v2}, Lcom/android/calculator2/Evaluator;->access$600(Lcom/android/calculator2/Evaluator;)Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncEvaluator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

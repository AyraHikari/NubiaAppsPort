.class Lcom/android/calculator2/Evaluator$AsyncReevaluator;
.super Landroid/os/AsyncTask;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReevaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/android/calculator2/Evaluator$ReevalResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

.field private mIndex:J

.field private mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

.field final synthetic this$0:Lcom/android/calculator2/Evaluator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Evaluator;JLcom/android/calculator2/Evaluator$EvaluationListener;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 762
    iput-wide p2, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mIndex:J

    .line 763
    iput-object p4, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    .line 764
    invoke-static {p1}, Lcom/android/calculator2/Evaluator;->access$100(Lcom/android/calculator2/Evaluator;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-wide p2, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mIndex:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Evaluator$ExprInfo;

    iput-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/android/calculator2/Evaluator$ReevalResult;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 770
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 771
    new-instance v0, Lcom/android/calculator2/Evaluator$ReevalResult;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object p0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->toStringTruncated(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/calculator2/Evaluator$ReevalResult;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hp/creals/CR$PrecisionOverflowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hp/creals/CR$AbortedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :catch_1
    return-object v1

    :catch_2
    return-object v1

    :catch_3
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 756
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->doInBackground([Ljava/lang/Integer;)Lcom/android/calculator2/Evaluator$ReevalResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/calculator2/Evaluator$ReevalResult;)V
    .locals 5

    if-nez p1, :cond_0

    .line 792
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    const-string v0, "ERR"

    iput-object v0, p1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 793
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mIndex:J

    const v2, 0x7f110076

    invoke-interface {p1, v0, v1, v2}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onError(JI)V

    goto :goto_0

    .line 795
    :cond_0
    iget v0, p1, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultStringOffset:I

    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    if-lt v0, v1, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget-object v1, v1, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget v2, v2, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    iget-object v3, p1, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultString:Ljava/lang/String;

    iget v4, p1, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultStringOffset:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/calculator2/Evaluator;->unflipZeroes(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultString:Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    iget p1, p1, Lcom/android/calculator2/Evaluator$ReevalResult;->newResultStringOffset:I

    iput p1, v0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    .line 802
    iget-object p1, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mListener:Lcom/android/calculator2/Evaluator$EvaluationListener;

    iget-wide v0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mIndex:J

    invoke-interface {p1, v0, v1}, Lcom/android/calculator2/Evaluator$EvaluationListener;->onReevaluate(J)V

    .line 804
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->mExprInfo:Lcom/android/calculator2/Evaluator$ExprInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mEvaluator:Landroid/os/AsyncTask;

    return-void

    .line 796
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected onPostExecute timing"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 756
    check-cast p1, Lcom/android/calculator2/Evaluator$ReevalResult;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/Evaluator$AsyncReevaluator;->onPostExecute(Lcom/android/calculator2/Evaluator$ReevalResult;)V

    return-void
.end method

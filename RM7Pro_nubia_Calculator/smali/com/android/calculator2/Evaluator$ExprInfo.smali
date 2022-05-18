.class Lcom/android/calculator2/Evaluator$ExprInfo;
.super Ljava/lang/Object;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExprInfo"
.end annotation


# instance fields
.field public mDegreeMode:Z

.field public mEvaluator:Landroid/os/AsyncTask;

.field public mExpr:Lcom/android/calculator2/CalculatorExpr;

.field public mLongTimeout:Z

.field public mMsdIndex:I

.field public mResultString:Ljava/lang/String;

.field public mResultStringOffset:I

.field public mResultStringOffsetReq:I

.field public mTimeStamp:J

.field public mVal:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/calculator2/UnifiedReal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calculator2/CalculatorExpr;Z)V
    .locals 2

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 325
    iput v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffset:I

    .line 328
    iput v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mResultStringOffsetReq:I

    const v1, 0x7fffffff

    .line 331
    iput v1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mMsdIndex:I

    .line 333
    iput-boolean v0, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mLongTimeout:Z

    .line 305
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mExpr:Lcom/android/calculator2/CalculatorExpr;

    .line 306
    iput-boolean p2, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mDegreeMode:Z

    .line 307
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/calculator2/Evaluator$ExprInfo;->mVal:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

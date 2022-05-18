.class abstract Lcom/android/calculator2/Evaluator$SetWhenDoneListener;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Lcom/android/calculator2/Evaluator$EvaluationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SetWhenDoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Evaluator;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/Evaluator;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/Evaluator;Lcom/android/calculator2/Evaluator$1;)V
    .locals 0

    .line 1791
    invoke-direct {p0, p1}, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;-><init>(Lcom/android/calculator2/Evaluator;)V

    return-void
.end method

.method private badCall()V
    .locals 1

    .line 1793
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "unexpected callback"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public onCancelled(J)V
    .locals 0

    return-void
.end method

.method public onError(JI)V
    .locals 0

    return-void
.end method

.method public onEvaluate(JIIILjava/lang/String;)V
    .locals 0

    .line 1803
    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;->setNow()V

    return-void
.end method

.method public onReevaluate(J)V
    .locals 0

    .line 1807
    invoke-direct {p0}, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;->badCall()V

    return-void
.end method

.method abstract setNow()V
.end method

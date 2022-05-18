.class Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;
.super Lcom/android/calculator2/Evaluator$SetWhenDoneListener;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetMemoryWhenDoneListener"
.end annotation


# instance fields
.field final mIndex:J

.field final mPersist:Z

.field final synthetic this$0:Lcom/android/calculator2/Evaluator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Evaluator;JZ)V
    .locals 1

    .line 1814
    iput-object p1, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/Evaluator$SetWhenDoneListener;-><init>(Lcom/android/calculator2/Evaluator;Lcom/android/calculator2/Evaluator$1;)V

    .line 1815
    iput-wide p2, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->mIndex:J

    .line 1816
    iput-boolean p4, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->mPersist:Z

    return-void
.end method


# virtual methods
.method setNow()V
    .locals 4

    .line 1820
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    invoke-static {v0}, Lcom/android/calculator2/Evaluator;->access$1200(Lcom/android/calculator2/Evaluator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1823
    iget-boolean v0, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->mPersist:Z

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->mIndex:J

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->access$1300(Lcom/android/calculator2/Evaluator;J)V

    goto :goto_0

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->this$0:Lcom/android/calculator2/Evaluator;

    iget-wide v1, p0, Lcom/android/calculator2/Evaluator$SetMemoryWhenDoneListener;->mIndex:J

    invoke-static {v0, v1, v2}, Lcom/android/calculator2/Evaluator;->access$1202(Lcom/android/calculator2/Evaluator;J)J

    :goto_0
    return-void

    .line 1821
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Overwriting nonzero memory index"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.class final Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunnableAdapter"
.end annotation


# instance fields
.field final result:Ljava/lang/Object;

.field final task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    .line 439
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    .line 440
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 443
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    return-object v0
.end method

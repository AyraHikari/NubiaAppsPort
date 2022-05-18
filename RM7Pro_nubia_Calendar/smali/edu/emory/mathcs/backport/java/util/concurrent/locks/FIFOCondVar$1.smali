.class Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar$1;
.super Ljava/lang/Object;
.source "FIFOCondVar.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z
    .locals 1
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public takeOver(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    .locals 0
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 23
    return-void
.end method

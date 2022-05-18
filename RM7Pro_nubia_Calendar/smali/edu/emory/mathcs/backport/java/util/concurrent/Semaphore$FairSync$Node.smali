.class final Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
.super Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final requests:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "requests"    # I

    .prologue
    .line 414
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    return-void
.end method

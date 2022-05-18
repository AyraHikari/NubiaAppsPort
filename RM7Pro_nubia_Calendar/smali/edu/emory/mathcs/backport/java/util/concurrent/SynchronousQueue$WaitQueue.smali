.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WaitQueue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
.end method

.method abstract enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
.end method

.method abstract shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z
.end method

.method abstract unlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
.end method

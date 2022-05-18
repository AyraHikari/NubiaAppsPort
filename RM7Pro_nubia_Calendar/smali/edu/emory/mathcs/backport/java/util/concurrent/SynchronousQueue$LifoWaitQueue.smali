.class final Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;
.super Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x326b6965c68cc166L


# instance fields
.field private transient head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    return-void
.end method


# virtual methods
.method deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 197
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 199
    const/4 v1, 0x0

    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 201
    :cond_0
    return-object v0
.end method

.method enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 192
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    invoke-direct {v0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;-><init>(Ljava/lang/Object;Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    return-object v0
.end method

.method shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z
    .locals 1
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 207
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    if-eq p1, v0, :cond_0

    iget-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    .locals 3
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 211
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 212
    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    const/4 v2, 0x0

    .line 213
    .local v2, "trail":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 214
    if-ne v1, p1, :cond_2

    .line 215
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 216
    .local v0, "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v2, :cond_1

    .line 217
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 225
    .end local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_0
    :goto_1
    return-void

    .line 219
    .restart local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_1
    iput-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    goto :goto_1

    .line 222
    .end local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_2
    move-object v2, v1

    .line 223
    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    goto :goto_0
.end method

.class final Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;
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
    name = "FifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3247e27356cbc166L


# instance fields
.field private transient head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

.field private transient last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    return-void
.end method


# virtual methods
.method deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 152
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-eqz v0, :cond_1

    .line 153
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    if-nez v1, :cond_0

    .line 154
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 155
    :cond_0
    iput-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 157
    :cond_1
    return-object v0
.end method

.method enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 142
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 143
    .local v0, "p":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    if-nez v1, :cond_0

    .line 144
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iput-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    goto :goto_0
.end method

.method shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z
    .locals 1
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 161
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

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
    .locals 4
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 165
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 166
    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    const/4 v2, 0x0

    .line 167
    .local v2, "trail":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 168
    if-ne v1, p1, :cond_2

    .line 169
    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 170
    .local v0, "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v2, :cond_1

    .line 171
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 174
    :goto_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    if-ne v3, p1, :cond_0

    .line 175
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .line 181
    .end local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_0
    return-void

    .line 173
    .restart local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_1
    iput-object v0, v2, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    goto :goto_1

    .line 178
    .end local v0    # "next":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_2
    move-object v2, v1

    .line 179
    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    goto :goto_0
.end method

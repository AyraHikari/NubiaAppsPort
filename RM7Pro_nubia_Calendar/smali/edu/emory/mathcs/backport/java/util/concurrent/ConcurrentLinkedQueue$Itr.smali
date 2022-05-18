.class Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field private lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

.field private nextItem:Ljava/lang/Object;

.field private nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;

    .prologue
    .line 399
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    .line 401
    return-void
.end method

.method private advance()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 409
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 411
    .local v2, "x":Ljava/lang/Object;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_0

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue;->first()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 413
    .local v1, "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :goto_0
    if-nez v1, :cond_1

    .line 414
    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 415
    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 422
    :goto_1
    return-object v2

    .line 411
    .end local v1    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0

    .line 418
    .restart local v1    # "p":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 420
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 421
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 434
    :cond_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 439
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 441
    :cond_0
    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;->setItem(Ljava/lang/Object;)V

    .line 442
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 443
    return-void
.end method

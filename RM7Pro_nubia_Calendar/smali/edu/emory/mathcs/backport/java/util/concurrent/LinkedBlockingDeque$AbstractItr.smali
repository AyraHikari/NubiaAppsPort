.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation


# instance fields
.field private lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

.field nextItem:Ljava/lang/Object;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    .prologue
    .line 926
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 928
    return-void
.end method


# virtual methods
.method abstract advance()V
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v1, :cond_0

    .line 942
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 943
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 944
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 945
    .local v0, "x":Ljava/lang/Object;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->advance()V

    .line 946
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 951
    .local v0, "n":Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;
    if-nez v0, :cond_0

    .line 952
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 953
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;

    .line 957
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque;->removeNode(Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingDeque$Node;)Z

    .line 958
    return-void
.end method

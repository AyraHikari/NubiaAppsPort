.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
.end annotation


# instance fields
.field lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

.field nextValue:Ljava/lang/Object;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    .prologue
    .line 2225
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2227
    :cond_0
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->findFirst()Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2228
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 2236
    :goto_0
    return-void

    .line 2230
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2231
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 2232
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 2

    .prologue
    .line 2244
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_0

    .line 2245
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2246
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2248
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2249
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_2

    .line 2257
    :goto_0
    return-void

    .line 2251
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2252
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_1

    .line 2253
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 2260
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2261
    .local v0, "l":Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;
    if-nez v0, :cond_0

    .line 2262
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2265
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2267
    return-void
.end method

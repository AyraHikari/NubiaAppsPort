.class Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubEntryIterator"
.end annotation


# instance fields
.field final terminalKey:Ljava/lang/Object;

.field private final this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V
    .locals 3
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    .prologue
    .line 1527
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    .line 1528
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v1

    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->first()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 1529
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->last()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1530
    .local v0, "terminator":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->terminalKey:Ljava/lang/Object;

    .line 1531
    return-void

    .line 1530
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1536
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 1537
    .local v0, "curr":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1538
    :cond_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->expectedModCount:I

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v2

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1539
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1540
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$400(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->terminalKey:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 1541
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 1542
    return-object v0

    .line 1540
    :cond_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->uncheckedHigher(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    goto :goto_0
.end method

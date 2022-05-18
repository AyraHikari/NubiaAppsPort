.class Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubKeyIterator"
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;

.field private final this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
    .param p2, "itr"    # Ljava/util/Iterator;

    .prologue
    .line 1548
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubKeyIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

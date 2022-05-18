.class Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubEntrySet"
.end annotation


# instance fields
.field private final this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V
    .locals 0
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    .prologue
    .line 1438
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1443
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2100(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1454
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1447
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2100(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 1448
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1450
    :goto_0
    return v1

    .line 1449
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->access$2200(Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;)Ledu/emory/mathcs/backport/java/util/TreeMap;

    move-result-object v1

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 1450
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap$SubEntrySet;->this$1:Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$NavigableSubMap;->size()I

    move-result v0

    return v0
.end method

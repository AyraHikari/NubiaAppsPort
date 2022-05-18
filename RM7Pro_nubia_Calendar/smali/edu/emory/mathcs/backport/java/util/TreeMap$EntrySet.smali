.class Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 763
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 773
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1200(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

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
    .line 765
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 769
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$EntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 777
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1200(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 778
    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 780
    :goto_0
    return v1

    .line 779
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 780
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

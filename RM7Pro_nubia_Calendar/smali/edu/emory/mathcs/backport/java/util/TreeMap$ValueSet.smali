.class Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueSet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 790
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 796
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 797
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 799
    :goto_1
    return v1

    .line 796
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 803
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 807
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1100(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .local v0, "e":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 808
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$600(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 810
    const/4 v1, 0x1

    .line 813
    :goto_1
    return v1

    .line 807
    :cond_0
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$ValueSet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

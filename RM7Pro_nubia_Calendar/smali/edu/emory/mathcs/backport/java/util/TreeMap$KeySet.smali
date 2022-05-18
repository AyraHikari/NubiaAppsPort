.class abstract Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "KeySet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 817
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 823
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 836
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->headSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 827
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1400(Ledu/emory/mathcs/backport/java/util/TreeMap;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    .line 828
    .local v0, "found":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 830
    :goto_0
    return v1

    .line 829
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 830
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 833
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 839
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ledu/emory/mathcs/backport/java/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

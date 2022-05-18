.class Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntrySet;
.super Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingEntrySet"
.end annotation


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;

    .prologue
    .line 784
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/TreeMap$EntrySet;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 786
    new-instance v0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntryIterator;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntrySet;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1300(Ledu/emory/mathcs/backport/java/util/TreeMap;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/TreeMap$DescendingEntryIterator;-><init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    return-object v0
.end method

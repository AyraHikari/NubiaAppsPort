.class Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseEntryIterator"
.end annotation


# instance fields
.field cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

.field expectedModCount:I

.field lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/TreeMap;
    .param p2, "cursor"    # Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .prologue
    .line 689
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 691
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    .line 692
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 698
    .local v0, "curr":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 699
    :cond_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 700
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 701
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$800(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 702
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 703
    return-object v0
.end method

.method prevEntry()Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 707
    .local v0, "curr":Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 708
    :cond_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 709
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 710
    :cond_1
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$900(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 711
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 712
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$700(Ledu/emory/mathcs/backport/java/util/TreeMap;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 717
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 719
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$000(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;->access$200(Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->cursor:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 720
    :cond_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->this$0:Ledu/emory/mathcs/backport/java/util/TreeMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/TreeMap;->access$1000(Ledu/emory/mathcs/backport/java/util/TreeMap;Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;)V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->lastRet:Ledu/emory/mathcs/backport/java/util/TreeMap$Entry;

    .line 722
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/TreeMap$BaseEntryIterator;->expectedModCount:I

    .line 723
    return-void
.end method

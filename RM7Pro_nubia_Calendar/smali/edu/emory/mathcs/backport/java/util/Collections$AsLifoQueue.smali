.class Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "Collections.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsLifoQueue"
.end annotation


# instance fields
.field final deque:Ledu/emory/mathcs/backport/java/util/Deque;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/Deque;)V
    .locals 0
    .param p1, "deque"    # Ledu/emory/mathcs/backport/java/util/Deque;

    .prologue
    .line 761
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 762
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 773
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 777
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 763
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 774
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 778
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 779
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/Deque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 772
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$AsLifoQueue;->deque:Ledu/emory/mathcs/backport/java/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

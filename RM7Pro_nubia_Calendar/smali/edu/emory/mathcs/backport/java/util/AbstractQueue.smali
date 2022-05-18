.class public abstract Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractCollection;
.source "AbstractQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/Queue;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractCollection;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 159
    :cond_0
    if-ne p1, p0, :cond_1

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 161
    :cond_1
    const/4 v1, 0x0

    .line 162
    .local v1, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "e":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const/4 v1, 0x1

    goto :goto_0

    .line 167
    :cond_3
    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

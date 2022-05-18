.class Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;
.super Ljava/lang/Object;
.source "TreeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/TreeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .param p1, "itr"    # Ljava/util/Iterator;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/TreeSet$MapIterator;->itr:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/TreeSet;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

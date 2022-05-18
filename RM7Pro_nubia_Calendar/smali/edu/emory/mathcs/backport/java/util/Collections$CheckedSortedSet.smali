.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;
.super Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedSortedSet"
.end annotation


# instance fields
.field final set:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Class;)V
    .locals 0
    .param p1, "set"    # Ljava/util/SortedSet;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    .line 446
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    .line 447
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 453
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    .prologue
    .line 461
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "fromElement"    # Ljava/lang/Object;

    .prologue
    .line 457
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->set:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;
.super Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedSortedMap"
.end annotation


# instance fields
.field final map:Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "map"    # Ljava/util/SortedMap;
    .param p2, "keyType"    # Ljava/lang/Class;
    .param p3, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 695
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    .line 696
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 706
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 702
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 710
    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->map:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

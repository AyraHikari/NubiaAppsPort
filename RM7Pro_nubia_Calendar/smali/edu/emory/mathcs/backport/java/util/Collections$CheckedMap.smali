.class Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntryView;,
        Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;
    }
.end annotation


# instance fields
.field private transient emptyKeyArray:[Ljava/lang/Object;

.field private transient emptyValueArray:[Ljava/lang/Object;

.field transient entrySet:Ljava/util/Set;

.field final keyType:Ljava/lang/Class;

.field final map:Ljava/util/Map;

.field final valueType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "keyType"    # Ljava/lang/Class;
    .param p3, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 512
    :cond_1
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    .line 513
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 514
    iput-object p3, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 515
    return-void
.end method

.method static access$200(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->typeCheckValue(Ljava/lang/Object;)V

    return-void
.end method

.method private typeCheckKey(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 518
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempted to use a key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " with a map with keys of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    return-void
.end method

.method private typeCheckValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 526
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempted to use a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " with a map with values of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 539
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 541
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap$EntrySetView;-><init>(Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;Ljava/util/Set;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    .line 587
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 534
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 590
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->typeCheckKey(Ljava/lang/Object;)V

    .line 595
    invoke-direct {p0, p2}, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->typeCheckValue(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    const/4 v5, 0x0

    .line 552
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyKeyArray:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 553
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyKeyArray:[Ljava/lang/Object;

    .line 555
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyValueArray:[Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 556
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyValueArray:[Ljava/lang/Object;

    .line 562
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyKeyArray:[Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 570
    .local v2, "keys":[Ljava/lang/Object;
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->emptyKeyArray:[Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 577
    .local v3, "values":[Ljava/lang/Object;
    array-length v4, v2

    array-length v5, v3

    if-eq v4, v5, :cond_2

    .line 578
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 564
    .end local v2    # "keys":[Ljava/lang/Object;
    .end local v3    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/ArrayStoreException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Attempted to use an invalid key type  with a map with keys of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 572
    .end local v0    # "e":Ljava/lang/ArrayStoreException;
    .restart local v2    # "keys":[Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 573
    .restart local v0    # "e":Ljava/lang/ArrayStoreException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Attempted to use an invalid value type  with a map with values of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 580
    .end local v0    # "e":Ljava/lang/ArrayStoreException;
    .restart local v3    # "values":[Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 581
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 591
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$CheckedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

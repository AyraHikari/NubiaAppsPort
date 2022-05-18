.class Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;
.super Ledu/emory/mathcs/backport/java/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFromMap"
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field transient keySet:Ljava/util/Set;

.field final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 716
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 721
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractSet;-><init>()V

    .line 722
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    .line 723
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    .line 724
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 753
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    .line 754
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 730
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    sget-object v1, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->PRESENT:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 743
    .local v1, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->PRESENT:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 746
    :cond_1
    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 731
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 732
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 733
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->PRESENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 735
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 736
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 739
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/Collections$SetFromMap;->keySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

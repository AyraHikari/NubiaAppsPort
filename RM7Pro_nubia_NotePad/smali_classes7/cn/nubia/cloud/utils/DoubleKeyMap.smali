.class public final Lcn/nubia/cloud/utils/DoubleKeyMap;
.super Ljava/lang/Object;
.source "DoubleKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FirstKey:",
        "Ljava/lang/Object;",
        "SecondKey:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFirstKMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TFirstKey;",
            "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry",
            "<TFirstKey;TSecondKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private final mSecondKMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TSecondKey;",
            "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry",
            "<TFirstKey;TSecondKey;TValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    return-void
.end method

.method public containsFirstKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;)Z"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "k":Ljava/lang/Object;, "TFirstKey;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsSecondKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSecondKey;)Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "v":Ljava/lang/Object;, "TSecondKey;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public firstKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TFirstKey;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFirstKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSecondKey;)TFirstKey;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "secondKey":Ljava/lang/Object;, "TSecondKey;"
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    .line 53
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecondKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;)TSecondKey;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "firstKey":Ljava/lang/Object;, "TFirstKey;"
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    .line 45
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValueByFirstKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "firstKey":Ljava/lang/Object;, "TFirstKey;"
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    .line 29
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    if-eqz v0, :cond_0

    .line 30
    iget-object v1, v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    .line 32
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValueBySecondKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSecondKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "secondKey":Ljava/lang/Object;, "TSecondKey;"
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    .line 37
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;TSecondKey;TValue;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "key1":Ljava/lang/Object;, "TFirstKey;"
    .local p2, "key2":Ljava/lang/Object;, "TSecondKey;"
    .local p3, "value":Ljava/lang/Object;, "TValue;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "firstKey or secondKey already exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    new-instance v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public secondKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TSecondKey;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TValue;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<TFirstKey;TSecondKey;TValue;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v3, "values":Ljava/util/Set;, "Ljava/util/Set<TValue;>;"
    iget-object v4, p0, Lcn/nubia/cloud/utils/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 83
    .local v1, "entrys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;

    .line 84
    .local v0, "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    iget-object v4, v0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "entry":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    :cond_0
    return-object v3
.end method

.class public final Lcn/nubia/cloud/common/DoubleKeyMap;
.super Ljava/lang/Object;
.source "DoubleKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/DoubleKeyMap$Entry;
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
            "Ljava/util/HashMap<",
            "TFirstKey;",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "TFirstKey;TSecondKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private final mSecondKMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TSecondKey;",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "TFirstKey;TSecondKey;TValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsFirstKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;)Z"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSecondKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSecondKey;)Z"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public firstKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TFirstKey;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEntryByFirstKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;)",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "TFirstKey;TSecondKey;TValue;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    return-object p1
.end method

.method public getEntryBySecondKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSecondKey;)",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "TFirstKey;TSecondKey;TValue;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;TSecondKey;TValue;)Z"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    iget-object p3, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstKey or secondKey already exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public secondKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TSecondKey;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mSecondKMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TValue;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 74
    iget-object v1, p0, Lcn/nubia/cloud/common/DoubleKeyMap;->mFirstKMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    .line 76
    iget-object v2, v2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

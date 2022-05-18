.class Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;
.super Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;
.source "Iterator2ClosableEnumeration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/nubia/cloud/utils/Jsonable;",
        ">",
        "Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;"
    }
.end annotation


# instance fields
.field private final mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;, "Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration<TT;>;"
    .local p1, "iterator":Lcn/nubia/cloud/sync/common/SyncDataIterator;, "Lcn/nubia/cloud/sync/common/SyncDataIterator<TT;>;"
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;, "Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->close()V

    .line 44
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;, "Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;, "Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration<TT;>;"
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;

    invoke-interface {v4, p1}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object v0

    .line 30
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 31
    .local v3, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v2, "js":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 34
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/utils/Jsonable;

    invoke-interface {v4}, Lcn/nubia/cloud/utils/Jsonable;->toJson()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-object v2

    .line 35
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;, "Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/sync/common/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/SyncDataIterator;->hasNext()Z

    move-result v0

    return v0
.end method

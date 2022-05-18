.class Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;
.super Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;
.source "Iterator2ClosableEnumeration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/nubia/cloud/common/Jsonable;",
        ">",
        "Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;"
    }
.end annotation


# instance fields
.field private final mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/sync/SyncDataIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->close()V

    return-void
.end method

.method public getCount()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/common/ParcelableJson;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->getNext(I)Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/cloud/common/Jsonable;

    invoke-interface {v3}, Lcn/nubia/cloud/common/Jsonable;->toJson()Lcn/nubia/cloud/common/ParcelableJson;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;->mIterator:Lcn/nubia/cloud/common/sync/SyncDataIterator;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/SyncDataIterator;->hasNext()Z

    move-result v0

    return v0
.end method

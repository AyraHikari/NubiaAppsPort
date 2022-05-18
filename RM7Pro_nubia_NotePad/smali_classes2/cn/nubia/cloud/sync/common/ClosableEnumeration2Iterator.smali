.class Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;
.super Ljava/lang/Object;
.source "ClosableEnumeration2Iterator.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/sync/common/SyncDataIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/sync/common/ClosableEnumeration;Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 0
    .param p1, "enumeration"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/ClosableEnumeration;",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    .local p2, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    .line 18
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    invoke-interface {v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCount()J
    .locals 4

    .prologue
    .line 34
    .local p0, "this":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    invoke-interface {v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->getCount()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 38
    :goto_0
    return-wide v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 38
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    invoke-interface {v5, p1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->getNext(I)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "JS":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 46
    .local v4, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 49
    :try_start_1
    iget-object v6, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-interface {v6, v5}, Lcn/nubia/cloud/utils/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "JS":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    .end local v1    # "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "i":I
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1

    .line 50
    .restart local v0    # "JS":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    .restart local v1    # "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    invoke-interface {v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->hasNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 28
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method

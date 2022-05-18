.class Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;
.super Ljava/lang/Object;
.source "ClosableEnumeration2Iterator.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;"
        }
    .end annotation
.end field

.field mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/sync/ClosableEnumeration;Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/sync/ClosableEnumeration;",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    .line 20
    iput-object p2, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCount()J
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->getCount()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->getNext(I)Ljava/util/List;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-interface {v3, v4}, Lcn/nubia/cloud/common/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 53
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;->mEnumeration:Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

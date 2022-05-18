.class public Lcn/nubia/cloud/utils/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# static fields
.field public static final BATCH_OP_COUNT:I = 0x64


# instance fields
.field private final mOperationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/utils/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Landroid/content/ContentProviderOperation;)I
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v2, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    const/4 p1, -0x1

    .line 64
    monitor-exit p0

    return p1
.end method

.method public batchSizeEnough()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized clearAuthoritys()V
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/BatchOperation;->getAuthoritys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/utils/BatchOperation;->innerexecute(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method public declared-synchronized getAuthoritys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOperationSize(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized innerexecute(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 72
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    iget-object v2, p0, Lcn/nubia/cloud/utils/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 78
    array-length v2, p1

    if-lez v2, :cond_2

    .line 79
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    .line 80
    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storing data failed2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storing data failed1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 88
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 3

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.class public Lcn/nubia/calendar/cloud/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# static fields
.field public static final BATCH_OP_COUNT:I = 0x64


# instance fields
.field private final mOperationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Landroid/content/ContentProviderOperation;)I
    .locals 3
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 55
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "authority":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 65
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public batchSizeEnough()Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized clearAuthoritys()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/BatchOperation;->getAuthoritys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/cloud/BatchOperation;->innerexecute(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 96
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public declared-synchronized getAuthoritys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOperationSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 50
    .end local v0    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized innerexecute(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 70
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 89
    :goto_0
    monitor-exit p0

    return-object v4

    .line 73
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .local v4, "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_2
    iget-object v6, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 78
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 79
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v5, v6

    .line 80
    .local v3, "result":Landroid/content/ContentProviderResult;
    iget-object v8, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 83
    .end local v3    # "result":Landroid/content/ContentProviderResult;
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e1":Landroid/content/OperationApplicationException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storing data failed1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 88
    .end local v0    # "e1":Landroid/content/OperationApplicationException;
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 69
    .end local v2    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 85
    .restart local v2    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4    # "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e2":Landroid/os/RemoteException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storing data failed2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "size":I
    iget-object v2, p0, Lcn/nubia/calendar/cloud/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 41
    goto :goto_0

    .line 42
    .end local v0    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    return v1
.end method

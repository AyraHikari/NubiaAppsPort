.class public Lcn/nubia/cloud/utils/BatchOperation;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/utils/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Landroid/content/ContentProviderOperation;)I
    .locals 3
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 54
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "authority":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 57
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .restart local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 64
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public batchSizeEnough()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/BatchOperation;->size()I

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
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/BatchOperation;->getAuthoritys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/BatchOperation;->innerexecute(Ljava/lang/String;)Ljava/util/List;

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
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

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
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
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

    .line 49
    .end local v0    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized innerexecute(Ljava/lang/String;)Ljava/util/List;
    .locals 11
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
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 69
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 89
    :goto_0
    monitor-exit p0

    return-object v7

    .line 72
    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .local v7, "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_2
    iget-object v9, p0, Lcn/nubia/cloud/utils/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, p1, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v8

    .line 78
    .local v8, "results":[Landroid/content/ContentProviderResult;
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    .line 79
    move-object v0, v8

    .local v0, "arr$":[Landroid/content/ContentProviderResult;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 80
    .local v6, "result":Landroid/content/ContentProviderResult;
    iget-object v9, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "result":Landroid/content/ContentProviderResult;
    .end local v8    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e1":Landroid/content/OperationApplicationException;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storing data failed1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 88
    .end local v1    # "e1":Landroid/content/OperationApplicationException;
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    .end local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v7    # "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 85
    .restart local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v7    # "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e2":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storing data failed2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "size":I
    iget-object v3, p0, Lcn/nubia/cloud/utils/BatchOperation;->mOperationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 40
    goto :goto_0

    .line 41
    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    return v2
.end method

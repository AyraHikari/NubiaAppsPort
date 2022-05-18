.class public Lcn/nubia/notepad/cloud/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# static fields
.field public static final BATCH_OP_COUNT:I = 0x64


# instance fields
.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Landroid/content/ContentProviderOperation;)I
    .locals 1
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 33
    monitor-enter p0

    if-nez p1, :cond_0

    .line 34
    const/4 v0, -0x1

    .line 37
    :goto_0
    monitor-exit p0

    return v0

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public batchSizeEnough()Z
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/nubia/notepad/cloud/BatchOperation;->size()I

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

.method public declared-synchronized execute()V
    .locals 7

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .local v2, "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_2
    iget-object v4, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "cn.nubia.notepad.provider.NotePad"

    iget-object v6, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 50
    .local v3, "results":[Landroid/content/ContentProviderResult;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 52
    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "i":I
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 41
    .end local v2    # "resultUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/notepad/cloud/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

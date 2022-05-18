.class public Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;
.super Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;
.source "OldSystemAccountEntry.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindBaiduAccount(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 40
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindBaiduAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 44
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;

    iget-object v2, p0, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    invoke-virtual {v1, p1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->bindBaiduAccount(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 44
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 46
    :try_start_4
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public onGetBaiduPCSToken()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;

    iget-object v2, p0, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->getBaiduToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 31
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 33
    :try_start_4
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public onGetNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 21
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;

    iget-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;->getAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 21
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 23
    :try_start_4
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcn/nubia/cloud/accounts/AccountNotFountException;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

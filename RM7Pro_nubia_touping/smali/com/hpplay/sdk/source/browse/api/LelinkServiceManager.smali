.class public final Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LelinkServiceManager"

.field private static mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    if-nez v0, :cond_1

    .line 23
    const-class v2, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/hpplay/sdk/source/common/store/Session;->initSession(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/hpplay/sdk/source/b/a;->a(Landroid/content/Context;)Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    .line 28
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_1
    :try_start_2
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addPinCodeServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->addPinCodeServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 81
    return-void
.end method

.method public addQRServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->addQRServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 76
    return-void
.end method

.method public browse(I)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->browse(I)V

    .line 56
    return-void
.end method

.method public varargs deleteRemoteServiceInfo([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->deleteRemoteServiceInfo([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 91
    return-void
.end method

.method public getLelinkServiceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->getLelinkServiceInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBrowseListGone()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->onBrowseListGone()V

    .line 66
    return-void
.end method

.method public onPushButtonClick()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->onPushButtonClick()V

    .line 71
    return-void
.end method

.method public varargs performAction(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->performAction(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public removeLocalServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->removeLocalServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 86
    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setDebug(Z)V

    .line 36
    return-void
.end method

.method public setLelinkSetting(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setLelinkSetting(Lcom/hpplay/sdk/source/browse/api/LelinkSetting;)V

    .line 41
    return-void
.end method

.method public setOnBrowseListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOnBrowseListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 51
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stopBrowse()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceManager;->mLelinkServiceManager:Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/ILelinkServiceManager;->stopBrowse()V

    .line 61
    return-void
.end method

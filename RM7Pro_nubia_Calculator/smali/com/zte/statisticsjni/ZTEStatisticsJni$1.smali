.class final Lcom/zte/statisticsjni/ZTEStatisticsJni$1;
.super Ljava/lang/Object;
.source "ZTEStatisticsJni.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statisticsjni/ZTEStatisticsJni;->getImeiExternal(Landroid/content/Context;Lcom/zte/statisticsjni/JniCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/zte/statisticsjni/JniCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/statisticsjni/JniCallback;Landroid/content/Context;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$callback:Lcom/zte/statisticsjni/JniCallback;

    iput-object p2, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 26
    invoke-static {p2}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;

    move-result-object p1

    :try_start_0
    const-string p2, "imei"

    .line 28
    invoke-interface {p1, p2}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$callback:Lcom/zte/statisticsjni/JniCallback;

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$callback:Lcom/zte/statisticsjni/JniCallback;

    invoke-interface {p2, p1}, Lcom/zte/statisticsjni/JniCallback;->onCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/zte/statisticsjni/ZTEStatisticsJni$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

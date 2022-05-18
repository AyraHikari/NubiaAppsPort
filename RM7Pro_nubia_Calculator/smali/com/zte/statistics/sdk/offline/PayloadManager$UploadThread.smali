.class Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;
.super Ljava/lang/Object;
.source "PayloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/offline/PayloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

.field final synthetic this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

.field private wifiPri:Z


# direct methods
.method public constructor <init>(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/CollectionSendResult;Landroid/content/Context;Z)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    .line 43
    iput-object p2, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    .line 44
    iput-object p3, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->context:Landroid/content/Context;

    .line 45
    iput-boolean p4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->wifiPri:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "lwp run UploadThread "

    const/4 v2, 0x0

    .line 66
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->waitBindService(Landroid/content/Context;)V

    .line 70
    sget-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->context:Landroid/content/Context;

    invoke-static {v1, v3, v4, v2}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$100(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->DEVICE:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->context:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->wifiPri:Z

    invoke-static {v1, v3, v4, v5}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$100(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V

    .line 76
    sget-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    iget-object v4, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->context:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->wifiPri:Z

    invoke-static {v1, v3, v4, v5}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$100(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->sendResult:Lcom/zte/statistics/sdk/CollectionSendResult;

    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;->this$0:Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$200(Lcom/zte/statistics/sdk/offline/PayloadManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/zte/statistics/sdk/CollectionSendResult;->result(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$000()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 83
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$000()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 87
    :goto_1
    monitor-exit v0

    return-void

    .line 85
    :goto_2
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    throw p0

    :catchall_1
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public waitBindService(Landroid/content/Context;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 50
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/comm/SendProxy;->getMyBinder()Lcom/zte/zms/INetProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

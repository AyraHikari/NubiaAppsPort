.class public Lcn/nubia/cloud/storage/common/CloudStorageEngine;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "CloudStorageEngine.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/CloudStorage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/storage/common/IStorageEngine;",
        ">;",
        "Lcn/nubia/cloud/storage/common/CloudStorage;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.action.StorageManager"

.field public static final AppPackageName:Ljava/lang/String; = "cn.nubia.cloud"

.field private static final TRANSFER_MANAGE_ACTION:Ljava/lang/String; = "nubia.cloud.action.TransferManager"

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/cloud/storage/common/StorageEngineType;",
            "Lcn/nubia/cloud/storage/common/CloudStorageEngine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;",
            ">;"
        }
    .end annotation
.end field

.field private final mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)V
    .locals 1

    .line 48
    new-instance v0, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;

    invoke-direct {v0, p1, p2}, Lcn/nubia/cloud/storage/common/IStorageEngineHandler;-><init>(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 663
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mListenerMap:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mContext:Landroid/content/Context;

    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->initLogSwitch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/utils/ProgressListener;)Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->convertFileTaskCallback(Lcn/nubia/cloud/utils/ProgressListener;)Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized convertFileTaskCallback(Lcn/nubia/cloud/utils/ProgressListener;)Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)",
            "Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 671
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;-><init>(Lcn/nubia/cloud/utils/ProgressListener;)V

    .line 675
    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    .line 677
    :goto_0
    monitor-exit p0

    return-object p1

    .line 679
    :cond_1
    :try_start_1
    sget-boolean p1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "listener is null"

    .line 680
    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 p1, 0x0

    .line 683
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized get(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)Lcn/nubia/cloud/storage/common/CloudStorageEngine;
    .locals 3

    const-class v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    if-nez v1, :cond_1

    .line 58
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    sget-object v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-direct {v1, p0, p1}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;-><init>(Landroid/content/Context;Lcn/nubia/cloud/storage/common/StorageEngineType;)V

    .line 62
    sget-object p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->sInstances:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 66
    :cond_1
    :goto_0
    iget-object p0, v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 67
    sget-boolean p0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get CloudStorage from:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " reference:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, v1, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " type:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addCloudDownloadTask(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;",
            ">;)V"
        }
    .end annotation

    .line 380
    new-instance v10, Lcn/nubia/cloud/storage/common/CloudStorageEngine$15;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$15;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelCloudDownloadTask(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;",
            ">;)V"
        }
    .end annotation

    .line 465
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$19;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$19;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkCloudFilesExit(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 687
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$30;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$30;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->close()V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 84
    :cond_1
    :goto_0
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close CloudStorage from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->mListenerMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method

.method public cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 540
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public copyFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation

    .line 296
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$11;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$11;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/SimpleRes;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public diffWithCursor(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/DiffRes;",
            ">;)V"
        }
    .end annotation

    .line 358
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$14;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$14;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 508
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$21;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$21;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCloudDownloadTaskList(IIIZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;",
            ">;)V"
        }
    .end annotation

    .line 402
    new-instance v7, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;IIIZLcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v7}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 194
    new-instance v6, Lcn/nubia/cloud/storage/common/CloudStorageEngine$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$6;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/MetaRes;",
            ">;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;ZLcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFileTaskList(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;>;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 487
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$20;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$20;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMediaStreamList(Lcn/nubia/cloud/storage/common/MediaType;IILcn/nubia/cloud/utils/SimpleListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/MediaType;",
            "II",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 236
    new-instance v6, Lcn/nubia/cloud/storage/common/CloudStorageEngine$8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$8;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/MediaType;IILcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getQuota(Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/QuotaRes;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$2;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getStorageEngineVersion()I
    .locals 1

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    invoke-interface {v0}, Lcn/nubia/cloud/storage/common/IStorageEngine;->getStorageEngineVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/account/AuthReq;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public makeDir(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$4;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$4;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation

    .line 256
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$9;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$9;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pauseAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 605
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$27;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$27;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pauseTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 560
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$24;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$24;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryCloudDownloadTaskProgress(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;",
            ">;)V"
        }
    .end annotation

    .line 445
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$18;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$18;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryCloudDownloadTaskStatus(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;",
            ">;)V"
        }
    .end annotation

    .line 424
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$17;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$17;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryRemoteFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v6, Lcn/nubia/cloud/storage/common/CloudStorageEngine$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$7;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 621
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$28;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$28;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 590
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$26;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$26;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renameFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;)V"
        }
    .end annotation

    .line 276
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$10;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$10;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restartAllTask(Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/FileTaskType;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 637
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$29;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$29;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/FileTaskType;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 575
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
            ">;)V"
        }
    .end annotation

    .line 317
    new-instance v7, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v7}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToTransferPage(Landroid/app/Activity;I)Z
    .locals 2

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.action.TransferManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.nubia.cloud"

    .line 652
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 658
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/utils/SimpleListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;",
            ">;)V"
        }
    .end annotation

    .line 338
    new-instance v7, Lcn/nubia/cloud/storage/common/CloudStorageEngine$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$13;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;IIILcn/nubia/cloud/utils/SimpleListener;)V

    invoke-virtual {p0, v7}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadFile(Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 523
    new-instance v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$22;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$22;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->summitTask(Ljava/lang/Runnable;)V

    return-void
.end method

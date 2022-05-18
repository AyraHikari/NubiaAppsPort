.class public Lcom/hpplay/common/datareport/DataReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/common/datareport/DataReport$ReportRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/hpplay/common/datareport/DataReport;


# instance fields
.field private final MAX_SEMAPHORE:I

.field private final MAX_TASK_SIZE:I

.field private mCTCipher:Lcom/hpplay/common/perfume/CTCipher;

.field private volatile mSemaphore:I

.field private volatile mTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hpplay/common/datareport/DataReport$ReportRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/hpplay/common/datareport/DataReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/common/datareport/DataReport;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->MAX_SEMAPHORE:I

    .line 23
    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    .line 25
    const/16 v0, 0x32

    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->MAX_TASK_SIZE:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/hpplay/common/datareport/DataReport;)Lcom/hpplay/common/perfume/CTCipher;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mCTCipher:Lcom/hpplay/common/perfume/CTCipher;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hpplay/common/datareport/DataReport;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    return p1
.end method

.method static synthetic access$204(Lcom/hpplay/common/datareport/DataReport;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    return v0
.end method

.method static synthetic access$300(Lcom/hpplay/common/datareport/DataReport;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/hpplay/common/datareport/DataReport;->exeTask()V

    return-void
.end method

.method private addTask(Lcom/hpplay/common/datareport/ReportBean;Z)V
    .locals 4

    .prologue
    .line 70
    :goto_0
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/hpplay/common/datareport/DataReport$1;

    invoke-direct {v0, p0, p2}, Lcom/hpplay/common/datareport/DataReport$1;-><init>(Lcom/hpplay/common/datareport/DataReport;Z)V

    .line 123
    iput-object p1, v0, Lcom/hpplay/common/datareport/DataReport$ReportRunnable;->reportBean:Lcom/hpplay/common/datareport/ReportBean;

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    invoke-direct {p0}, Lcom/hpplay/common/datareport/DataReport;->exeTask()V

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/hpplay/common/datareport/DataReport;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private exeTask()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    if-lez v0, :cond_1

    .line 136
    iget v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/common/datareport/DataReport$ReportRunnable;

    .line 139
    invoke-static {}, Lcom/hpplay/common/asyncmanager/AsyncManager;->getInstance()Lcom/hpplay/common/asyncmanager/AsyncManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/common/asyncmanager/AsyncManager;->exeRunnable(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/hpplay/common/datareport/DataReport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/hpplay/common/datareport/DataReport;->exeTask()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/hpplay/common/datareport/DataReport;->mSemaphore:I

    goto :goto_0
.end method

.method public static initDataReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hpplay/common/datareport/DataReport;->initLocalInstance(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static declared-synchronized initLocalInstance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    const-class v1, Lcom/hpplay/common/datareport/DataReport;

    monitor-enter v1

    :try_start_0
    const-class v2, Lcom/hpplay/common/datareport/DataReport;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->instance:Lcom/hpplay/common/datareport/DataReport;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/hpplay/common/datareport/DataReport;

    invoke-direct {v0}, Lcom/hpplay/common/datareport/DataReport;-><init>()V

    sput-object v0, Lcom/hpplay/common/datareport/DataReport;->instance:Lcom/hpplay/common/datareport/DataReport;

    .line 54
    :cond_0
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->instance:Lcom/hpplay/common/datareport/DataReport;

    invoke-direct {v0, p1}, Lcom/hpplay/common/datareport/DataReport;->setEncrypt(Ljava/lang/String;)V

    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDataReport(Lcom/hpplay/common/datareport/ReportBean;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/common/datareport/DataReport;->onDataReport(Lcom/hpplay/common/datareport/ReportBean;Z)V

    .line 36
    return-void
.end method

.method public static onDataReport(Lcom/hpplay/common/datareport/ReportBean;Z)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->instance:Lcom/hpplay/common/datareport/DataReport;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->TAG:Ljava/lang/String;

    const-string v1, "onDataReport ignore,must call initDataReport first"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/hpplay/common/datareport/DataReport;->instance:Lcom/hpplay/common/datareport/DataReport;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/common/datareport/DataReport;->addTask(Lcom/hpplay/common/datareport/ReportBean;Z)V

    goto :goto_0
.end method

.method private setEncrypt(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/hpplay/common/perfume/CTCipher;

    invoke-direct {v0, p1}, Lcom/hpplay/common/perfume/CTCipher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/common/datareport/DataReport;->mCTCipher:Lcom/hpplay/common/perfume/CTCipher;

    .line 66
    :cond_0
    return-void
.end method

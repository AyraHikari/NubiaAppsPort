.class public Lcom/android/calculator2/ZteStatisticsUtils;
.super Ljava/lang/Object;
.source "ZteStatisticsUtils.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "3394188"

.field private static volatile mInstance:Lcom/android/calculator2/ZteStatisticsUtils;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/calculator2/CalculatorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Lcom/zte/statistics/sdk/ZTEStatistics;

    iget-object v1, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/statistics/sdk/ZTEStatistics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/ZteStatisticsUtils;)Landroid/content/Context;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/calculator2/ZteStatisticsUtils;)Lcom/zte/statistics/sdk/ZTEStatistics;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;

    return-object p0
.end method

.method public static getInstance()Lcom/android/calculator2/ZteStatisticsUtils;
    .locals 2

    .line 20
    sget-object v0, Lcom/android/calculator2/ZteStatisticsUtils;->mInstance:Lcom/android/calculator2/ZteStatisticsUtils;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/android/calculator2/ZteStatisticsUtils;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/android/calculator2/ZteStatisticsUtils;->mInstance:Lcom/android/calculator2/ZteStatisticsUtils;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/android/calculator2/ZteStatisticsUtils;

    invoke-direct {v1}, Lcom/android/calculator2/ZteStatisticsUtils;-><init>()V

    sput-object v1, Lcom/android/calculator2/ZteStatisticsUtils;->mInstance:Lcom/android/calculator2/ZteStatisticsUtils;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/calculator2/ZteStatisticsUtils;->mInstance:Lcom/android/calculator2/ZteStatisticsUtils;

    return-object v0
.end method


# virtual methods
.method public destroyStatistics()V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->destroy()V

    return-void
.end method

.method public initStatistics()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/calculator2/DataLoader;->getInstance()Lcom/android/calculator2/DataLoader;

    move-result-object v0

    new-instance v1, Lcom/android/calculator2/ZteStatisticsUtils$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/ZteStatisticsUtils$1;-><init>(Lcom/android/calculator2/ZteStatisticsUtils;)V

    invoke-virtual {v0, v1}, Lcom/android/calculator2/DataLoader;->addExecuteTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;

    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->prepareEvent(Landroid/content/Context;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->push(Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->emit()Z

    return-void
.end method

.method public sendEventWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mZTEStatistics:Lcom/zte/statistics/sdk/ZTEStatistics;

    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->prepareEvent(Landroid/content/Context;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->push(Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->emit()Z

    return-void
.end method

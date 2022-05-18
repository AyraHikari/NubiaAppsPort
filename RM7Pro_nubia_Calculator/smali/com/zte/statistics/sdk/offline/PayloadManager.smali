.class public Lcom/zte/statistics/sdk/offline/PayloadManager;
.super Ljava/lang/Object;
.source "PayloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;
    }
.end annotation


# static fields
.field private static instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private resultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;",
            "Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->resultMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 31
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->comType(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/statistics/sdk/offline/PayloadManager;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->resultMap:Ljava/util/Map;

    return-object p0
.end method

.method private comType(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;Z)V
    .locals 3

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/offline/PayloadManager;->genEffectivePayLoad(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 200
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/zte/statistics/sdk/offline/PayloadManager;->send(Landroid/content/Context;Ljava/lang/String;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/zte/statistics/sdk/offline/PayloadManager;->deleteRecord(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->resultMap:Ljava/util/Map;

    sget-object p2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->OK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_0
    sget-object p3, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    if-ne p1, p3, :cond_1

    const-wide/16 v0, 0x0

    .line 205
    invoke-static {p2, v0, v1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setLastUploadDataTime(Landroid/content/Context;J)V

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->resultMap:Ljava/util/Map;

    sget-object p2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->ERR:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_2
    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/PayloadManager;->resultMap:Ljava/util/Map;

    sget-object p2, Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;->EMP:Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private genEffectivePayLoad(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, ""

    .line 110
    sget-object v0, Lcom/zte/statistics/sdk/offline/PayloadManager$1;->$SwitchMap$com$zte$statistics$sdk$comm$ConstantDefine$RecordType:[I

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 129
    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->getJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 124
    :pswitch_1
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;-><init>()V

    .line 125
    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->getJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 120
    :pswitch_2
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    .line 121
    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->getJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 116
    :pswitch_3
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/PVdao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/PVdao;-><init>()V

    .line 117
    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/db/dao/PVdao;->getJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :pswitch_4
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/DeviceDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;->getJsonRoot()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "{}"

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;
    .locals 2

    const-class v0, Lcom/zte/statistics/sdk/offline/PayloadManager;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/zte/statistics/sdk/offline/PayloadManager;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/offline/PayloadManager;-><init>()V

    sput-object v1, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;

    .line 95
    :cond_0
    sget-object v1, Lcom/zte/statistics/sdk/offline/PayloadManager;->instance:Lcom/zte/statistics/sdk/offline/PayloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0

    throw v1
.end method

.method private send(Landroid/content/Context;Ljava/lang/String;Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Z)Z
    .locals 1

    .line 216
    new-instance p0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {p3}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method


# virtual methods
.method public deleteRecord(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Ljava/lang/String;)V
    .locals 0

    .line 142
    sget-object p0, Lcom/zte/statistics/sdk/offline/PayloadManager$1;->$SwitchMap$com$zte$statistics$sdk$comm$ConstantDefine$RecordType:[I

    invoke-virtual {p1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->deleteRecord()I

    goto :goto_0

    .line 160
    :pswitch_1
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->deleteRecord()I

    goto :goto_0

    .line 156
    :pswitch_2
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    .line 157
    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->deleteRecord(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_3
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/PVdao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/PVdao;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/PVdao;->deleteRecord()I

    goto :goto_0

    .line 144
    :pswitch_4
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/DeviceDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;->deleteRecord()I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized ensureRunning(Lcom/zte/statistics/sdk/CollectionSendResult;Landroid/content/Context;Z)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zte/statistics/sdk/offline/PayloadManager$UploadThread;-><init>(Lcom/zte/statistics/sdk/offline/PayloadManager;Lcom/zte/statistics/sdk/CollectionSendResult;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

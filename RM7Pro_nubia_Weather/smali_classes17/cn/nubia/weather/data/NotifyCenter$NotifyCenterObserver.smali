.class Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;
.super Ljava/lang/Object;
.source "NotifyCenter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/NotifyCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyCenterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/data/NotifyCenter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/data/NotifyCenter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/data/NotifyCenter;Lcn/nubia/weather/data/NotifyCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/data/NotifyCenter;
    .param p2, "x1"    # Lcn/nubia/weather/data/NotifyCenter$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;-><init>(Lcn/nubia/weather/data/NotifyCenter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v4, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/NotifyCenter;->access$200(Lcn/nubia/weather/data/NotifyCenter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 115
    if-nez p2, :cond_0

    .line 116
    :try_start_0
    monitor-exit v5

    .line 137
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v4, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-static {v4, p2}, Lcn/nubia/weather/data/NotifyCenter;->access$300(Lcn/nubia/weather/data/NotifyCenter;Ljava/lang/Object;)V

    .line 119
    iget-object v4, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-virtual {v4}, Lcn/nubia/weather/data/NotifyCenter;->isNeedNotify()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    const-string v4, "NotifyCenter"

    const-string v6, "The FirstData do not change, there is no need Notify"

    invoke-static {v4, v6}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    monitor-exit v5

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 124
    :cond_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    move-object v2, v0

    .line 125
    .local v2, "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;

    move-result-object v3

    .line 126
    .local v3, "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v3, v4, :cond_3

    .line 132
    :cond_2
    iget-object v4, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/NotifyCenter;->access$400(Lcn/nubia/weather/data/NotifyCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1300001

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iget-object v4, p0, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;->this$0:Lcn/nubia/weather/data/NotifyCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/NotifyCenter;->access$400(Lcn/nubia/weather/data/NotifyCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1300001

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.class Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;
.super Ljava/lang/Object;
.source "CityOrderCenter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/CityOrderCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCenterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/data/CityOrderCenter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/data/CityOrderCenter;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/data/CityOrderCenter;Lcn/nubia/weather/data/CityOrderCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/data/CityOrderCenter;
    .param p2, "x1"    # Lcn/nubia/weather/data/CityOrderCenter$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;-><init>(Lcn/nubia/weather/data/CityOrderCenter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v4, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/CityOrderCenter;->access$200(Lcn/nubia/weather/data/CityOrderCenter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 117
    if-nez p2, :cond_0

    .line 118
    :try_start_0
    monitor-exit v5

    .line 137
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object v0, p2

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    move-object v2, v0

    .line 121
    .local v2, "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;

    move-result-object v3

    .line 122
    .local v3, "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v3, v4, :cond_3

    .line 126
    :cond_1
    iget-object v4, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/CityOrderCenter;->access$300(Lcn/nubia/weather/data/CityOrderCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1200001

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    iget-object v4, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/CityOrderCenter;->access$300(Lcn/nubia/weather/data/CityOrderCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1200001

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_2
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v2    # "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .end local v3    # "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 130
    .restart local v2    # "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .restart local v3    # "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    :cond_3
    :try_start_1
    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v3, v4, :cond_2

    .line 132
    iget-object v4, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/CityOrderCenter;->access$300(Lcn/nubia/weather/data/CityOrderCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1200002

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    iget-object v4, p0, Lcn/nubia/weather/data/CityOrderCenter$DataCenterObserver;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-static {v4}, Lcn/nubia/weather/data/CityOrderCenter;->access$300(Lcn/nubia/weather/data/CityOrderCenter;)Landroid/os/Handler;

    move-result-object v4

    const v6, 0x1200002

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

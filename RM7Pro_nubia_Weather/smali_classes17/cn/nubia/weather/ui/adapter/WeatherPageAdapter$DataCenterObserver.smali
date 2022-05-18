.class Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;
.super Ljava/lang/Object;
.source "WeatherPageAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCenterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
    .param p2, "x1"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 298
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$200(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 299
    if-nez p2, :cond_0

    .line 300
    :try_start_0
    monitor-exit v6

    .line 327
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v0, p2

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    move-object v3, v0

    .line 303
    .local v3, "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v3}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;

    move-result-object v4

    .line 305
    .local v4, "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v4, v5, :cond_3

    .line 309
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 310
    .local v2, "message":Landroid/os/Message;
    const v5, 0x8000001

    iput v5, v2, Landroid/os/Message;->what:I

    .line 311
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v5

    const v7, 0x8000001

    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v5

    const v7, 0x8000001

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_2
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    monitor-exit v6

    goto :goto_0

    .line 326
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .end local v4    # "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 317
    .restart local v3    # "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .restart local v4    # "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    :cond_3
    :try_start_1
    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v4, v5, :cond_5

    .line 321
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 322
    .restart local v2    # "message":Landroid/os/Message;
    const/high16 v5, 0x8000000

    iput v5, v2, Landroid/os/Message;->what:I

    .line 323
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    monitor-exit v6

    goto :goto_0

    .line 326
    .end local v2    # "message":Landroid/os/Message;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

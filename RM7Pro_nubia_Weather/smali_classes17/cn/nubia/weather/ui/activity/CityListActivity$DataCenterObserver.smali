.class Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCenterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/ui/activity/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p2, "x1"    # Lcn/nubia/weather/ui/activity/CityListActivity$1;

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1029
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1800(Lcn/nubia/weather/ui/activity/CityListActivity;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1031
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    move-object v2, v0

    .line 1032
    .local v2, "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;

    move-result-object v3

    .line 1034
    .local v3, "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v3, v4, :cond_2

    .line 1038
    :cond_0
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1900(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    move-result-object v4

    const/high16 v6, 0x130000

    invoke-virtual {v4, v6}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->sendEmptyMessage(I)Z

    .line 1044
    :cond_1
    :goto_0
    monitor-exit v5

    .line 1045
    return-void

    .line 1040
    :cond_2
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1900(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    move-result-object v4

    const v6, 0x130001

    invoke-virtual {v4, v6}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1041
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1900(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    move-result-object v4

    const v6, 0x130001

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v6, v8, v9}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1044
    .end local v2    # "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .end local v3    # "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

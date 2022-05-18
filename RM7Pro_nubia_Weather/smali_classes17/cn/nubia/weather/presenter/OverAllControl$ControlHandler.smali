.class Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;
.super Landroid/os/Handler;
.source "OverAllControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/presenter/OverAllControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/presenter/OverAllControl;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p2, "x1"    # Lcn/nubia/weather/presenter/OverAllControl$1;

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 871
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 872
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 918
    :goto_0
    return-void

    .line 874
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v1}, Lcn/nubia/weather/presenter/OverAllControl;->unRegisterWifiScanBroadCast()V

    goto :goto_0

    .line 877
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 878
    .local v0, "isDelay":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 879
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate(Z)V

    goto :goto_0

    .line 881
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate(Z)V

    goto :goto_0

    .line 885
    .end local v0    # "isDelay":Ljava/lang/Boolean;
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v2, v1}, Lcn/nubia/weather/presenter/OverAllControl;->queryManualWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 888
    :pswitch_3
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v1}, Lcn/nubia/weather/presenter/OverAllControl;->cloaseLocationClient()V

    goto :goto_0

    .line 891
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$700(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 903
    :pswitch_5
    new-instance v1, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 910
    invoke-virtual {v1, v2}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 913
    :pswitch_6
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v1}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate()V

    goto :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x16000010
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

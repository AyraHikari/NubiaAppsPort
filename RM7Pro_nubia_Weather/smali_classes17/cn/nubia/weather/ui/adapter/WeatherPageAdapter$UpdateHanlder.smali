.class Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;
.super Landroid/os/Handler;
.source "WeatherPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
    .param p2, "x1"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 387
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setData()V

    .line 391
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$400(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 392
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$400(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 396
    .end local v0    # "message":Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    invoke-virtual {v2, v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->doUpdate(Lcn/nubia/weather/data/DataCenter$ObserverObject;)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x8000000
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;
.super Ljava/lang/Object;
.source "WeatherPageAdapter.java"

# interfaces
.implements Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->doUpdate(Lcn/nubia/weather/data/DataCenter$ObserverObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 349
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshData()V
    .locals 3

    .prologue
    const v2, 0x8000002

    .line 352
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, "message":Landroid/os/Message;
    const/high16 v1, 0x8000000

    iput v1, v0, Landroid/os/Message;->what:I

    .line 357
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method

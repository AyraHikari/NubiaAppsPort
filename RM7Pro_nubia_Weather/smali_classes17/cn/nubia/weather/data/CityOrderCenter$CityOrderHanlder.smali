.class Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;
.super Landroid/os/Handler;
.source "CityOrderCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/CityOrderCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityOrderHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/data/CityOrderCenter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/data/CityOrderCenter;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/data/CityOrderCenter;Lcn/nubia/weather/data/CityOrderCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/data/CityOrderCenter;
    .param p2, "x1"    # Lcn/nubia/weather/data/CityOrderCenter$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;-><init>(Lcn/nubia/weather/data/CityOrderCenter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-virtual {v0}, Lcn/nubia/weather/data/CityOrderCenter;->updateCityOrder()V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/weather/data/CityOrderCenter$CityOrderHanlder;->this$0:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-virtual {v0}, Lcn/nubia/weather/data/CityOrderCenter;->clearCityOrder()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1200001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

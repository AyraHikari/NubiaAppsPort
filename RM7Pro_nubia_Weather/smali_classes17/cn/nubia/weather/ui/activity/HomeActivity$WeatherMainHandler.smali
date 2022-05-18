.class public Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherMainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$000(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$100(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->notifyDataSetChanged()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

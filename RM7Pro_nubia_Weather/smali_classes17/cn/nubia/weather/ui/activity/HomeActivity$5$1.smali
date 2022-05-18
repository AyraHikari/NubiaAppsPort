.class Lcn/nubia/weather/ui/activity/HomeActivity$5$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity$5;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/activity/HomeActivity$5;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/activity/HomeActivity$5;

    .prologue
    .line 724
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$5$1;->this$1:Lcn/nubia/weather/ui/activity/HomeActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    const-string v0, "WeatherMainActivity"

    const-string v1, "mDataSetObserver"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$5$1;->this$1:Lcn/nubia/weather/ui/activity/HomeActivity$5;

    iget-object v0, v0, Lcn/nubia/weather/ui/activity/HomeActivity$5;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$700(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    .line 730
    return-void
.end method

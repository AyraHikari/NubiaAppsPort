.class Lcn/nubia/weather/ui/activity/HomeActivity$5;
.super Landroid/database/DataSetObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 719
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$5;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 722
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 723
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$5;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$600(Lcn/nubia/weather/ui/activity/HomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$5;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$800(Lcn/nubia/weather/ui/activity/HomeActivity;)Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/ui/activity/HomeActivity$5$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/HomeActivity$5$1;-><init>(Lcn/nubia/weather/ui/activity/HomeActivity$5;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    :cond_0
    return-void
.end method

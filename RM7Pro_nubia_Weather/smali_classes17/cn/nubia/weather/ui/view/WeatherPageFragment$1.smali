.class Lcn/nubia/weather/ui/view/WeatherPageFragment$1;
.super Ljava/lang/Object;
.source "WeatherPageFragment.java"

# interfaces
.implements Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/WeatherPageFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 1335
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pullDownState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1339
    if-nez p1, :cond_0

    .line 1340
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$100(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V

    .line 1344
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$200(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1349
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1350
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$200(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1353
    :cond_2
    return-void
.end method

.method public refreshBackAnimationEnd()V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$400(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$400(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;->refreshData()V

    .line 1368
    :cond_0
    return-void
.end method

.method public willRefresh()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$300(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/view/OnScrollHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->onRefreshCurrentItem(Lcn/nubia/weather/ui/view/OnScrollHelper;)V

    .line 1359
    return-void
.end method

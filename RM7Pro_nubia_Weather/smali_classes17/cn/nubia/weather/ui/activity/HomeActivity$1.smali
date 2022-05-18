.class Lcn/nubia/weather/ui/activity/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 154
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 157
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    iget-object v3, v3, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$200(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    iget-object v3, v3, Lcn/nubia/weather/ui/activity/HomeActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 161
    .local v0, "grant":Z
    const-string v3, "WeatherMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WeatherMainActivity onCreate grant \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$200(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcn/nubia/weather/data/DataCenter;->getWeatherInfoList()Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    const-string v4, "WeatherMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    .line 169
    :cond_3
    const-string v3, "WeatherMainActivity"

    const-string v4, "onCreate: startCityListActivity "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$300(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    goto :goto_0

    .line 167
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 172
    :cond_5
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/HomeActivity$1;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$200(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    .line 174
    .local v1, "weather":Lcn/nubia/weather/model/WeatherModel;
    const-string v4, "WeatherMainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: weather.getType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

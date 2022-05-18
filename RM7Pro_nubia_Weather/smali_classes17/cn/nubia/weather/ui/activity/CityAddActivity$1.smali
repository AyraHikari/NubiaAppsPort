.class Lcn/nubia/weather/ui/activity/CityAddActivity$1;
.super Lcn/nubia/weather/persistent/QueryCallback;
.source "CityAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;->initDatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Lcn/nubia/weather/persistent/QueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryHotCityComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-super {p0, p1}, Lcn/nubia/weather/persistent/QueryCallback;->onQueryHotCityComplete(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v0, p1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$102(Lcn/nubia/weather/ui/activity/CityAddActivity;Ljava/util/List;)Ljava/util/List;

    .line 180
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$200(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$1;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$200(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method

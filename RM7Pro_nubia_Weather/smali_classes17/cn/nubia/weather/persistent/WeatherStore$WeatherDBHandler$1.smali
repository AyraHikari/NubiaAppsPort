.class Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;
.super Ljava/lang/Object;
.source "WeatherStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->this$1:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iput p2, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$token:I

    iput-object p3, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cookie:Ljava/lang/Object;

    iput-object p4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 97
    new-instance v2, Ljava/lang/Integer;

    iget v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$token:I

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 98
    .local v2, "i":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 99
    .local v0, "callback":Lcn/nubia/weather/persistent/QueryCallback;
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->this$1:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-static {v4}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->access$000(Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcn/nubia/weather/persistent/QueryCallback;
    check-cast v0, Lcn/nubia/weather/persistent/QueryCallback;

    .restart local v0    # "callback":Lcn/nubia/weather/persistent/QueryCallback;
    if-eqz v0, :cond_0

    .line 100
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->this$1:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$token:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->removeCallback(Ljava/lang/Integer;)V

    .line 101
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cookie:Ljava/lang/Object;

    const-string v5, "KEY_QUERY_HOTCITY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcn/nubia/weather/persistent/DBHelper;->getHotCities(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-virtual {v0, v1}, Lcn/nubia/weather/persistent/QueryCallback;->onQueryHotCityComplete(Ljava/util/List;)V

    .line 115
    .end local v1    # "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cookie:Ljava/lang/Object;

    const-string v5, "KEY_QUERY_ALLCITY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcn/nubia/weather/persistent/DBHelper;->getAllCities(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 106
    .restart local v1    # "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-virtual {v0, v1}, Lcn/nubia/weather/persistent/QueryCallback;->onQueryAllCityComplete(Ljava/util/List;)V

    goto :goto_0

    .line 107
    .end local v1    # "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :cond_2
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cookie:Ljava/lang/Object;

    const-string v5, "KEY_QUERY_ALLWEATHER"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-virtual {v0, v3}, Lcn/nubia/weather/persistent/QueryCallback;->onQueryAllWeatherComplete(Ljava/util/List;)V

    goto :goto_0

    .line 110
    .end local v3    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_3
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cookie:Ljava/lang/Object;

    invoke-static {}, Lcn/nubia/weather/persistent/WeatherStore;->access$100()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 112
    .restart local v3    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-virtual {v0, v3}, Lcn/nubia/weather/persistent/QueryCallback;->onQueryWeatherByIDComplete(Ljava/util/List;)V

    goto :goto_0
.end method

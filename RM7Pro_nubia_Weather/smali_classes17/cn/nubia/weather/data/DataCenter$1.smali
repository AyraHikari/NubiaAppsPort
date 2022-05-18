.class Lcn/nubia/weather/data/DataCenter$1;
.super Ljava/lang/Object;
.source "DataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/data/DataCenter;->initWeatherInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/data/DataCenter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mCityOrderCenter:Lcn/nubia/weather/data/CityOrderCenter;


# direct methods
.method constructor <init>(Lcn/nubia/weather/data/DataCenter;Landroid/content/Context;Lcn/nubia/weather/data/CityOrderCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/data/DataCenter;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    iput-object p2, p0, Lcn/nubia/weather/data/DataCenter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/weather/data/DataCenter$1;->val$mCityOrderCenter:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 85
    const-string v1, "dc initWeatherInfo"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    :try_start_0
    const-string v1, "DataCenter"

    const-string v2, "DataCenter initWeatherInfos. start query WeatherInfo from DB"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeatherSync(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 90
    .local v7, "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    const-string v1, "DataCenter"

    const-string v2, "citys null"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/weather/data/DataCenter;->access$002(Lcn/nubia/weather/data/DataCenter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 126
    :goto_0
    return-void

    .line 95
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->access$100(Lcn/nubia/weather/data/DataCenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 96
    const-string v1, "DataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city num is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->val$mCityOrderCenter:Lcn/nubia/weather/data/CityOrderCenter;

    invoke-virtual {v1}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v6

    .line 99
    .local v6, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    const-string v1, "DataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of cityorder is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    .line 101
    .local v9, "order":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    .line 102
    .local v8, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 103
    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    invoke-virtual {v9}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 105
    const-string v2, "DataCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init WeatherInfo add city. CityName is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " areaID is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Lcn/nubia/weather/data/DataCenter;->access$200(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/model/WeatherModel;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v6    # "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    .end local v7    # "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    .end local v8    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v9    # "order":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    .line 115
    .restart local v6    # "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    .restart local v7    # "citys":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/weather/data/DataCenter;->access$002(Lcn/nubia/weather/data/DataCenter;Z)Z

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->access$300(Lcn/nubia/weather/data/DataCenter;)V

    .line 120
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter$1;->this$0:Lcn/nubia/weather/data/DataCenter;

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0
.end method

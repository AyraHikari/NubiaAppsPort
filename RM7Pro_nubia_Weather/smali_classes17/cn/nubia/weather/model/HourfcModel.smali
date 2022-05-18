.class public Lcn/nubia/weather/model/HourfcModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "HourfcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HourfcModel"


# instance fields
.field private mHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 171
    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/HourfcJsonBean;)Lcn/nubia/weather/model/HourfcModel;
    .locals 6
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/HourfcJsonBean;

    .prologue
    .line 151
    new-instance v3, Lcn/nubia/weather/model/HourfcModel;

    invoke-direct {v3}, Lcn/nubia/weather/model/HourfcModel;-><init>()V

    .line 152
    .local v3, "result":Lcn/nubia/weather/model/HourfcModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/HourfcModel;->setmAreaID(Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/HourfcModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 156
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean;->getFc()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;

    .line 158
    .local v0, "b":Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    const/4 v3, 0x0

    .line 168
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;
    .end local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .end local v3    # "result":Lcn/nubia/weather/model/HourfcModel;
    :cond_0
    :goto_1
    return-object v3

    .line 161
    .restart local v0    # "b":Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;
    .restart local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .restart local v3    # "result":Lcn/nubia/weather/model/HourfcModel;
    :cond_1
    invoke-static {p0, v0}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;)Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/HourfcJsonBean$HourJsonBean;
    .end local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HourfcModel"

    const-string v5, "Convert HourfcJsonBean  To HourfcModel Fail. "

    invoke-static {v4, v5, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    :cond_2
    :try_start_1
    iput-object v2, v3, Lcn/nubia/weather/model/HourfcModel;->mHours:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/HourfcModel;
    .locals 4
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const/4 v2, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 139
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 140
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/HourfcJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/HourfcJsonBean;

    .line 141
    .local v0, "bean":Lcn/nubia/weather/jsonbean/HourfcJsonBean;
    const/4 v2, 0x0

    .line 142
    .local v2, "result":Lcn/nubia/weather/model/HourfcModel;
    if-eqz v0, :cond_0

    .line 143
    new-instance v2, Lcn/nubia/weather/model/HourfcModel;

    .end local v2    # "result":Lcn/nubia/weather/model/HourfcModel;
    invoke-direct {v2}, Lcn/nubia/weather/model/HourfcModel;-><init>()V

    .line 144
    .restart local v2    # "result":Lcn/nubia/weather/model/HourfcModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/HourfcJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 145
    invoke-static {p0, v0}, Lcn/nubia/weather/model/HourfcModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/HourfcJsonBean;)Lcn/nubia/weather/model/HourfcModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;)Lcn/nubia/weather/model/HourfcModel;
    .locals 8
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;

    .prologue
    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "result":Lcn/nubia/weather/model/HourfcModel;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->getmHourlyForecastInfos()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 109
    new-instance v4, Lcn/nubia/weather/model/HourfcModel;

    .end local v4    # "result":Lcn/nubia/weather/model/HourfcModel;
    invoke-direct {v4}, Lcn/nubia/weather/model/HourfcModel;-><init>()V

    .line 110
    .restart local v4    # "result":Lcn/nubia/weather/model/HourfcModel;
    invoke-virtual {v4, p0}, Lcn/nubia/weather/model/HourfcModel;->setmAreaID(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4, p1}, Lcn/nubia/weather/model/HourfcModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "hourfcInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    const/4 v3, 0x0

    .line 115
    .local v3, "model":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->getmHourlyForecastInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;

    .line 116
    .local v2, "hourlyForecastInfo":Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    :cond_1
    const/4 v5, 0x0

    .line 132
    .end local v1    # "hourfcInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .end local v2    # "hourlyForecastInfo":Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    .end local v3    # "model":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :goto_1
    return-object v5

    .line 119
    .restart local v1    # "hourfcInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .restart local v2    # "hourlyForecastInfo":Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    .restart local v3    # "model":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :cond_2
    invoke-static {p0, v2}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;)Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v2    # "hourlyForecastInfo":Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HourfcModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildForHuaFeng convert HourlyForecastJsonBean to HourfcModel e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hourfcInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .end local v3    # "model":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :cond_3
    :goto_2
    move-object v5, v4

    .line 132
    goto :goto_1

    .line 125
    .restart local v1    # "hourfcInfoModelList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    .restart local v3    # "model":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :cond_4
    :try_start_1
    iput-object v1, v4, Lcn/nubia/weather/model/HourfcModel;->mHours:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/HourfcModel;
    .locals 7
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const/4 v4, 0x0

    .line 103
    :goto_0
    return-object v4

    .line 90
    :cond_0
    new-instance v0, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;

    invoke-direct {v0}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;-><init>()V

    .line 91
    .local v0, "bean":Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v4, [Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;

    .line 95
    .local v3, "hourlyForecastInfos":[Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    if-eqz v3, :cond_1

    .line 96
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->setmHourlyForecastInfos(Ljava/util/List;)V

    .line 98
    :cond_1
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;->setmJsonStr(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3    # "hourlyForecastInfos":[Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean$HourlyForecastInfo;
    :goto_1
    invoke-static {p0, v0}, Lcn/nubia/weather/model/HourfcModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/HourlyForecastJsonBean;)Lcn/nubia/weather/model/HourfcModel;

    move-result-object v4

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 101
    const-string v4, "HourfcModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildForHuaFeng e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/HourfcModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Lcn/nubia/weather/model/HourfcModel;

    .line 41
    .local v0, "info":Lcn/nubia/weather/model/HourfcModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/HourfcModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/HourfcModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    invoke-virtual {p0}, Lcn/nubia/weather/model/HourfcModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/HourfcModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getmHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel;->mHours:Ljava/util/List;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/model/HourfcModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 282
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 283
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->HOURFC:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/HourfcModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 289
    return-void
.end method

.method public setmHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "mHours":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel;->mHours:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/weather/model/HourfcModel;->mPublishTime:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HourfcModel [mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/HourfcModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/HourfcModel;->mHours:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcn/nubia/weather/model/AlarmModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "AlarmModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 174
    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AlarmJsonBean;)Lcn/nubia/weather/model/AlarmModel;
    .locals 6
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/AlarmJsonBean;

    .prologue
    .line 153
    new-instance v3, Lcn/nubia/weather/model/AlarmModel;

    invoke-direct {v3}, Lcn/nubia/weather/model/AlarmModel;-><init>()V

    .line 154
    .local v3, "result":Lcn/nubia/weather/model/AlarmModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/AlarmModel;->setmAreaID(Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/AlarmModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 159
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean;->getW()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;

    .line 161
    .local v1, "b":Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    const/4 v3, 0x0

    .line 171
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v1    # "b":Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
    .end local v3    # "result":Lcn/nubia/weather/model/AlarmModel;
    :cond_0
    :goto_1
    return-object v3

    .line 164
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v1    # "b":Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
    .restart local v3    # "result":Lcn/nubia/weather/model/AlarmModel;
    :cond_1
    invoke-static {p0, v1}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;)Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v1    # "b":Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AlarmModel"

    const-string v5, "Convert IndexJsonBean  To IndexModel Fail. "

    invoke-static {v4, v5, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 166
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    :cond_2
    :try_start_1
    iput-object v0, v3, Lcn/nubia/weather/model/AlarmModel;->mAlarms:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AlarmModel;
    .locals 4
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const/4 v2, 0x0

    .line 148
    :cond_0
    :goto_0
    return-object v2

    .line 138
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 139
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/AlarmJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/AlarmJsonBean;

    .line 140
    .local v0, "bean":Lcn/nubia/weather/jsonbean/AlarmJsonBean;
    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 143
    :cond_2
    const/4 v2, 0x0

    .line 144
    .local v2, "result":Lcn/nubia/weather/model/AlarmModel;
    if-eqz v0, :cond_0

    .line 145
    new-instance v2, Lcn/nubia/weather/model/AlarmModel;

    .end local v2    # "result":Lcn/nubia/weather/model/AlarmModel;
    invoke-direct {v2}, Lcn/nubia/weather/model/AlarmModel;-><init>()V

    .line 146
    .restart local v2    # "result":Lcn/nubia/weather/model/AlarmModel;
    invoke-static {p0, v0}, Lcn/nubia/weather/model/AlarmModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AlarmJsonBean;)Lcn/nubia/weather/model/AlarmModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;)Lcn/nubia/weather/model/AlarmModel;
    .locals 7
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "result":Lcn/nubia/weather/model/AlarmModel;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->getmAlertInfos()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 111
    new-instance v4, Lcn/nubia/weather/model/AlarmModel;

    .end local v4    # "result":Lcn/nubia/weather/model/AlarmModel;
    invoke-direct {v4}, Lcn/nubia/weather/model/AlarmModel;-><init>()V

    .line 112
    .restart local v4    # "result":Lcn/nubia/weather/model/AlarmModel;
    invoke-virtual {v4, p0}, Lcn/nubia/weather/model/AlarmModel;->setmAreaID(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4, p1}, Lcn/nubia/weather/model/AlarmModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->getmAlertInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;

    .line 117
    .local v1, "alertInfo":Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    :cond_1
    const/4 v5, 0x0

    .line 131
    .end local v0    # "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v1    # "alertInfo":Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    :goto_1
    return-object v5

    .line 120
    .restart local v0    # "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v1    # "alertInfo":Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    :cond_2
    invoke-static {p0, v1}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;)Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    move-result-object v3

    .line 121
    .local v3, "model":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v1    # "alertInfo":Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    .end local v3    # "model":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string v5, "AlarmModel"

    const-string v6, "buildForHuaFeng Convert AlertJsonBean To AlarmModel Fail. "

    invoke-static {v5, v6, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iput-object v0, v4, Lcn/nubia/weather/model/AlarmModel;->mAlarms:Ljava/util/List;

    .end local v0    # "alarmInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    :cond_4
    move-object v5, v4

    .line 131
    goto :goto_1
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AlarmModel;
    .locals 7
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v4

    .line 90
    :cond_1
    new-instance v1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;

    invoke-direct {v1}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;-><init>()V

    .line 91
    .local v1, "bean":Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v5, [Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;

    .line 95
    .local v0, "alertInfos":[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->setmAlertInfos(Ljava/util/List;)V

    .line 100
    invoke-virtual {v1, p1}, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;->setmJsonStr(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "alertInfos":[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;
    :goto_1
    invoke-static {p0, v1}, Lcn/nubia/weather/model/AlarmModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean;)Lcn/nubia/weather/model/AlarmModel;

    move-result-object v4

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v4, "AlarmModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildForHuaFeng e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

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

    .line 32
    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/AlarmModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcn/nubia/weather/model/AlarmModel;

    .line 40
    .local v0, "info":Lcn/nubia/weather/model/AlarmModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/AlarmModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {p0}, Lcn/nubia/weather/model/AlarmModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmPublishTime()Ljava/util/Date;

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

.method public getmAlarms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel;->mAlarms:Ljava/util/List;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel;->mPublishTime:Ljava/util/Date;

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
    .line 324
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 325
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->ALARM:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/AlarmModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 330
    return-void
.end method

.method public setmAlarms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "mAlarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel;->mAlarms:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel;->mPublishTime:Ljava/util/Date;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmModel [mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/AlarmModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/AlarmModel;->mAlarms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

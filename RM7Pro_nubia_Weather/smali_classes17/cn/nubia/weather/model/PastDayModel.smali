.class public Lcn/nubia/weather/model/PastDayModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "PastDayModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PastDayModel"


# instance fields
.field private mLastAverageTemp:F

.field private mPasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/PastDayModel$PastInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/weather/model/PastDayModel;->mLastAverageTemp:F

    .line 119
    return-void
.end method

.method public static build(Ljava/lang/String;F)Lcn/nubia/weather/model/PastDayModel;
    .locals 1
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "temp"    # F

    .prologue
    .line 84
    new-instance v0, Lcn/nubia/weather/model/PastDayModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/PastDayModel;-><init>()V

    .line 85
    .local v0, "result":Lcn/nubia/weather/model/PastDayModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/PastDayModel;->setmLastAverageTemp(F)V

    .line 86
    return-object v0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/PastDayModel;
    .locals 9
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 116
    :cond_0
    :goto_0
    return-object v5

    .line 93
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 94
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v7, Lcn/nubia/weather/jsonbean/PastDayJsonBean;

    invoke-virtual {v3, p1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/PastDayJsonBean;

    .line 95
    .local v1, "bean":Lcn/nubia/weather/jsonbean/PastDayJsonBean;
    invoke-virtual {v1, p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, "result":Lcn/nubia/weather/model/PastDayModel;
    if-eqz v1, :cond_0

    .line 98
    new-instance v5, Lcn/nubia/weather/model/PastDayModel;

    .end local v5    # "result":Lcn/nubia/weather/model/PastDayModel;
    invoke-direct {v5}, Lcn/nubia/weather/model/PastDayModel;-><init>()V

    .line 99
    .restart local v5    # "result":Lcn/nubia/weather/model/PastDayModel;
    invoke-virtual {v5, p0}, Lcn/nubia/weather/model/PastDayModel;->setmAreaID(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5, v1}, Lcn/nubia/weather/model/PastDayModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 102
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/PastDayModel$PastInfoModel;>;"
    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean;->getP()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;

    .line 104
    .local v0, "b":Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->isValid()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v5, v6

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p0, v0}, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;)Lcn/nubia/weather/model/PastDayModel$PastInfoModel;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;
    .end local v4    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/PastDayModel$PastInfoModel;>;"
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PastDayModel"

    const-string v7, "Convert PastDayJsonBean  To PastDayModel Fail. "

    invoke-static {v6, v7, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/PastDayModel$PastInfoModel;>;"
    :cond_3
    :try_start_1
    iput-object v4, v5, Lcn/nubia/weather/model/PastDayModel;->mPasts:Ljava/util/List;

    .line 110
    const-string v6, "PastDayModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PastDayModel reslut"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
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

    .line 26
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v2

    .line 29
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/PastDayModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Lcn/nubia/weather/model/PastDayModel;

    .line 34
    .local v0, "info":Lcn/nubia/weather/model/PastDayModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/PastDayModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/PastDayModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {p0}, Lcn/nubia/weather/model/PastDayModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/PastDayModel;->getmPublishTime()Ljava/util/Date;

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

.method public getmLastAverageTemp()F
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/weather/model/PastDayModel;->mLastAverageTemp:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/weather/model/PastDayModel;->mLastAverageTemp:F

    goto :goto_0
.end method

.method public getmPasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/PastDayModel$PastInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/model/PastDayModel;->mPasts:Ljava/util/List;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/weather/model/PastDayModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 173
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmPastDay(Lcn/nubia/weather/model/PastDayModel;)V

    .line 174
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->PASTDAY:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/PastDayModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 180
    return-void
.end method

.method public setmLastAverageTemp(F)V
    .locals 0
    .param p1, "mLastAverageTemp"    # F

    .prologue
    .line 70
    iput p1, p0, Lcn/nubia/weather/model/PastDayModel;->mLastAverageTemp:F

    .line 71
    return-void
.end method

.method public setmPasts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/PastDayModel$PastInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "mPasts":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/PastDayModel$PastInfoModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/model/PastDayModel;->mPasts:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/model/PastDayModel;->mPublishTime:Ljava/util/Date;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PastDayModel [mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/PastDayModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPasts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/PastDayModel;->mPasts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

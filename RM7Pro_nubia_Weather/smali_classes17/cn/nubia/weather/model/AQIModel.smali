.class public Lcn/nubia/weather/model/AQIModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "AQIModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AQIModel"


# instance fields
.field private mAQI:F

.field private mPM10:F

.field private mPM25:F

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AQIJsonBean;)Lcn/nubia/weather/model/AQIModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/AQIJsonBean;

    .prologue
    .line 164
    new-instance v1, Lcn/nubia/weather/model/AQIModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/AQIModel;-><init>()V

    .line 165
    .local v1, "result":Lcn/nubia/weather/model/AQIModel;
    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {v1, p0}, Lcn/nubia/weather/model/AQIModel;->setmAreaID(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcn/nubia/weather/model/AQIModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 169
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mPM10:F

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mPM25:F

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP9()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP9()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->getP()Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/AQIJsonBean$AirInfo;->getP9()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMddHHmm"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_3
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AQIModel"

    const-string v3, "Convert AQIJsonBean  To AQIModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AQIModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v2, 0x0

    .line 160
    :cond_0
    :goto_0
    return-object v2

    .line 153
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 154
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/AQIJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/AQIJsonBean;

    .line 155
    .local v0, "bean":Lcn/nubia/weather/jsonbean/AQIJsonBean;
    new-instance v2, Lcn/nubia/weather/model/AQIModel;

    invoke-direct {v2}, Lcn/nubia/weather/model/AQIModel;-><init>()V

    .line 156
    .local v2, "result":Lcn/nubia/weather/model/AQIModel;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/AQIJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, v0}, Lcn/nubia/weather/model/AQIModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AQIJsonBean;)Lcn/nubia/weather/model/AQIModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;)Lcn/nubia/weather/model/AQIModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;

    .prologue
    .line 117
    new-instance v1, Lcn/nubia/weather/model/AQIModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/AQIModel;-><init>()V

    .line 118
    .local v1, "result":Lcn/nubia/weather/model/AQIModel;
    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {v1, p0}, Lcn/nubia/weather/model/AQIModel;->setmAreaID(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p1}, Lcn/nubia/weather/model/AQIModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 122
    if-eqz p1, :cond_3

    .line 123
    :try_start_0
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->ParticulateMatter10:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->ParticulateMatter10:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mPM10:F

    .line 126
    :cond_0
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->ParticulateMatter10:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->ParticulateMatter2_5:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mPM25:F

    .line 129
    :cond_1
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->Index:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->Index:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    .line 132
    :cond_2
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->Date:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p1, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->Date:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :cond_3
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "AQIModel"

    const-string v3, "Convert AirQualityJsonBean  To AQIModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AQIModel"

    const-string v3, "Convert AirQualityJsonBean  To AQIModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AQIModel;
    .locals 8
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    const/4 v4, 0x0

    .line 113
    :cond_0
    :goto_0
    return-object v4

    .line 100
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 103
    .local v1, "bean":Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;
    :try_start_0
    const-class v5, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    const/4 v4, 0x0

    .line 109
    .local v4, "result":Lcn/nubia/weather/model/AQIModel;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 111
    invoke-static {p0, v1}, Lcn/nubia/weather/model/AQIModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AirQualityJsonBean;)Lcn/nubia/weather/model/AQIModel;

    move-result-object v4

    goto :goto_0

    .line 104
    .end local v4    # "result":Lcn/nubia/weather/model/AQIModel;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v5, "AQIModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildForHuaFeng e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
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

    .line 69
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/AQIModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Lcn/nubia/weather/model/AQIModel;

    .line 77
    .local v0, "info":Lcn/nubia/weather/model/AQIModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/AQIModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/AQIModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {p0}, Lcn/nubia/weather/model/AQIModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/AQIModel;->getmPublishTime()Ljava/util/Date;

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

.method public getmAQI()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    return v0
.end method

.method public getmPM10()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/nubia/weather/model/AQIModel;->mPM10:F

    return v0
.end method

.method public getmPM25()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcn/nubia/weather/model/AQIModel;->mPM25:F

    return v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 193
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 194
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->AQI:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/AQIModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 200
    return-void
.end method

.method public setmAQI(F)V
    .locals 0
    .param p1, "mAQI"    # F

    .prologue
    .line 46
    iput p1, p0, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    .line 47
    return-void
.end method

.method public setmPM10(F)V
    .locals 0
    .param p1, "mPM10"    # F

    .prologue
    .line 38
    iput p1, p0, Lcn/nubia/weather/model/AQIModel;->mPM10:F

    .line 39
    return-void
.end method

.method public setmPM25(F)V
    .locals 0
    .param p1, "mPM25"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/weather/model/AQIModel;->mPM25:F

    .line 31
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AQIModel [mPM25="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/AQIModel;->mPM25:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPM10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/AQIModel;->mPM10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAQI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/AQIModel;->mAQI:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/AQIModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

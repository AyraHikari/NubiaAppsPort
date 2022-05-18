.class public Lcn/nubia/weather/model/IndexModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "IndexModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/IndexModel$IndexInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 168
    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/IndexJsonBean;)Lcn/nubia/weather/model/IndexModel;
    .locals 6
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/IndexJsonBean;

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "result":Lcn/nubia/weather/model/IndexModel;
    if-eqz p1, :cond_1

    .line 148
    new-instance v3, Lcn/nubia/weather/model/IndexModel;

    .end local v3    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-direct {v3}, Lcn/nubia/weather/model/IndexModel;-><init>()V

    .line 149
    .restart local v3    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/IndexModel;->setmAreaID(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/IndexModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 152
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean;->getI()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;

    .line 154
    .local v0, "b":Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    const/4 v4, 0x0

    .line 165
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;
    .end local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :goto_1
    return-object v4

    .line 157
    .restart local v0    # "b":Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;
    .restart local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :cond_0
    invoke-static {p0, v0}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;)Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/IndexJsonBean$IndexOneJsonBean;
    .end local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "IndexModel"

    const-string v5, "Convert IndexJsonBean  To IndexModel Fail. "

    invoke-static {v4, v5, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    move-object v4, v3

    .line 165
    goto :goto_1

    .line 159
    .restart local v2    # "i":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :cond_2
    :try_start_1
    iput-object v2, v3, Lcn/nubia/weather/model/IndexModel;->mIndexes:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/IndexModel;
    .locals 4
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 142
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/IndexJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/IndexJsonBean;

    .line 136
    .local v0, "bean":Lcn/nubia/weather/jsonbean/IndexJsonBean;
    const/4 v2, 0x0

    .line 137
    .local v2, "result":Lcn/nubia/weather/model/IndexModel;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/IndexJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 139
    new-instance v2, Lcn/nubia/weather/model/IndexModel;

    .end local v2    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-direct {v2}, Lcn/nubia/weather/model/IndexModel;-><init>()V

    .line 140
    .restart local v2    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-static {p0, v0}, Lcn/nubia/weather/model/IndexModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/IndexJsonBean;)Lcn/nubia/weather/model/IndexModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;)Lcn/nubia/weather/model/IndexModel;
    .locals 6
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "result":Lcn/nubia/weather/model/IndexModel;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->getmIndicesInfos()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 110
    new-instance v3, Lcn/nubia/weather/model/IndexModel;

    .end local v3    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-direct {v3}, Lcn/nubia/weather/model/IndexModel;-><init>()V

    .line 111
    .restart local v3    # "result":Lcn/nubia/weather/model/IndexModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/IndexModel;->setmAreaID(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/IndexModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "IndexInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    const/4 v2, 0x0

    .line 115
    .local v2, "model":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->getmIndicesInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;

    .line 116
    .local v1, "indicesInfo":Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-static {p0, v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;)Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v1    # "indicesInfo":Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;
    :cond_1
    iput-object v0, v3, Lcn/nubia/weather/model/IndexModel;->mIndexes:Ljava/util/List;

    .line 126
    .end local v0    # "IndexInfoList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    .end local v2    # "model":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    :cond_2
    return-object v3
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/IndexModel;
    .locals 7
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v4

    .line 89
    :cond_1
    new-instance v0, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;

    invoke-direct {v0}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;-><init>()V

    .line 90
    .local v0, "bean":Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 92
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v5, [Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;

    invoke-virtual {v2, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;

    .line 94
    .local v3, "indicesInfos":[Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;
    if-eqz v3, :cond_0

    .line 95
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->setmIndicesInfos(Ljava/util/List;)V

    .line 99
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;->setmJsonStr(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v3    # "indicesInfos":[Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean$IndicesInfo;
    :goto_1
    invoke-static {p0, v0}, Lcn/nubia/weather/model/IndexModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/IndicesJsonBean;)Lcn/nubia/weather/model/IndexModel;

    move-result-object v4

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v4, "IndexModel"

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

    .line 102
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 64
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

    .line 31
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/IndexModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Lcn/nubia/weather/model/IndexModel;

    .line 39
    .local v0, "info":Lcn/nubia/weather/model/IndexModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/IndexModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/IndexModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    invoke-virtual {p0}, Lcn/nubia/weather/model/IndexModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/IndexModel;->getmPublishTime()Ljava/util/Date;

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

.method public getmIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/IndexModel$IndexInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel;->mIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/weather/model/IndexModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 267
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 268
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->INDEX:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/IndexModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 274
    return-void
.end method

.method public setmIndexes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/IndexModel$IndexInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "mIndexes":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel;->mIndexes:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/weather/model/IndexModel;->mPublishTime:Ljava/util/Date;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexModel [mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/IndexModel;->mIndexes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

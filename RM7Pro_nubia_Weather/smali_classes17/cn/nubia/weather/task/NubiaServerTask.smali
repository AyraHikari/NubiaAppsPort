.class public Lcn/nubia/weather/task/NubiaServerTask;
.super Lcn/nubia/weather/task/WeatherTask;
.source "NubiaServerTask.java"


# static fields
.field private static final mType:Ljava/lang/String; = "alldata"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/weather/task/WeatherTask;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 0
    .param p1, "areaID"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;
    .param p3, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/weather/task/WeatherTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/weather/task/NubiaServerTask;->mAreaID:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/nubia/weather/task/NubiaServerTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 21
    iput-object p3, p0, Lcn/nubia/weather/task/NubiaServerTask;->mListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 22
    return-void
.end method

.method public static getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "alldata"

    return-object v0
.end method


# virtual methods
.method protected getRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "alldata"

    return-object v0
.end method

.method protected getRequestURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "TYPE_NWS_SERVER"

    invoke-virtual {p0, v2}, Lcn/nubia/weather/task/NubiaServerTask;->getServerURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v2, "get_weather_data.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/task/NubiaServerTask;->mAreaID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const-string v2, "&type=alldata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/weather/task/NubiaServerTask;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/weather/task/NubiaServerTask;->getKeyAPPID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "keyInput":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/weather/task/NubiaServerTask;->getAPPID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcn/nubia/weather/task/NubiaServerTask;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getResultInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KEY_MAP_TYPE"

    invoke-virtual {p0}, Lcn/nubia/weather/task/NubiaServerTask;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "KEY_MAP_AREAID"

    iget-object v2, p0, Lcn/nubia/weather/task/NubiaServerTask;->mAreaID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "KEY_MAP_OPERATION_TYPE"

    iget-object v2, p0, Lcn/nubia/weather/task/NubiaServerTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v2}, Lcn/nubia/weather/app/Constant$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

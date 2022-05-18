.class public Lcn/nubia/weather/task/AlarmTask;
.super Lcn/nubia/weather/task/WeatherTask;
.source "AlarmTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmTask"

.field private static final mType:Ljava/lang/String; = "alerts"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 0
    .param p1, "areaID"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;
    .param p3, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/weather/task/WeatherTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/weather/task/AlarmTask;->mAreaID:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/nubia/weather/task/AlarmTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 21
    iput-object p3, p0, Lcn/nubia/weather/task/AlarmTask;->mListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 22
    return-void
.end method

.method public static getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "alerts"

    return-object v0
.end method


# virtual methods
.method protected getRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "alerts"

    return-object v0
.end method

.method protected getRequestURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcn/nubia/weather/utils/TimeUtils;->getRequestDate()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "requestDate":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "http://api.weathercn.com/alerts/v1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/weather/task/AlarmTask;->mAreaID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v2, "apikey=5265f58f029e4257a8bf94295e164957"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&requestDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&accessKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alerts"

    invoke-virtual {p0, v0, v3}, Lcn/nubia/weather/task/AlarmTask;->getAccessKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v2, "&details=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v2, "&language=zh-cn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v2, "AlarmTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequestURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
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
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KEY_MAP_TYPE"

    invoke-virtual {p0}, Lcn/nubia/weather/task/AlarmTask;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "KEY_MAP_AREAID"

    iget-object v2, p0, Lcn/nubia/weather/task/AlarmTask;->mAreaID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "KEY_MAP_OPERATION_TYPE"

    iget-object v2, p0, Lcn/nubia/weather/task/AlarmTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v2}, Lcn/nubia/weather/app/Constant$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v0
.end method

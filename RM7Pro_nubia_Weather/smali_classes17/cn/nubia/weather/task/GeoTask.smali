.class public Lcn/nubia/weather/task/GeoTask;
.super Lcn/nubia/weather/task/WeatherTask;
.source "GeoTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeoTask"

.field private static final mType:Ljava/lang/String; = "locations"


# instance fields
.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/weather/task/WeatherTask;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 1
    .param p1, "altitude"    # D
    .param p3, "latitude"    # D
    .param p5, "type"    # Lcn/nubia/weather/app/Constant$OperationType;
    .param p6, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/weather/task/WeatherTask;-><init>()V

    .line 24
    const-string v0, "TYPE_GEO"

    iput-object v0, p0, Lcn/nubia/weather/task/GeoTask;->mServerType:Ljava/lang/String;

    .line 25
    iput-wide p1, p0, Lcn/nubia/weather/task/GeoTask;->mLongitude:D

    .line 26
    iput-wide p3, p0, Lcn/nubia/weather/task/GeoTask;->mLatitude:D

    .line 27
    iput-object p6, p0, Lcn/nubia/weather/task/GeoTask;->mListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 28
    iput-object p5, p0, Lcn/nubia/weather/task/GeoTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 29
    return-void
.end method

.method public static getTaskType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    const-string v0, "locations"

    return-object v0
.end method


# virtual methods
.method protected getRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "locations"

    return-object v0
.end method

.method protected getRequestURL()Ljava/lang/String;
    .locals 6

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcn/nubia/weather/utils/TimeUtils;->getRequestDate()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "requestDate":Ljava/lang/String;
    const-string v2, "https://api.weathercn.com/locations/v1/cities/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v2, "geoposition/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search.json?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/weather/task/GeoTask;->mLatitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/weather/task/GeoTask;->mLongitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v2, "&apikey=5265f58f029e4257a8bf94295e164957"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
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

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&accessKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "locations"

    invoke-virtual {p0, v0, v3}, Lcn/nubia/weather/task/GeoTask;->getAccessKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v2, "&details=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v2, "&language=zh-cn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
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
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KEY_MAP_TYPE"

    invoke-virtual {p0}, Lcn/nubia/weather/task/GeoTask;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "KEY_MAP_OPERATION_TYPE"

    iget-object v2, p0, Lcn/nubia/weather/task/GeoTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v2}, Lcn/nubia/weather/app/Constant$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

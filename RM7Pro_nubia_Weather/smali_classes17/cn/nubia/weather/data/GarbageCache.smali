.class public Lcn/nubia/weather/data/GarbageCache;
.super Ljava/lang/Object;
.source "GarbageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/data/GarbageCache$LimitQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GarbageCache"

.field private static mInstance:Lcn/nubia/weather/data/GarbageCache;

.field private static mLimitSize:I

.field private static mValidTime:J


# instance fields
.field private mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/weather/data/GarbageCache$LimitQueue",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0x8

    sput v0, Lcn/nubia/weather/data/GarbageCache;->mLimitSize:I

    .line 38
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcn/nubia/weather/data/GarbageCache;->mValidTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    .line 43
    new-instance v0, Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    sget v1, Lcn/nubia/weather/data/GarbageCache;->mLimitSize:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;-><init>(Lcn/nubia/weather/data/GarbageCache;I)V

    iput-object v0, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/data/GarbageCache;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcn/nubia/weather/data/GarbageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/data/GarbageCache;->mInstance:Lcn/nubia/weather/data/GarbageCache;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcn/nubia/weather/data/GarbageCache;

    invoke-direct {v0}, Lcn/nubia/weather/data/GarbageCache;-><init>()V

    sput-object v0, Lcn/nubia/weather/data/GarbageCache;->mInstance:Lcn/nubia/weather/data/GarbageCache;

    .line 127
    :cond_0
    sget-object v0, Lcn/nubia/weather/data/GarbageCache;->mInstance:Lcn/nubia/weather/data/GarbageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private refreshData()V
    .locals 6

    .prologue
    .line 50
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v1}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->getQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 51
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lcn/nubia/weather/data/GarbageCache;->mValidTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    return-void
.end method


# virtual methods
.method public addWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 7
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v6, 0x1

    .line 64
    const-string v1, "GarbageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWeatherModel Name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcn/nubia/weather/data/GarbageCache;->refreshData()V

    .line 66
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v1}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->getQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 67
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 68
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 69
    iget-object v2, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v1, p1}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->offer(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "GarbageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWeatherModel offer .Size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v3}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public getLocationWeather()Lcn/nubia/weather/model/WeatherModel;
    .locals 5

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/weather/data/GarbageCache;->refreshData()V

    .line 90
    const-string v2, "GarbageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationWeather. Queue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v4}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v2}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->getQueue()Ljava/util/Queue;

    move-result-object v1

    .line 92
    .local v1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 93
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 94
    const-string v2, "GarbageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationWeather. result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "m":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeatherModel(ILjava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/WeatherModel;
    .locals 4
    .param p1, "type"    # I
    .param p2, "areaID"    # Ljava/lang/String;
    .param p3, "cityName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Lcn/nubia/weather/data/GarbageCache;->refreshData()V

    .line 108
    iget-object v2, p0, Lcn/nubia/weather/data/GarbageCache;->mLimitQueue:Lcn/nubia/weather/data/GarbageCache$LimitQueue;

    invoke-virtual {v2}, Lcn/nubia/weather/data/GarbageCache$LimitQueue;->getQueue()Ljava/util/Queue;

    move-result-object v1

    .line 109
    .local v1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 110
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    .end local v0    # "m":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

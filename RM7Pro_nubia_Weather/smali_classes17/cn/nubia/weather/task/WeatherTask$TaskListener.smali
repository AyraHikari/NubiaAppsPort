.class public interface abstract Lcn/nubia/weather/task/WeatherTask$TaskListener;
.super Ljava/lang/Object;
.source "WeatherTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/task/WeatherTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskListener"
.end annotation


# virtual methods
.method public abstract doException(Ljava/util/Map;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract doFail(Ljava/util/Map;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract doSuccess(Ljava/util/Map;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

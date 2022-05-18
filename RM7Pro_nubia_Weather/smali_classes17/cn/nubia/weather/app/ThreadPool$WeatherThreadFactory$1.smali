.class Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;


# direct methods
.method constructor <init>(Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory$1;->this$1:Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uncaughtException in thread"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

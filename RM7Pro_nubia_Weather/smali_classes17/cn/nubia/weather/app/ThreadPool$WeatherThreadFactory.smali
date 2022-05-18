.class Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/app/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherThreadFactory"
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$0:Lcn/nubia/weather/app/ThreadPool;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/app/ThreadPool;)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;->this$0:Lcn/nubia/weather/app/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;->counter:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/app/ThreadPool;Lcn/nubia/weather/app/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/app/ThreadPool;
    .param p2, "x1"    # Lcn/nubia/weather/app/ThreadPool$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;-><init>(Lcn/nubia/weather/app/ThreadPool;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherThreadPool "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 151
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory$1;-><init>(Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 158
    return-object v0
.end method

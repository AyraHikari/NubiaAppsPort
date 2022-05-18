.class Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/app/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherDiscardPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/app/ThreadPool;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/app/ThreadPool;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;->this$0:Lcn/nubia/weather/app/ThreadPool;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/app/ThreadPool;Lcn/nubia/weather/app/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/app/ThreadPool;
    .param p2, "x1"    # Lcn/nubia/weather/app/ThreadPool$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;-><init>(Lcn/nubia/weather/app/ThreadPool;)V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 91
    const-string v0, "ThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discard Task,because of the queue is full. Runnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

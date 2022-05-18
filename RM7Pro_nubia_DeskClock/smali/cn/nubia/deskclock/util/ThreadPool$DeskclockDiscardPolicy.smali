.class Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeskclockDiscardPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/util/ThreadPool;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;Lcn/nubia/deskclock/util/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/util/ThreadPool;
    .param p2, "x1"    # Lcn/nubia/deskclock/util/ThreadPool$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;-><init>(Lcn/nubia/deskclock/util/ThreadPool;)V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 69
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

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

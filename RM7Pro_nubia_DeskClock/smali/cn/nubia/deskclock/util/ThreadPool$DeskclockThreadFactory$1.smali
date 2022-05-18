.class Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory$1;->this$1:Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    const-string v0, "ThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uncaughtException in thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

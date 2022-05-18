.class public Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeskclockThreadFactory"
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$0:Lcn/nubia/deskclock/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/util/ThreadPool;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/deskclock/util/ThreadPool;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;->this$0:Lcn/nubia/deskclock/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;->counter:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskclockThreadPool "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 80
    new-instance v1, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory$1;-><init>(Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 86
    return-object v0
.end method

.class Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;
.super Ljava/lang/Object;
.source "ExceptionModule.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/ExceptionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/ExceptionModule;


# direct methods
.method private constructor <init>(Lcom/zte/statistics/sdk/ExceptionModule;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;->this$0:Lcom/zte/statistics/sdk/ExceptionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/statistics/sdk/ExceptionModule;Lcom/zte/statistics/sdk/ExceptionModule$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;-><init>(Lcom/zte/statistics/sdk/ExceptionModule;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 50
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 52
    iget-object p0, p0, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;->this$0:Lcom/zte/statistics/sdk/ExceptionModule;

    invoke-virtual {p0, p2}, Lcom/zte/statistics/sdk/ExceptionModule;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, "[%s]:%s[%s](%s) {%s}"

    const/4 v3, 0x5

    .line 53
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x4

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;-><init>()V

    .line 55
    new-instance v1, Lcom/zte/statistics/sdk/obj/ExceptionObj;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/obj/ExceptionObj;-><init>()V

    .line 56
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTimeInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/zte/statistics/sdk/obj/ExceptionObj;->setTime(J)V

    .line 57
    invoke-virtual {v1, p0}, Lcom/zte/statistics/sdk/obj/ExceptionObj;->setContent(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->insert(Lcom/zte/statistics/sdk/obj/ExceptionObj;)J

    .line 61
    :cond_0
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

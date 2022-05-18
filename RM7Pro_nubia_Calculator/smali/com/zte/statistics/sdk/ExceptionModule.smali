.class public Lcom/zte/statistics/sdk/ExceptionModule;
.super Ljava/lang/Object;
.source "ExceptionModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

.field private static final mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/zte/statistics/sdk/ExceptionModule;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/ExceptionModule;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 15
    sget-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/zte/statistics/sdk/ExceptionModule;
    .locals 1

    .line 23
    sget-object v0, Lcom/zte/statistics/sdk/ExceptionModule;->INSTANCE:Lcom/zte/statistics/sdk/ExceptionModule;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 35
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 37
    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/ExceptionModule;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, "[%s]:%s[%s](%s) {%s}"

    const/4 v3, 0x5

    .line 38
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const/4 p1, 0x4

    aput-object p0, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 39
    new-instance p1, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;

    invoke-direct {p1}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;-><init>()V

    .line 40
    new-instance v0, Lcom/zte/statistics/sdk/obj/ExceptionObj;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/obj/ExceptionObj;-><init>()V

    .line 41
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTimeInt()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/obj/ExceptionObj;->setTime(J)V

    .line 42
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/ExceptionObj;->setContent(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/zte/statistics/sdk/db/dao/ExceptionDao;->insert(Lcom/zte/statistics/sdk/obj/ExceptionObj;)J

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuffer;
    .locals 4

    .line 66
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, " "

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setReportUncaughtExceptions(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/statistics/sdk/ExceptionModule$CrashHandler;-><init>(Lcom/zte/statistics/sdk/ExceptionModule;Lcom/zte/statistics/sdk/ExceptionModule$1;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object p0, Lcom/zte/statistics/sdk/ExceptionModule;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_0
    return-void
.end method

.class public Lcom/zte/statistics/sdk/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final LOGGABLE:Z = true

.field public static S_LOGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTE_Statistics"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 92
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 64
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 29
    array-length v0, p3

    if-lez v0, :cond_0

    .line 31
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p3

    goto :goto_0

    .line 33
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error formatting log message [level="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    const-string p0, "ZTE_Statistics"

    .line 37
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "ZTE_Statistics"

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "ZTE_Statistics"

    .line 42
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 85
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 71
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/zte/statistics/sdk/Log;->S_LOGGABLE:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "ZTE_Statistics"

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 57
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 78
    invoke-static {v0, p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/Log;->doLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/huanju/ssp/base/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x5

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_VERBOSE:I = 0x1

.field public static final LEVEL_WARN:I = 0x4

.field private static final TEMPLATE1:Ljava/lang/String; = "%s(L:%d)  %s"

.field private static mDebuggable:I

.field public static mIsShowLog:Z

.field private static mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "nubia_ad"

    sput-object v0, Lcom/huanju/ssp/base/utils/LogUtils;->mTag:Ljava/lang/String;

    .line 51
    sput v1, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    .line 53
    sput-boolean v1, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v4, Lcom/huanju/ssp/base/utils/LogUtils;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "methodName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 176
    .local v0, "lineNumber":I
    const-string v3, "%s(L:%d)  %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 179
    .local v1, "logInfo":Ljava/lang/String;
    monitor-exit v4

    return-object v1

    .line 174
    .end local v0    # "lineNumber":I
    .end local v1    # "logInfo":Ljava/lang/String;
    .end local v2    # "methodName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static createThrowableInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 10
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 184
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v4, "sb_record":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 186
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 188
    .local v2, "element":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ncauseBy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 193
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 196
    .local v1, "causesElements":[Ljava/lang/StackTraceElement;
    array-length v6, v1

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 198
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    .end local v1    # "causesElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 106
    .local v0, "sElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 147
    sget v1, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 150
    .local v0, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 158
    sget v2, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v2, v3, :cond_0

    sget-boolean v2, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createThrowableInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 162
    .local v1, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 212
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM-dd hh:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 10
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 60
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "\n----------------------------------"

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "sb_ero":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threadId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 66
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 68
    .local v2, "element":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ncauseBy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 73
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 76
    .local v1, "causesElements":[Ljava/lang/StackTraceElement;
    array-length v6, v1

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 78
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "causesElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    const-string v5, "\n----------------------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 113
    sget v1, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 116
    .local v0, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public static setDeBugModel(I)V
    .locals 0
    .param p0, "debug"    # I

    .prologue
    .line 56
    sput p0, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    .line 57
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 92
    sget v1, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 96
    .local v0, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 124
    sget v1, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 127
    .local v0, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 135
    sget v2, Lcom/huanju/ssp/base/utils/LogUtils;->mDebuggable:I

    if-ge v2, v3, :cond_0

    sget-boolean v2, Lcom/huanju/ssp/base/utils/LogUtils;->mIsShowLog:Z

    if-eqz v2, :cond_1

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/LogUtils;->createThrowableInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 139
    .local v1, "sElements":[Ljava/lang/StackTraceElement;
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/huanju/ssp/base/utils/LogUtils;->createLog([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "sElements":[Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

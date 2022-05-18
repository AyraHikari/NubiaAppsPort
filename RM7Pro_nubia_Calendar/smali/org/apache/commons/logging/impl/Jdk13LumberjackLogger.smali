.class public Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;
.super Ljava/lang/Object;
.source "Jdk13LumberjackLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field protected static final dummyLevel:Ljava/util/logging/Level;


# instance fields
.field private classAndMethodFound:Z

.field protected transient logger:Ljava/util/logging/Logger;

.field protected name:Ljava/lang/String;

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->dummyLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    .line 57
    const-string v0, "unknown"

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    .line 58
    const-string v0, "unknown"

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    .line 80
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 83
    return-void
.end method

.method private getClassAndMethod()V
    .locals 12

    .prologue
    .line 110
    :try_start_0
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 111
    .local v7, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 112
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 113
    .local v5, "stringWriter":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "traceString":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, "\n"

    invoke-direct {v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v8, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 119
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 121
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1

    .line 124
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 126
    :cond_1
    const-string v10, "at "

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v4, v10, 0x3

    .line 127
    .local v4, "start":I
    const/16 v10, 0x28

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 128
    .local v0, "end":I
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "temp":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 130
    .local v1, "lastPeriod":I
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    .line 131
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "end":I
    .end local v1    # "lastPeriod":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v4    # "start":I
    .end local v5    # "stringWriter":Ljava/io/StringWriter;
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "throwable":Ljava/lang/Throwable;
    .end local v8    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v9    # "traceString":Ljava/lang/String;
    :goto_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    .line 136
    return-void

    .line 132
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 92
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-boolean v1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->classAndMethodFound:Z

    if-nez v1, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getClassAndMethod()V

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->sourceMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 97
    if-eqz p3, :cond_1

    .line 98
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 102
    .end local v0    # "record":Ljava/util/logging/LogRecord;
    :cond_2
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 145
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 168
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 191
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 225
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 296
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 308
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 319
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/logging/impl/Jdk13LumberjackLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    return-void
.end method

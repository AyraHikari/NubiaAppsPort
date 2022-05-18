.class public Lorg/apache/commons/logging/impl/Log4JLogger;
.super Ljava/lang/Object;
.source "Log4JLogger.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class;

.field static class$org$apache$log4j$Priority:Ljava/lang/Class;

.field private static traceLevel:Lorg/apache/log4j/Priority;


# instance fields
.field private transient logger:Lorg/apache/log4j/Logger;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v1}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    .line 80
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.Priority"

    invoke-static {v1}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_1
    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.apache.log4j.Level"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    new-instance v1, Ljava/lang/InstantiationError;

    const-string v2, "Log4J 1.2 not available"

    invoke-direct {v1, v2}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$commons$logging$impl$Log4JLogger:Ljava/lang/Class;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_2

    .line 90
    :cond_3
    :try_start_0
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "org.apache.log4j.Level"

    invoke-static {v1}, Lorg/apache/commons/logging/impl/Log4JLogger;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_3
    const-string v2, "TRACE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Priority;

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 90
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->class$org$apache$log4j$Level:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    sput-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 61
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 61
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 61
    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Warning - null logger in constructor; possible log4j misconfiguration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 122
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 258
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 269
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    return-void
.end method

.method public getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4JLogger;->logger:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/logging/impl/Log4JLogger;->traceLevel:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/Log4JLogger;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/impl/Log4JLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Category;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

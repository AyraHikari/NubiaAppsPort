.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field static class$java$lang$Thread:Ljava/lang/Class; = null

.field static class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class; = null

.field protected static dateFormatter:Ljava/text/DateFormat; = null

.field protected static dateTimeFormat:Ljava/lang/String; = null

.field protected static showDateTime:Z = false

.field protected static showLogName:Z = false

.field protected static showShortName:Z = false

.field protected static final simpleLogProps:Ljava/util/Properties;

.field protected static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field protected currentLogLevel:I

.field protected logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    .line 93
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 98
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 100
    sput-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 102
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 112
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 163
    const-string v2, "simplelog.properties"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 164
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    sget-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :cond_0
    :goto_0
    const-string v2, "org.apache.commons.logging.simplelog.showlogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 174
    const-string v2, "org.apache.commons.logging.simplelog.showShortLogname"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 175
    const-string v2, "org.apache.commons.logging.simplelog.showdatetime"

    sget-boolean v3, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 177
    sget-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "org.apache.commons.logging.simplelog.dateTimeFormat"

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 181
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 185
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "lvl":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 220
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 225
    :cond_0
    if-nez v1, :cond_1

    .line 226
    const-string v2, "org.apache.commons.logging.simplelog.defaultlog"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_1
    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 247
    :cond_2
    :goto_1
    return-void

    .line 231
    :cond_3
    const-string v2, "trace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 233
    :cond_4
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 235
    :cond_5
    const-string v2, "info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 237
    :cond_6
    const-string v2, "warn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 239
    :cond_7
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 240
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 241
    :cond_8
    const-string v2, "fatal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 242
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1

    .line 243
    :cond_9
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_1
.end method

.method static access$000()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 656
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

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Z

    .prologue
    .line 154
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "dephault":Z
    :goto_0
    return p1

    .restart local p1    # "dephault":Z
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 7

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 656
    :try_start_0
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "java.lang.Thread"

    invoke-static {v4}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    move-object v5, v4

    :goto_0
    const-string v6, "getContextClassLoader"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 661
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 698
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v4}, Lorg/apache/commons/logging/impl/SimpleLog;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 702
    :cond_1
    return-object v1

    .line 656
    :cond_2
    :try_start_2
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$java$lang$Thread:Ljava/lang/Class;

    move-object v5, v4

    goto :goto_0

    .line 665
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_0

    .line 687
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v5, "Unexpected InvocationTargetException"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 691
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 698
    :cond_3
    sget-object v4, Lorg/apache/commons/logging/impl/SimpleLog;->class$org$apache$commons$logging$impl$SimpleLog:Ljava/lang/Class;

    goto :goto_2

    .line 663
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 707
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 142
    .restart local v0    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "dephault":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "dephault":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 384
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 387
    :cond_0
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 400
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 403
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x5

    .line 508
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 511
    :cond_0
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x5

    .line 524
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 527
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x6

    .line 539
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 542
    :cond_0
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x6

    .line 555
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 558
    :cond_0
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 446
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 449
    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x3

    .line 462
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 465
    :cond_0
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isFatalEnabled()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 368
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTraceEnabled()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-boolean v5, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v5, :cond_0

    .line 291
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 293
    .local v2, "now":Ljava/util/Date;
    sget-object v6, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    monitor-enter v6

    .line 294
    :try_start_0
    sget-object v5, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "dateText":Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    .end local v1    # "dateText":Ljava/lang/String;
    .end local v2    # "now":Ljava/util/Date;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 311
    :goto_0
    sget-boolean v5, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    if-eqz v5, :cond_4

    .line 312
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 314
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 318
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    :cond_2
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    if-eqz p3, :cond_3

    .line 328
    const-string v5, " <"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    new-instance v4, Ljava/io/StringWriter;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/io/StringWriter;-><init>(I)V

    .line 333
    .local v4, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 334
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 335
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 336
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    .line 342
    return-void

    .line 295
    .restart local v2    # "now":Ljava/util/Date;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 302
    .end local v2    # "now":Ljava/util/Date;
    :pswitch_0
    const-string v5, "[TRACE] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 303
    :pswitch_1
    const-string v5, "[DEBUG] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v5, "[INFO] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 305
    :pswitch_3
    const-string v5, "[WARN] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 306
    :pswitch_4
    const-string v5, "[ERROR] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 307
    :pswitch_5
    const-string v5, "[FATAL] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 319
    :cond_4
    sget-boolean v5, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    if-eqz v5, :cond_2

    .line 320
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "currentLogLevel"    # I

    .prologue
    .line 259
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 261
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 415
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 418
    :cond_0
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 431
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 434
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x4

    .line 477
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 480
    :cond_0
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x4

    .line 493
    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 496
    :cond_0
    return-void
.end method

.method protected write(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 355
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    return-void
.end method

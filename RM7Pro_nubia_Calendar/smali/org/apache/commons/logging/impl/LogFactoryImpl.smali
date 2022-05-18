.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedContext"

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedDiscovery"

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedHierarchy"

.field private static final LOGGING_IMPL_JDK14_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk14Logger"

.field private static final LOGGING_IMPL_LOG4J_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Log4JLogger"

.field private static final LOGGING_IMPL_LUMBERJACK_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

.field private static final LOGGING_IMPL_SIMPLE_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.SimpleLog"

.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"

.field protected static final LOG_PROPERTY_OLD:Ljava/lang/String; = "org.apache.commons.logging.log"

.field private static final PKG_IMPL:Ljava/lang/String; = "org.apache.commons.logging.impl."

.field private static final PKG_LEN:I

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$commons$logging$Log:Ljava/lang/Class;

.field static class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

.field static class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

.field private static final classesToDiscover:[Ljava/lang/String;


# instance fields
.field private allowFlawedContext:Z

.field private allowFlawedDiscovery:Z

.field private allowFlawedHierarchy:Z

.field protected attributes:Ljava/util/Hashtable;

.field private diagnosticPrefix:Ljava/lang/String;

.field protected instances:Ljava/util/Hashtable;

.field private logClassName:Ljava/lang/String;

.field protected logConstructor:Ljava/lang/reflect/Constructor;

.field protected logConstructorSignature:[Ljava/lang/Class;

.field protected logMethod:Ljava/lang/reflect/Method;

.field protected logMethodSignature:[Ljava/lang/Class;

.field private useTCCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "org.apache.commons.logging.impl."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.apache.commons.logging.impl.SimpleLog"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 190
    iput-boolean v2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    .line 224
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 230
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v3

    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    .line 238
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 244
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.apache.commons.logging.LogFactory"

    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    :goto_1
    aput-object v0, v1, v3

    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    .line 95
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initDiagnostics()V

    .line 96
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Instance created."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void

    .line 230
    :cond_1
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    .line 244
    :cond_2
    sget-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$LogFactory:Ljava/lang/Class;

    goto :goto_1
.end method

.method static access$000()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->directGetContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 231
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

.method private createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;
    .locals 20
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "affectState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1040
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Attempting to instantiate \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1043
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p2, v12, v17

    .line 1044
    .local v12, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1045
    .local v7, "logAdapter":Lorg/apache/commons/logging/Log;
    const/4 v4, 0x0

    .line 1047
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x0

    .line 1048
    .local v8, "logAdapterClass":Ljava/lang/Class;
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBaseClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1053
    .local v5, "currentCL":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Trying to load \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1059
    :try_start_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1065
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v18, 0x2e

    const/16 v19, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ".class"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1066
    .local v13, "resourceName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1067
    invoke-virtual {v5, v13}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    .line 1072
    .local v16, "url":Ljava/net/URL;
    :goto_1
    if-nez v16, :cond_5

    .line 1073
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Class \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "] cannot be found."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 1079
    .end local v13    # "resourceName":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 1081
    .local v3, "c":Ljava/lang/Class;
    const/16 v17, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    .line 1115
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1116
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1122
    .local v10, "o":Ljava/lang/Object;
    instance-of v0, v10, Lorg/apache/commons/logging/Log;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1123
    move-object v8, v3

    .line 1124
    move-object v0, v10

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 1190
    .end local v3    # "c":Ljava/lang/Class;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_2
    :goto_4
    if-eqz v7, :cond_3

    if-eqz p3, :cond_3

    .line 1192
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 1193
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 1197
    :try_start_3
    const-string v17, "setLogFactory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1199
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Found method setLogFactory(LogFactory) in \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 1210
    :goto_5
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, " has been selected for use."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1216
    :cond_3
    return-object v7

    .line 1069
    .restart local v13    # "resourceName":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ".class"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_1

    .line 1075
    :cond_5
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Class \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' was found at \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    .line 1139
    .end local v13    # "resourceName":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 1145
    .local v6, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1146
    .local v9, "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' is missing dependencies when loaded via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1082
    .end local v6    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v9    # "msg":Ljava/lang/String;
    .restart local v3    # "c":Ljava/lang/Class;
    :catch_1
    move-exception v11

    .line 1086
    .local v11, "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_5
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1087
    .restart local v9    # "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' is not available via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1102
    :try_start_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    goto/16 :goto_3

    .line 1103
    :catch_2
    move-exception v14

    .line 1105
    .local v14, "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1106
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' is not available via the LogFactoryImpl class classloader: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 1154
    .end local v3    # "c":Ljava/lang/Class;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v11    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .end local v14    # "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v6

    .line 1161
    .local v6, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1162
    .restart local v9    # "msg":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "The log adapter \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' is unable to initialize itself when loaded via classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1138
    .end local v6    # "e":Ljava/lang/ExceptionInInitializerError;
    .end local v9    # "msg":Ljava/lang/String;
    .restart local v3    # "c":Ljava/lang/Class;
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 1181
    .end local v3    # "c":Ljava/lang/Class;
    .end local v10    # "o":Ljava/lang/Object;
    :goto_6
    if-eqz v5, :cond_2

    .line 1187
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v5

    goto/16 :goto_0

    .line 1170
    :catch_4
    move-exception v6

    .line 1173
    .local v6, "e":Lorg/apache/commons/logging/LogConfigurationException;
    throw v6

    .line 1174
    .end local v6    # "e":Lorg/apache/commons/logging/LogConfigurationException;
    :catch_5
    move-exception v15

    .line 1178
    .local v15, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1201
    .end local v15    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v15

    .line 1202
    .restart local v15    # "t":Ljava/lang/Throwable;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1203
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "[INFO] \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\' from classloader "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, " does not declare optional method "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "setLogFactory(LogFactory)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 8
    .param p1, "logCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 841
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 842
    const-string v5, "Discovering a Log implementation..."

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 845
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initConfiguration()V

    .line 847
    const/4 v2, 0x0

    .line 850
    .local v2, "result":Lorg/apache/commons/logging/Log;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->findUserSpecifiedLogClassName()Ljava/lang/String;

    move-result-object v4

    .line 852
    .local v4, "specifiedLogClassName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 853
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 854
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Attempting to load user-specified log class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 858
    :cond_1
    invoke-direct {p0, v4, p1, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 861
    if-nez v2, :cond_3

    .line 862
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "User-specified log class \'"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 863
    .local v1, "messageBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    const-string v5, "\' cannot be found or is not useable."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 868
    if-eqz v4, :cond_2

    .line 869
    const-string v5, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v5, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v5, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v5, "org.apache.commons.logging.impl.SimpleLog"

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_2
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1    # "messageBuffer":Ljava/lang/StringBuffer;
    :cond_3
    move-object v3, v2

    .line 922
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    .local v3, "result":Lorg/apache/commons/logging/Log;
    :goto_0
    return-object v3

    .line 908
    .end local v3    # "result":Lorg/apache/commons/logging/Log;
    .restart local v2    # "result":Lorg/apache/commons/logging/Log;
    :cond_4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 909
    const-string v5, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 913
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    if-nez v2, :cond_6

    .line 914
    sget-object v5, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5, p1, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 917
    :cond_6
    if-nez v2, :cond_7

    .line 918
    new-instance v5, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v6, "No suitable Log implementation"

    invoke-direct {v5, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    move-object v3, v2

    .line 922
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    .restart local v3    # "result":Lorg/apache/commons/logging/Log;
    goto :goto_0
.end method

.method private findUserSpecifiedLogClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    const-string v2, "Trying to get log class from attribute \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 964
    :cond_0
    const-string v2, "org.apache.commons.logging.Log"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 966
    .local v1, "specifiedClass":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 967
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    const-string v2, "Trying to get log class from attribute \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 971
    :cond_1
    const-string v2, "org.apache.commons.logging.log"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "specifiedClass":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 974
    .restart local v1    # "specifiedClass":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 975
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    const-string v2, "Trying to get log class from system property \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 980
    :cond_3
    :try_start_0
    const-string v2, "org.apache.commons.logging.Log"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 989
    :cond_4
    :goto_0
    if-nez v1, :cond_6

    .line 990
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 991
    const-string v2, "Trying to get log class from system property \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 995
    :cond_5
    :try_start_1
    const-string v2, "org.apache.commons.logging.log"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1007
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 1008
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1011
    :cond_7
    return-object v1

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 983
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No access allowed to system property \'org.apache.commons.logging.Log\' - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0

    .line 996
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 997
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 998
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No access allowed to system property \'org.apache.commons.logging.log\' - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getBaseClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1239
    sget-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.commons.logging.impl.LogFactoryImpl"

    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1241
    .local v2, "thisClassLoader":Ljava/lang/ClassLoader;
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    if-nez v3, :cond_1

    .line 1298
    .end local v2    # "thisClassLoader":Ljava/lang/ClassLoader;
    :goto_1
    return-object v2

    .line 1239
    :cond_0
    sget-object v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$impl$LogFactoryImpl:Ljava/lang/Class;

    goto :goto_0

    .line 1245
    .restart local v2    # "thisClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getContextClassLoaderInternal()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1247
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1250
    .local v0, "baseClassLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_4

    .line 1255
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v3, :cond_3

    .line 1256
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1257
    const-string v3, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    :cond_2
    move-object v2, v1

    .line 1265
    goto :goto_1

    .line 1268
    :cond_3
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1275
    :cond_4
    if-eq v0, v1, :cond_5

    .line 1281
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v3, :cond_6

    .line 1282
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1283
    const-string v3, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    :cond_5
    move-object v2, v0

    .line 1298
    goto :goto_1

    .line 1291
    :cond_6
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getBooleanConfiguration(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Z

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 812
    .end local p2    # "dflt":Z
    :goto_0
    return p2

    .restart local p2    # "dflt":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 447
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 759
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 760
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] Trying to get configuration for item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 763
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 764
    .local v2, "valueObj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 765
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "[ENV] Found LogFactory attribute ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 768
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    :cond_2
    :goto_0
    return-object v1

    .line 771
    :cond_3
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 772
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] No LogFactory attribute found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 780
    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 782
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 783
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] Found system property ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 793
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] Security prevented reading system property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 797
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    :goto_1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 798
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] No configuration defined for item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    :cond_6
    move-object v1, v3

    .line 801
    goto/16 :goto_0

    .line 788
    .restart local v1    # "value":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 789
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[ENV] No system property found for property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getContextClassLoaderInternal()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lorg/apache/commons/logging/impl/LogFactoryImpl$1;

    invoke-direct {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "c1"    # Ljava/lang/ClassLoader;
    .param p2, "c2"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1314
    if-nez p1, :cond_1

    .line 1338
    .end local p2    # "c2":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-object p2

    .line 1317
    .restart local p2    # "c2":Ljava/lang/ClassLoader;
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 1318
    goto :goto_0

    .line 1323
    :cond_2
    move-object v0, p1

    .line 1324
    .local v0, "current":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_4

    .line 1325
    if-ne v0, p2, :cond_3

    move-object p2, p1

    .line 1326
    goto :goto_0

    .line 1327
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 1331
    :cond_4
    move-object v0, p2

    .line 1332
    :goto_2
    if-eqz v0, :cond_5

    .line 1333
    if-eq v0, p1, :cond_0

    .line 1335
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 1338
    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 700
    :try_start_0
    new-instance v1, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;-><init>(Lorg/apache/commons/logging/impl/LogFactoryImpl;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-object v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "[SECURITY] Unable to obtain parent classloader"

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lorg/apache/commons/logging/impl/LogFactoryImpl$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "discoveryFlaw"    # Ljava/lang/Throwable;

    .prologue
    .line 1360
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1361
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not instantiate Log \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1366
    instance-of v4, p3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_0

    move-object v3, p3

    .line 1370
    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .line 1371
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1372
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 1373
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "... InvocationTargetException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1377
    instance-of v4, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1378
    check-cast v2, Ljava/lang/ExceptionInInitializerError;

    .line 1379
    .local v2, "eiie":Ljava/lang/ExceptionInInitializerError;
    invoke-virtual {v2}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1380
    .local v1, "cause2":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1381
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "... ExceptionInInitializerError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1390
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "cause2":Ljava/lang/Throwable;
    .end local v2    # "eiie":Ljava/lang/ExceptionInInitializerError;
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    if-nez v4, :cond_1

    .line 1391
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v4, p3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1393
    :cond_1
    return-void
.end method

.method private handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 9
    .param p1, "badClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "badClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 1425
    const/4 v1, 0x0

    .line 1426
    .local v1, "implementsLog":Z
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    if-nez v7, :cond_3

    const-string v7, "org.apache.commons.logging.Log"

    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1427
    .local v4, "logInterfaceName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1428
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 1429
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1430
    const/4 v1, 0x1

    .line 1435
    :cond_0
    if-eqz v1, :cond_a

    .line 1438
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1440
    :try_start_0
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    if-nez v7, :cond_5

    const-string v7, "org.apache.commons.logging.Log"

    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    :goto_2
    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1441
    .local v3, "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' was found in classloader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ". It is bound to a Log interface which is not"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " the one loaded from classloader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v3    # "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    :goto_3
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    if-nez v7, :cond_7

    .line 1456
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1457
    .local v5, "msg":Ljava/lang/StringBuffer;
    const-string v7, "Terminating logging for this context "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1458
    const-string v7, "due to bad log hierarchy. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    const-string v7, "You have more than one version of \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    if-nez v7, :cond_6

    const-string v7, "org.apache.commons.logging.Log"

    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    const-string v7, "\' visible."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1462
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1463
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1465
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1426
    .end local v0    # "i":I
    .end local v2    # "interfaces":[Ljava/lang/Class;
    .end local v4    # "logInterfaceName":Ljava/lang/String;
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_3
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    goto/16 :goto_0

    .line 1428
    .restart local v0    # "i":I
    .restart local v2    # "interfaces":[Ljava/lang/Class;
    .restart local v4    # "logInterfaceName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1440
    :cond_5
    :try_start_1
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1448
    :catch_0
    move-exception v6

    .line 1449
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error while trying to output diagnostics about bad class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_3

    .line 1460
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_6
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    goto :goto_4

    .line 1468
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1469
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1470
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "Warning: bad log hierarchy. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    const-string v7, "You have more than one version of \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1472
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    if-nez v7, :cond_9

    const-string v7, "org.apache.commons.logging.Log"

    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    const-string v7, "\' visible."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1499
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_8
    :goto_6
    return-void

    .line 1472
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_9
    sget-object v7, Lorg/apache/commons/logging/impl/LogFactoryImpl;->class$org$apache$commons$logging$Log:Ljava/lang/Class;

    goto :goto_5

    .line 1478
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_a
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    if-nez v7, :cond_c

    .line 1479
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1480
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "Terminating logging for this context. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    const-string v7, "Log class \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1482
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    const-string v7, "\' does not implement the Log interface."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1485
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1488
    :cond_b
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1491
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_c
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1492
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1493
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string v7, "[WARNING] Log class \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1495
    const-string v7, "\' does not implement the Log interface."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const/4 v1, 0x1

    sget v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    add-int/lit8 v5, v0, 0x5

    move-object v0, p2

    move-object v3, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const-string v0, " Did you mean \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    const-string v0, "\'?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private initConfiguration()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 823
    const-string v0, "org.apache.commons.logging.Log.allowFlawedContext"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 824
    const-string v0, "org.apache.commons.logging.Log.allowFlawedDiscovery"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 825
    const-string v0, "org.apache.commons.logging.Log.allowFlawedHierarchy"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    .line 826
    return-void
.end method

.method private initDiagnostics()V
    .locals 6

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 476
    .local v2, "clazz":Ljava/lang/Class;
    invoke-static {v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 479
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 480
    :try_start_0
    const-string v1, "BOOTLOADER"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[LogFactoryImpl@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    .line 488
    return-void

    .line 482
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v1, "UNKNOWN"

    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    return v0
.end method

.method private isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Checking for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 723
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 728
    .local v1, "log":Lorg/apache/commons/logging/Log;
    if-nez v1, :cond_2

    .line 729
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 730
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Did not find \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 743
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    :cond_1
    :goto_0
    return v2

    .line 734
    .restart local v1    # "log":Lorg/apache/commons/logging/Log;
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 735
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 739
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Logging system \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' is available but not useable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 286
    .local v2, "names":Ljava/util/Vector;
    iget-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 287
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 291
    .local v3, "results":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 292
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_1
    return-object v3
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 335
    .local v0, "instance":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-object v0
.end method

.method protected getLogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLogConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method protected isJdk13LumberjackAvailable()Z
    .locals 2

    .prologue
    .line 555
    const-string v0, "Jdk13Lumberjack"

    const-string v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isJdk14Available()Z
    .locals 2

    .prologue
    .line 571
    const-string v0, "Jdk14"

    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isLog4JAvailable()Z
    .locals 2

    .prologue
    .line 584
    const-string v0, "Log4J"

    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected logDiagnostic(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logRawDiagnostic(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method protected newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v3, 0x0

    .line 603
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_1

    .line 604
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 611
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_0

    .line 612
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    .line 613
    .local v5, "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .end local v5    # "params":[Ljava/lang/Object;
    :cond_0
    return-object v3

    .line 607
    :cond_1
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 608
    .restart local v5    # "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v3, v0
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 618
    .end local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 623
    .local v4, "lce":Lorg/apache/commons/logging/LogConfigurationException;
    throw v4

    .line 625
    .end local v4    # "lce":Lorg/apache/commons/logging/LogConfigurationException;
    :catch_1
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 629
    .local v1, "c":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 630
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 632
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 634
    .end local v1    # "c":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 637
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v7, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public release()V
    .locals 1

    .prologue
    .line 354
    const-string v0, "Releasing all known loggers"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 356
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "setAttribute: call too late; configuration already performed."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 402
    :cond_0
    if-nez p2, :cond_2

    .line 403
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :goto_0
    const-string v0, "use_tccl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 412
    :cond_1
    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

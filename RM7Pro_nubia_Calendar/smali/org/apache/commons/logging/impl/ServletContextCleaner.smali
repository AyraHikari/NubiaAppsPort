.class public Lorg/apache/commons/logging/impl/ServletContextCleaner;
.super Ljava/lang/Object;
.source "ServletContextCleaner.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# static fields
.field static class$java$lang$ClassLoader:Ljava/lang/Class;


# instance fields
.field private RELEASE_SIGNATURE:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.ClassLoader"

    invoke-static {v0}, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
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
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 8
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 64
    .local v5, "tccl":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    .line 65
    .local v3, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 97
    move-object v1, v5

    .line 98
    .local v1, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    const-string v6, "org.apache.commons.logging.LogFactory"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 104
    .local v2, "logFactoryClass":Ljava/lang/Class;
    const-string v6, "release"

    iget-object v7, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 105
    .local v4, "releaseMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 107
    .end local v2    # "logFactoryClass":Ljava/lang/Class;
    .end local v4    # "releaseMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .line 123
    goto :goto_0

    .line 111
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "LogFactory instance found which does not support release method!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    .line 123
    goto :goto_0

    .line 115
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "LogFactory instance found which is not accessable!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    .line 123
    goto :goto_0

    .line 119
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "LogFactory instance release method failed!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    goto :goto_0

    .line 129
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->release(Ljava/lang/ClassLoader;)V

    .line 130
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 137
    return-void
.end method

.class public final Lnet/fortuna/ical4j/util/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# static fields
.field private static final CONFIG:Ljava/util/Properties;

.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-class v1, Lnet/fortuna/ical4j/util/Configurator;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    sput-object v1, Lnet/fortuna/ical4j/util/Configurator;->LOG:Lorg/apache/commons/logging/Log;

    .line 53
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lnet/fortuna/ical4j/util/Configurator;->CONFIG:Ljava/util/Properties;

    .line 57
    :try_start_0
    sget-object v1, Lnet/fortuna/ical4j/util/Configurator;->CONFIG:Ljava/util/Properties;

    const-string v2, "ical4j.properties"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lnet/fortuna/ical4j/util/Configurator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "ical4j.properties not found."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v1, Lnet/fortuna/ical4j/util/Configurator;->CONFIG:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

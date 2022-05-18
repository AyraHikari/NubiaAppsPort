.class public abstract Lorg/apache/commons/lang/text/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;
    }
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v2, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "lookup":Lorg/apache/commons/lang/text/StrLookup;
    :try_start_0
    new-instance v1, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    .end local v1    # "lookup":Lorg/apache/commons/lang/text/StrLookup;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .restart local v1    # "lookup":Lorg/apache/commons/lang/text/StrLookup;
    :goto_0
    sput-object v1, Lorg/apache/commons/lang/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .line 57
    return-void

    .line 53
    .end local v1    # "lookup":Lorg/apache/commons/lang/text/StrLookup;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .restart local v1    # "lookup":Lorg/apache/commons/lang/text/StrLookup;
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/apache/commons/lang/text/StrLookup;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/apache/commons/lang/text/StrLookup;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/commons/lang/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method

.class public Lorg/joda/time/tz/ZoneInfoLogger;
.super Ljava/lang/Object;
.source "ZoneInfoLogger.java"


# static fields
.field static cVerbose:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/joda/time/tz/ZoneInfoLogger$1;

    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoLogger$1;-><init>()V

    sput-object v0, Lorg/joda/time/tz/ZoneInfoLogger;->cVerbose:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static set(Z)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lorg/joda/time/tz/ZoneInfoLogger;->cVerbose:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static verbose()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/joda/time/tz/ZoneInfoLogger;->cVerbose:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.class Lorg/joda/time/DateTimeUtils$SystemMillisProvider;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"

# interfaces
.implements Lorg/joda/time/DateTimeUtils$MillisProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemMillisProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

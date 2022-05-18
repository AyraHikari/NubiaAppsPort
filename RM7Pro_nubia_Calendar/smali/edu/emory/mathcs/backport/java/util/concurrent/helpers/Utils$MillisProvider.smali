.class final Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$MillisProvider;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MillisProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

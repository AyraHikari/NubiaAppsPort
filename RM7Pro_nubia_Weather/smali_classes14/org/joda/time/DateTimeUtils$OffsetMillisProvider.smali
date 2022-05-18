.class Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;
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
    name = "OffsetMillisProvider"
.end annotation


# instance fields
.field private final iMillis:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-wide p1, p0, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;->iMillis:J

    .line 588
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 4

    .prologue
    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;->iMillis:J

    add-long/2addr v0, v2

    return-wide v0
.end method

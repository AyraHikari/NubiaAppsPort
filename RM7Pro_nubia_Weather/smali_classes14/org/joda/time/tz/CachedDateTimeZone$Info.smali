.class final Lorg/joda/time/tz/CachedDateTimeZone$Info;
.super Ljava/lang/Object;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/CachedDateTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Info"
.end annotation


# instance fields
.field private iNameKey:Ljava/lang/String;

.field iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private iOffset:I

.field public final iPeriodStart:J

.field private iStandardOffset:I

.field public final iZoneRef:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;J)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 178
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 181
    iput-wide p2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    .line 182
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    .line 183
    return-void
.end method


# virtual methods
.method public getNameKey(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNameKey:Ljava/lang/String;

    .line 192
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOffset(J)I
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 197
    :cond_0
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 200
    :cond_1
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iOffset:I

    .line 202
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result v0

    goto :goto_0
.end method

.method public getStandardOffset(J)I
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 207
    :cond_0
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iZoneRef:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 210
    :cond_1
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iStandardOffset:I

    .line 212
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result v0

    goto :goto_0
.end method

.class public interface abstract Lorg/joda/time/ReadableInterval;
.super Ljava/lang/Object;
.source "ReadableInterval.java"


# virtual methods
.method public abstract contains(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract contains(Lorg/joda/time/ReadableInterval;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getChronology()Lorg/joda/time/Chronology;
.end method

.method public abstract getEnd()Lorg/joda/time/DateTime;
.end method

.method public abstract getEndMillis()J
.end method

.method public abstract getStart()Lorg/joda/time/DateTime;
.end method

.method public abstract getStartMillis()J
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAfter(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract isAfter(Lorg/joda/time/ReadableInterval;)Z
.end method

.method public abstract isBefore(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract isBefore(Lorg/joda/time/ReadableInterval;)Z
.end method

.method public abstract overlaps(Lorg/joda/time/ReadableInterval;)Z
.end method

.method public abstract toDuration()Lorg/joda/time/Duration;
.end method

.method public abstract toDurationMillis()J
.end method

.method public abstract toInterval()Lorg/joda/time/Interval;
.end method

.method public abstract toMutableInterval()Lorg/joda/time/MutableInterval;
.end method

.method public abstract toPeriod()Lorg/joda/time/Period;
.end method

.method public abstract toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

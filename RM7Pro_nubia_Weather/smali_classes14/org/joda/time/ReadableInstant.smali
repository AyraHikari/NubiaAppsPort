.class public interface abstract Lorg/joda/time/ReadableInstant;
.super Ljava/lang/Object;
.source "ReadableInstant.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/ReadableInstant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Lorg/joda/time/DateTimeFieldType;)I
.end method

.method public abstract getChronology()Lorg/joda/time/Chronology;
.end method

.method public abstract getMillis()J
.end method

.method public abstract getZone()Lorg/joda/time/DateTimeZone;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAfter(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract isBefore(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract isEqual(Lorg/joda/time/ReadableInstant;)Z
.end method

.method public abstract isSupported(Lorg/joda/time/DateTimeFieldType;)Z
.end method

.method public abstract toInstant()Lorg/joda/time/Instant;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

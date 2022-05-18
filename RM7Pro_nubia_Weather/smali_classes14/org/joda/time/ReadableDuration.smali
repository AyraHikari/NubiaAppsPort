.class public interface abstract Lorg/joda/time/ReadableDuration;
.super Ljava/lang/Object;
.source "ReadableDuration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/ReadableDuration;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getMillis()J
.end method

.method public abstract hashCode()I
.end method

.method public abstract isEqual(Lorg/joda/time/ReadableDuration;)Z
.end method

.method public abstract isLongerThan(Lorg/joda/time/ReadableDuration;)Z
.end method

.method public abstract isShorterThan(Lorg/joda/time/ReadableDuration;)Z
.end method

.method public abstract toDuration()Lorg/joda/time/Duration;
.end method

.method public abstract toPeriod()Lorg/joda/time/Period;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.class public interface abstract Lorg/joda/time/ReadablePartial;
.super Ljava/lang/Object;
.source "ReadablePartial.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/ReadablePartial;",
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

.method public abstract getField(I)Lorg/joda/time/DateTimeField;
.end method

.method public abstract getFieldType(I)Lorg/joda/time/DateTimeFieldType;
.end method

.method public abstract getValue(I)I
.end method

.method public abstract hashCode()I
.end method

.method public abstract isSupported(Lorg/joda/time/DateTimeFieldType;)Z
.end method

.method public abstract size()I
.end method

.method public abstract toDateTime(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/DateTime;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

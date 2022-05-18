.class public interface abstract Lorg/joda/time/convert/PartialConverter;
.super Ljava/lang/Object;
.source "PartialConverter.java"

# interfaces
.implements Lorg/joda/time/convert/Converter;


# virtual methods
.method public abstract getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
.end method

.method public abstract getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
.end method

.method public abstract getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;)[I
.end method

.method public abstract getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I
.end method

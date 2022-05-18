.class Lorg/joda/time/chrono/GJChronology$LinkedDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedDurationField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x38deeee7447e493cL


# instance fields
.field private final iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;


# direct methods
.method constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;)V
    .locals 1

    .prologue
    .line 1136
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 1137
    iput-object p2, p0, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;->iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 1138
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 1141
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;->iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;->iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;->iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$LinkedDurationField;->iField:Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

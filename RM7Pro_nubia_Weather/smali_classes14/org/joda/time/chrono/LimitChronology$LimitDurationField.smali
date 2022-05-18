.class Lorg/joda/time/chrono/LimitChronology$LimitDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "LimitChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitDurationField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6fb4d99c50a123ccL


# instance fields
.field final synthetic this$0:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    .prologue
    .line 389
    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    .line 390
    invoke-virtual {p2}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 391
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 414
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 416
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 417
    return-wide v0
.end method

.method public add(JJ)J
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v0

    .line 423
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 424
    return-wide v0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 429
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 435
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(JJ)I
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result v0

    return v0
.end method

.method public getValueAsLong(JJ)J
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

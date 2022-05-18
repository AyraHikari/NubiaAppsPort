.class Lorg/joda/time/chrono/GJChronology$CutoverField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CutoverField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30f7c12a10b2ff62L


# instance fields
.field final iConvertByWeekyear:Z

.field final iCutover:J

.field protected iDurationField:Lorg/joda/time/DurationField;

.field final iGregorianField:Lorg/joda/time/DateTimeField;

.field final iJulianField:Lorg/joda/time/DateTimeField;

.field protected iRangeDurationField:Lorg/joda/time/DurationField;

.field final synthetic this$0:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V
    .locals 8

    .prologue
    .line 615
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V

    .line 616
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V
    .locals 10

    .prologue
    .line 626
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 627
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V
    .locals 1

    .prologue
    .line 637
    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    .line 638
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 639
    iput-object p2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    .line 640
    iput-object p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    .line 641
    iput-wide p5, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    .line 642
    iput-boolean p7, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    .line 645
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iDurationField:Lorg/joda/time/DurationField;

    .line 646
    if-nez p4, :cond_0

    .line 647
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object p4

    .line 648
    if-nez p4, :cond_0

    .line 649
    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object p4

    .line 652
    :cond_0
    iput-object p4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    .line 653
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 6

    .prologue
    .line 702
    if-nez p4, :cond_0

    .line 713
    :goto_0
    return-object p3

    .line 705
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    const-wide/16 v2, 0x0

    .line 707
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 708
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    iget-object v5, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v4

    aget v5, p3, v0

    invoke-virtual {v4, v2, v3, v5}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_1
    invoke-virtual {p0, v2, v3, p4}, Lorg/joda/time/chrono/GJChronology$CutoverField;->add(JI)J

    move-result-wide v0

    .line 711
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/chrono/GJChronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p3

    goto :goto_0

    .line 713
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p3

    goto :goto_0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 660
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 661
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 663
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 680
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 681
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    .prologue
    .line 796
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 797
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    .line 799
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    goto :goto_0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 7

    .prologue
    .line 846
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 847
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    .line 854
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 855
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 856
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 4

    .prologue
    .line 863
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/chrono/GJChronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 864
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 9

    .prologue
    .line 868
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v4

    .line 869
    const-wide/16 v2, 0x0

    .line 870
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v5

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v5, :cond_1

    .line 871
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v3

    .line 872
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 873
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1, v6}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 870
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 7

    .prologue
    .line 823
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 824
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    .line 831
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 832
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 833
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected gregorianToJulian(J)J
    .locals 3

    .prologue
    .line 928
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByWeekyear(J)J

    move-result-wide v0

    .line 931
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByYear(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    .line 788
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method protected julianToGregorian(J)J
    .locals 3

    .prologue
    .line 920
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByWeekyear(J)J

    move-result-wide v0

    .line 923
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public roundCeiling(J)J
    .locals 7

    .prologue
    .line 895
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 896
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    .line 906
    :cond_0
    :goto_0
    return-wide v0

    .line 898
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    .line 899
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 901
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 902
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 7

    .prologue
    .line 880
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 881
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 882
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 884
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 885
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 891
    :cond_0
    :goto_0
    return-wide v0

    .line 889
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public set(JI)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 726
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 727
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 728
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 730
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 731
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 734
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->get(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 735
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 740
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 741
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 743
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 744
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide v0

    .line 747
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->get(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 748
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 753
    :cond_3
    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7

    .prologue
    .line 757
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 758
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 759
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 761
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 762
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide v0

    .line 776
    :cond_0
    :goto_0
    return-wide v0

    .line 767
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 768
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 770
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 771
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide v0

    goto :goto_0
.end method

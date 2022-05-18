.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rule"
.end annotation


# instance fields
.field final iFromYear:I

.field final iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

.field final iToYear:I


# direct methods
.method constructor <init>(Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;II)V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 827
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iFromYear:I

    .line 828
    iput p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iToYear:I

    .line 829
    return-void
.end method


# virtual methods
.method public getFromYear()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iFromYear:I

    return v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfYear()Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getOfYear()Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-result-object v0

    return-object v0
.end method

.method public getSaveMillis()I
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    return v0
.end method

.method public getToYear()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iToYear:I

    return v0
.end method

.method public next(JII)J
    .locals 7

    .prologue
    .line 854
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    .line 856
    add-int v3, p3, p4

    .line 860
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 861
    const/high16 v0, -0x80000000

    .line 866
    :goto_0
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iFromYear:I

    if-ge v0, v1, :cond_2

    .line 868
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iFromYear:I

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 871
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 874
    :goto_1
    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v4, v0, v1, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J

    move-result-wide v0

    .line 876
    cmp-long v4, v0, p1

    if-lez v4, :cond_1

    .line 877
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    int-to-long v4, v3

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v2

    .line 878
    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iToYear:I

    if-le v2, v3, :cond_1

    .line 884
    :goto_2
    return-wide p1

    .line 863
    :cond_0
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    int-to-long v4, v3

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0

    :cond_1
    move-wide p1, v0

    goto :goto_2

    :cond_2
    move-wide v0, p1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iFromYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iToYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

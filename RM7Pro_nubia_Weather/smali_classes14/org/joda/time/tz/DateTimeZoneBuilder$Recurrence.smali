.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Recurrence"
.end annotation


# instance fields
.field final iNameKey:Ljava/lang/String;

.field final iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

.field final iSaveMillis:I


# direct methods
.method constructor <init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 753
    iput-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    .line 754
    iput p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    .line 755
    return-void
.end method

.method static readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 784
    if-ne p0, p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 787
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    if-eqz v2, :cond_3

    .line 788
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 789
    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 794
    goto :goto_0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOfYear()Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    return-object v0
.end method

.method public getSaveMillis()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    return v0
.end method

.method public next(JII)J
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->next(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public previous(JII)J
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->previous(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method rename(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .locals 3

    .prologue
    .line 804
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    invoke-direct {v0, v1, p1, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V

    return-object v0
.end method

.method renameAppend(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .locals 2

    .prologue
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->rename(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->writeTo(Ljava/io/DataOutput;)V

    .line 799
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iNameKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 800
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->iSaveMillis:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 801
    return-void
.end method

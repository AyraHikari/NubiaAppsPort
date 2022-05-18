.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transition"
.end annotation


# instance fields
.field private final iMillis:J

.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method constructor <init>(JLjava/lang/String;II)V
    .locals 1

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 916
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 917
    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 918
    iput p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 919
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 908
    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getNameKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 909
    invoke-virtual {p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 910
    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 911
    return-void
.end method

.method constructor <init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V
    .locals 1

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-wide p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    .line 901
    iget-object v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    .line 902
    iget v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    .line 903
    iget v0, p3, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    .line 904
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .prologue
    .line 922
    iget-wide v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    return-wide v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveMillis()I
    .locals 2

    .prologue
    .line 938
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    return v0
.end method

.method public getWallOffset()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    return v0
.end method

.method public isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 949
    if-nez p1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    iget-wide v4, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget-object v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/joda/time/DateTime;

    iget-wide v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iMillis:J

    sget-object v4, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMillis(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 7

    .prologue
    .line 942
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iNameKey:Ljava/lang/String;

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iWallOffset:I

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->iStandardOffset:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    return-object v1
.end method

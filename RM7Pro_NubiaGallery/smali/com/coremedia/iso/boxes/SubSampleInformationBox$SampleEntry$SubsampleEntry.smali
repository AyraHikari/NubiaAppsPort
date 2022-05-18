.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
.super Ljava/lang/Object;
.source "SubSampleInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubsampleEntry"
.end annotation


# instance fields
.field private discardable:I

.field private reserved:J

.field private subsamplePriority:I

.field private subsampleSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscardable()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->discardable:I

    return v0
.end method

.method public getReserved()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->reserved:J

    return-wide v0
.end method

.method public getSubsamplePriority()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsamplePriority:I

    return v0
.end method

.method public getSubsampleSize()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsampleSize:J

    return-wide v0
.end method

.method public setDiscardable(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->discardable:I

    return-void
.end method

.method public setReserved(J)V
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->reserved:J

    return-void
.end method

.method public setSubsamplePriority(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsamplePriority:I

    return-void
.end method

.method public setSubsampleSize(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsampleSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubsampleEntry{subsampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsampleSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subsamplePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->subsamplePriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discardable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->discardable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->reserved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

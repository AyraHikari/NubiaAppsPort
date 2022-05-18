.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    }
.end annotation


# instance fields
.field private sampleDelta:J

.field private subsampleCount:I

.field private subsampleEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSubsampleEntry(Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    return-void
.end method

.method public getSampleDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    return-wide v0
.end method

.method public getSubsampleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    return v0
.end method

.method public getSubsampleEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    return-object v0
.end method

.method public setSampleDelta(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    return-void
.end method

.method public setSubsampleCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleEntry{sampleDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subsampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subsampleEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

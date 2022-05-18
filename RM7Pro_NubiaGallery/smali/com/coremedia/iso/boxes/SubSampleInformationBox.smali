.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SubSampleInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "subs"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entryCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "subs"

    .line 46
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 70
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    int-to-long v2, v1

    .line 74
    iget-wide v4, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 75
    new-instance v2, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->setSampleDelta(J)V

    .line 77
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 79
    new-instance v5, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setSubsampleSize(J)V

    .line 81
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setSubsamplePriority(I)V

    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setDiscardable(I)V

    .line 83
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->setReserved(J)V

    .line 84
    invoke-virtual {v2, v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->addSubsampleEntry(Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 93
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 94
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 95
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    .line 96
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSampleDelta()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 97
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleCount()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 98
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;

    .line 100
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 101
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsampleSize()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsampleSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 105
    :goto_1
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getSubsamplePriority()I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 106
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getDiscardable()I

    move-result v3

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 107
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;->getReserved()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getContentSize()J
    .locals 8

    .line 60
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    .line 62
    iget-object v2, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;

    .line 63
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->getSubsampleCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getVersion()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    :goto_1
    add-int/2addr v5, v7

    add-int/2addr v5, v7

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubSampleInformationBox{entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

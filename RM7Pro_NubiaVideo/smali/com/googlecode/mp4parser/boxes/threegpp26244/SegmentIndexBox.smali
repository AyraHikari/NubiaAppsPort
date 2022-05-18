.class public Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "sidx"


# instance fields
.field earliestPresentationTime:J

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field firstOffset:J

.field referenceId:J

.field reserved:I

.field timeScale:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "sidx"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 11
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    new-instance v3, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;-><init>()V

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setReferenceType(B)V

    const/16 v5, 0x1f

    .line 14
    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setReferencedSize(I)V

    .line 15
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSubsegmentDuration(J)V

    .line 16
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setStartsWithSap(B)V

    const/4 v4, 0x3

    .line 18
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSapType(B)V

    const/16 v4, 0x1c

    .line 19
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->setSapDeltaTime(I)V

    .line 20
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 6
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 8
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 9
    :goto_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 10
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 11
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;

    .line 12
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 13
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getReferenceType()B

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 14
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getReferencedSize()I

    move-result v3

    const/16 v5, 0x1f

    invoke-virtual {v2, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 15
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSubsegmentDuration()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 16
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 17
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getStartsWithSap()B

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 18
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSapType()B

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 19
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;->getSapDeltaTime()I

    move-result v1

    const/16 v3, 0x1c

    invoke-virtual {v2, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    :goto_0
    const-wide/16 v2, 0xc

    add-long/2addr v2, v0

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    add-long/2addr v2, v0

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getEarliestPresentationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getFirstOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    return-wide v0
.end method

.method public getReferenceId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    return-wide v0
.end method

.method public getReserved()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    return v0
.end method

.method public getTimeScale()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    return-wide v0
.end method

.method public setEarliestPresentationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setFirstOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J

    return-void
.end method

.method public setReferenceId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J

    return-void
.end method

.method public setReserved(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I

    return-void
.end method

.method public setTimeScale(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J

    return-void
.end method

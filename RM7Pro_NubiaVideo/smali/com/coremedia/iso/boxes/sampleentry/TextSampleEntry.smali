.class public Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;,
        Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;
    }
.end annotation


# static fields
.field public static final TYPE1:Ljava/lang/String; = "tx3g"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enct"


# instance fields
.field private backgroundColorRgba:[I

.field private boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

.field private displayFlags:J

.field private horizontalJustification:I

.field private styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

.field private verticalJustification:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    .line 3
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    .line 4
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 7
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 8
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 9
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 10
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    .line 11
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 12
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    .line 13
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBackgroundColorRgba()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    return-object v0
.end method

.method public getBoxRecord()Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 9
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->getContent(Ljava/nio/ByteBuffer;)V

    .line 10
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->getContent(Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;->getSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x12

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 4
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getHorizontalJustification()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    return v0
.end method

.method public getStyleRecord()Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-object v0
.end method

.method public getVerticalJustification()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    return v0
.end method

.method public isContinuousKaraoke()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFillTextRegion()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x40000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollDirection()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x180

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollIn()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollOut()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWriteTextVertically()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundColorRgba([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    return-void
.end method

.method public setBoxRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    return-void
.end method

.method public setContinuousKaraoke(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x801

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public setFillTextRegion(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, -0x40001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public setHorizontalJustification(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    return-void
.end method

.method public setScrollDirection(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x180

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x181

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public setScrollIn(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public setScrollOut(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public setStyleRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    return-void
.end method

.method public setVerticalJustification(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    return-void
.end method

.method public setWriteTextVertically(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TextSampleEntry"

    return-object v0
.end method

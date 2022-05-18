.class public Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "MpegSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# instance fields
.field private boxParser:Lcom/coremedia/iso/BoxParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 29
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MpegSampleEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "ActionMessageFormat0SampleEntryBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "amf0"

    .line 13
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->boxes:Ljava/util/List;

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

    .line 20
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

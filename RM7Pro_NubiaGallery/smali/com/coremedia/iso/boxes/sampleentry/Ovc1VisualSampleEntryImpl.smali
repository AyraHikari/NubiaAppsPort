.class public Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "Ovc1VisualSampleEntryImpl.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ovc1"


# instance fields
.field private vc1Content:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "ovc1"

    .line 42
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    .line 29
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 35
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->getDataReferenceIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 37
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->boxes:Ljava/util/List;

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

    .line 19
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/Ovc1VisualSampleEntryImpl;->vc1Content:[B

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

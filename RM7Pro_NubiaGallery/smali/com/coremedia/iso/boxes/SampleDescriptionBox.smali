.class public Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "SampleDescriptionBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsd"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stsd"

    .line 51
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 62
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 69
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .line 56
    invoke-super {p0}, Lcom/googlecode/mp4parser/FullContainerBox;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 75
    instance-of v2, v1, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    if-eqz v2, :cond_0

    .line 76
    check-cast v1, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

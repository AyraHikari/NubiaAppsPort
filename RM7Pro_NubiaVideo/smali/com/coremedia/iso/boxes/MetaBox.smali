.class public Lcom/coremedia/iso/boxes/MetaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "meta"


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "meta"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 3
    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdlr"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 7
    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    new-instance v2, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v2, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sebastian needs to fix 7518765283"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-gtz p1, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sebastian needs to fix it 90732r26537"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 3
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getContentSize()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    .line 2
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->isMp4Box()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public isMp4Box()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMp4Box(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 2
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 4
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    :goto_0
    return-void
.end method

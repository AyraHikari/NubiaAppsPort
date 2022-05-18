.class public abstract Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# instance fields
.field private boxParser:Lcom/coremedia/iso/BoxParser;

.field protected boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field

.field private dataReferenceIndex:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 122
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxParser:Lcom/coremedia/iso/BoxParser;

    new-instance v2, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v2, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->setDeadBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public _parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 117
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I

    return-void
.end method

.method public _writeChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    .line 142
    :try_start_0
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

    .line 143
    invoke-interface {v3, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    .line 147
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot happen. Everything should be in memory and therefore no exceptions."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public _writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 134
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 135
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public addBox(Lcom/coremedia/iso/boxes/Box;)V
    .locals 1

    .line 73
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 74
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    return-object v0
.end method

.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_0

    .line 94
    instance-of v3, v2, Lcom/coremedia/iso/boxes/ContainerBox;

    if-eqz v3, :cond_0

    .line 95
    check-cast v2, Lcom/coremedia/iso/boxes/ContainerBox;

    invoke-interface {v2, p1, p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDataReferenceIndex()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I

    return v0
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 155
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getSize()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iput-object p5, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 111
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    return-void
.end method

.method public removeBox(Lcom/coremedia/iso/boxes/Box;)Z
    .locals 1

    .line 78
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 79
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    return-void
.end method

.method public setDataReferenceIndex(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->dataReferenceIndex:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->type:Ljava/lang/String;

    return-void
.end method

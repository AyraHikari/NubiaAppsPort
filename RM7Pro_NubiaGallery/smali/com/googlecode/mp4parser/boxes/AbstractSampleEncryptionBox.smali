.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractSampleEncryptionBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    }
.end annotation


# instance fields
.field algorithmId:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field ivSize:I

.field kid:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    .line 25
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    .line 27
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 42
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 44
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 45
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    .line 46
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 48
    iput-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    .line 49
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    const-string v0, "/moov[0]/trak/tkhd"

    .line 51
    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 53
    move-object v3, v2

    check-cast v3, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v5

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-interface {v5, v6}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    .line 54
    invoke-static {v2, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    if-nez v1, :cond_2

    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/uuid[0]"

    .line 56
    invoke-static {v2, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    .line 58
    :cond_2
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->getDefaultIvSize()I

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 62
    :goto_1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    :goto_2
    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_6

    .line 65
    new-instance v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    invoke-direct {v1, p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V

    if-gez v0, :cond_4

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    move v2, v0

    .line 66
    :goto_3
    new-array v2, v2, [B

    iput-object v2, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    .line 67
    iget-object v2, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_5

    .line 69
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 70
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    :goto_4
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_5

    .line 72
    iget-object v2, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->createPair(IJ)Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_4

    .line 75
    :cond_5
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v1, v3

    goto :goto_2

    :cond_6
    return-void
.end method

.method public createEntry()Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    .locals 1

    .line 191
    new-instance v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 311
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    .line 313
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 316
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    if-eq v2, v3, :cond_3

    return v1

    .line 319
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 322
    :cond_5
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getAlgorithmId()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    return v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 145
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 148
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 152
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 153
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    new-array v2, v2, [B

    .line 155
    iget-object v3, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget-object v6, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 159
    :cond_2
    iget-object v2, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 163
    iget-object v1, v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    .line 164
    iget v3, v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 165
    iget-wide v2, v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected getContentSize()J
    .locals 7

    .line 174
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x8

    .line 176
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    array-length v0, v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    add-long/2addr v3, v1

    .line 179
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 180
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->getSize()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v3, v1

    goto :goto_1

    :cond_1
    return-wide v3
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getEntrySizes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 341
    iget-object v3, v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v3, v3

    int-to-short v3, v3

    .line 342
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    .line 344
    iget-object v2, v2, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v3, v2

    int-to-short v3, v3

    .line 346
    :cond_0
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIvSize()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    return v0
.end method

.method public getKid()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    return-object v0
.end method

.method public getOffsetToFirstIV()I
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getSize()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 331
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isOverrideTrackEncryptionBoxParameters()Z
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSubSampleEncryption()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlgorithmId(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setIvSize(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    return-void
.end method

.method public setKid([B)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    return-void
.end method

.method public setOverrideTrackEncryptionBoxParameters(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result p1

    const v0, 0xfffffe

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    :goto_0
    return-void
.end method

.method public setSubSampleEncryption(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result p1

    const v0, 0xfffffd

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    :goto_0
    return-void
.end method

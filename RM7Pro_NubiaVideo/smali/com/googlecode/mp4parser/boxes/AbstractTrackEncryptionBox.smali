.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# instance fields
.field defaultAlgorithmId:I

.field defaultIvSize:I

.field default_KID:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    .line 3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDefaultAlgorithmId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    return v0
.end method

.method public getDefaultIvSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    return v0
.end method

.method public getDefault_KID()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setDefaultAlgorithmId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultAlgorithmId:I

    return-void
.end method

.method public setDefaultIvSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->defaultIvSize:I

    return-void
.end method

.method public setDefault_KID([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->default_KID:[B

    return-void
.end method

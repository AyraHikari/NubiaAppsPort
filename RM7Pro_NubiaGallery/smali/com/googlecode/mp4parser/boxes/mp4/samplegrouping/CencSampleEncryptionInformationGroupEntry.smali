.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "CencSampleEncryptionInformationGroupEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "seig"


# instance fields
.field private isEncrypted:I

.field private ivSize:B

.field private kid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 39
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;

    .line 105
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    if-eq v2, v3, :cond_2

    return v1

    .line 108
    :cond_2
    iget-byte v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    iget-byte v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    if-eq v2, v3, :cond_3

    return v1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

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

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    .line 52
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 54
    iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 55
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getEncrypted()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    return v0
.end method

.method public getIvSize()B
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    return v0
.end method

.method public getKid()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

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

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    .line 44
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 45
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setEncrypted(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    return-void
.end method

.method public setIvSize(B)V
    .locals 0

    .line 73
    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    return-void
.end method

.method public setKid([B)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CencSampleEncryptionInformationGroupEntry{isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->isEncrypted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ivSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->ivSize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/CencSampleEncryptionInformationGroupEntry;->kid:[B

    .line 90
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

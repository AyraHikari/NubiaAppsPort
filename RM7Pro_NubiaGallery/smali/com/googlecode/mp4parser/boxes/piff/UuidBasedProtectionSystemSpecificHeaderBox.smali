.class public Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "UuidBasedProtectionSystemSpecificHeaderBox.java"


# static fields
.field public static USER_TYPE:[B


# instance fields
.field protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

.field systemId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x30t
        -0x76t
        0x4ft
        0x18t
        0x10t
        -0xdt
        0x4at
        -0x7et
        -0x4at
        -0x38t
        0x32t
        -0x28t
        -0x55t
        -0x5ft
        -0x7dt
        -0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B

    const-string v1, "uuid"

    invoke-direct {p0, v1, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 64
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-static {v0}, Lcom/googlecode/mp4parser/util/UUIDConverter;->convert([B)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    invoke-static {v0, p1}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->createFor(Ljava/util/UUID;Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 51
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 52
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 53
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 54
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 57
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProtectionSpecificHeader()Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    return-object v0
.end method

.method public getProtectionSpecificHeaderString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/util/UUID;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    return-object v0
.end method

.method public getSystemIdString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserType()[B
    .locals 1

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->USER_TYPE:[B

    return-object v0
.end method

.method public setProtectionSpecificHeader(Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    return-void
.end method

.method public setSystemId(Ljava/util/UUID;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UuidBasedProtectionSystemSpecificHeaderBox"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{systemId="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->systemId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSize="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/UuidBasedProtectionSystemSpecificHeaderBox;->protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

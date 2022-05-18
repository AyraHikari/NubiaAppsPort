.class public Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "ProtectionSystemSpecificHeaderBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static OMA2_SYSTEM_ID:[B = null

.field public static PLAYREADY_SYSTEM_ID:[B = null

.field public static final TYPE:Ljava/lang/String; = "pssh"


# instance fields
.field content:[B

.field systemId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "A2B55680-6F43-11E0-9A3F-0002A5D5C51B"

    .line 37
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/UUIDConverter;->convert(Ljava/util/UUID;)[B

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->OMA2_SYSTEM_ID:[B

    const-string v0, "9A04F079-9840-4286-AB92-E65BE0885F95"

    .line 38
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/UUIDConverter;->convert(Ljava/util/UUID;)[B

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->PLAYREADY_SYSTEM_ID:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "pssh"

    .line 62
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 82
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    .line 83
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    .line 86
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 72
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getContent()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    return-object v0
.end method

.method protected getContentSize()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSystemId()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    return-object v0
.end method

.method public setContent([B)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->content:[B

    return-void
.end method

.method public setSystemId([B)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox;->systemId:[B

    return-void
.end method

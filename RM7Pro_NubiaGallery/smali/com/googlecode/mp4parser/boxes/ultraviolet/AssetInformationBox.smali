.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AssetInformationBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field apid:Ljava/lang/String;

.field profileVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ainf"

    .line 33
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    const-string v0, "0000"

    .line 30
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    .line 54
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 44
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 45
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProfileVersion()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->apid:Ljava/lang/String;

    return-void
.end method

.method public setProfileVersion(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/AssetInformationBox;->profileVersion:Ljava/lang/String;

    return-void
.end method

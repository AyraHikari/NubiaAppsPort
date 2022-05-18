.class public Lcom/coremedia/iso/boxes/SchemeTypeBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SchemeTypeBox.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "schm"


# instance fields
.field schemeType:Ljava/lang/String;

.field schemeUri:Ljava/lang/String;

.field schemeVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "schm"

    .line 40
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    .line 35
    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    .line 77
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 85
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 87
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSchemeType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeVersion()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    return-wide v0
.end method

.method public setSchemeType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    return-void
.end method

.method public setSchemeVersion(I)V
    .locals 2

    int-to-long v0, p1

    .line 61
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeVersion:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schema Type Box["

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeUri="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeType="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemeVersion="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/coremedia/iso/boxes/SchemeTypeBox;->schemeUri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

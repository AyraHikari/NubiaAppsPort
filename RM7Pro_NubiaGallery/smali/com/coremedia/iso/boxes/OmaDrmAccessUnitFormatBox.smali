.class public final Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "OmaDrmAccessUnitFormatBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "odaf"


# instance fields
.field private allBits:B

.field private initVectorLength:I

.field private keyIndicatorLength:I

.field private selectiveEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "odaf"

    .line 42
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 73
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 82
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 83
    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 84
    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x7

    return-wide v0
.end method

.method public getInitVectorLength()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return v0
.end method

.method public getKeyIndicatorLength()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    return v0
.end method

.method public isSelectiveEncryption()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    return v0
.end method

.method public setAllBits(B)V
    .locals 1

    .line 66
    iput-byte p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    const/16 v0, 0x80

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    return-void
.end method

.method public setInitVectorLength(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return-void
.end method

.method public setKeyIndicatorLength(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    return-void
.end method

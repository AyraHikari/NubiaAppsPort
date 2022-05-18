.class public Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field backgroundB:I

.field backgroundG:I

.field backgroundR:I

.field defaultTextBox:J

.field displayFlags:I

.field fontFace:S

.field fontName:Ljava/lang/String;

.field fontNumber:S

.field foregroundB:I

.field foregroundG:I

.field foregroundR:I

.field reserved1:J

.field reserved2:B

.field reserved3:S

.field textJustification:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "text"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    const v0, 0xffff

    .line 2
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    .line 3
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    .line 4
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    .line 13
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    .line 14
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    .line 15
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 18
    new-array v0, v0, [B

    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getBackgroundB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    return v0
.end method

.method public getBackgroundG()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    return v0
.end method

.method public getBackgroundR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 8
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 9
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 10
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11
    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 13
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 14
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 15
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 16
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 18
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x34

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDefaultTextBox()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    return-wide v0
.end method

.method public getDisplayFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    return v0
.end method

.method public getFontFace()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontNumber()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    return v0
.end method

.method public getForegroundB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    return v0
.end method

.method public getForegroundG()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    return v0
.end method

.method public getForegroundR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    return v0
.end method

.method public getReserved1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    return-wide v0
.end method

.method public getReserved2()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    return v0
.end method

.method public getReserved3()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    return v0
.end method

.method public getTextJustification()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    return v0
.end method

.method public setBackgroundB(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundB:I

    return-void
.end method

.method public setBackgroundG(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundG:I

    return-void
.end method

.method public setBackgroundR(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->backgroundR:I

    return-void
.end method

.method public setDefaultTextBox(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->defaultTextBox:J

    return-void
.end method

.method public setDisplayFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->displayFlags:I

    return-void
.end method

.method public setFontFace(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontFace:S

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontName:Ljava/lang/String;

    return-void
.end method

.method public setFontNumber(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->fontNumber:S

    return-void
.end method

.method public setForegroundB(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundB:I

    return-void
.end method

.method public setForegroundG(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundG:I

    return-void
.end method

.method public setForegroundR(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->foregroundR:I

    return-void
.end method

.method public setReserved1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved1:J

    return-void
.end method

.method public setReserved2(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved2:B

    return-void
.end method

.method public setReserved3(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->reserved3:S

    return-void
.end method

.method public setTextJustification(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->textJustification:I

    return-void
.end method

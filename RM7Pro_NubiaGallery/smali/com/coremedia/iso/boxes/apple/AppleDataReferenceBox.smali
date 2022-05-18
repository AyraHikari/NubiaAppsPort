.class public Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleDataReferenceBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rdrf"


# instance fields
.field private dataReference:Ljava/lang/String;

.field private dataReferenceSize:I

.field private dataReferenceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rdrf"

    .line 36
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 47
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I

    .line 49
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 57
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 41
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I

    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDataReference()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReference:Ljava/lang/String;

    return-object v0
.end method

.method public getDataReferenceSize()J
    .locals 2

    .line 61
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDataReferenceType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataReferenceBox;->dataReferenceType:Ljava/lang/String;

    return-object v0
.end method

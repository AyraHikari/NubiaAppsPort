.class public Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "vmhd"


# instance fields
.field private graphicsmode:I

.field private opcolor:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "vmhd"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 4
    invoke-static {p1, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0xc

    return-wide v0
.end method

.method public getGraphicsmode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    return v0
.end method

.method public getOpcolor()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    return-object v0
.end method

.method public setGraphicsmode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->graphicsmode:I

    return-void
.end method

.method public setOpcolor([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->opcolor:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMediaHeaderBox[graphicsmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getGraphicsmode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";opcolor0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";opcolor1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";opcolor2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;->getOpcolor()[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

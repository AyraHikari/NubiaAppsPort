.class public Lcom/coremedia/iso/boxes/AlbumBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AlbumBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "albm"


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private trackNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "albm"

    .line 40
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/AlbumBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 81
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    :goto_0
    return-void
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/AlbumBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 94
    iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    return v0
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->language:Ljava/lang/String;

    return-void
.end method

.method public setTrackNumber(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumBox[language="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "albumTitle="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/coremedia/iso/boxes/AlbumBox;->trackNumber:I

    if-ltz v1, :cond_0

    const-string v1, ";trackNumber="

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/AlbumBox;->getTrackNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

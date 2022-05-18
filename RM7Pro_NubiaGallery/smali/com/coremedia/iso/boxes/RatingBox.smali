.class public Lcom/coremedia/iso/boxes/RatingBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "RatingBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rtng"


# instance fields
.field private language:Ljava/lang/String;

.field private ratingCriteria:Ljava/lang/String;

.field private ratingEntity:Ljava/lang/String;

.field private ratingInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rtng"

    .line 41
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 96
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/RatingBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 97
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingEntity:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingCriteria:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->language:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingInfo:Ljava/lang/String;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 106
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/RatingBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 107
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingEntity:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingCriteria:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingCriteria()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingCriteria:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingEntity()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingInfo()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coremedia/iso/boxes/RatingBox;->language:Ljava/lang/String;

    return-void
.end method

.method public setRatingCriteria(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingCriteria:Ljava/lang/String;

    return-void
.end method

.method public setRatingEntity(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingEntity:Ljava/lang/String;

    return-void
.end method

.method public setRatingInfo(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coremedia/iso/boxes/RatingBox;->ratingInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RatingBox[language="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/RatingBox;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ratingEntity="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/RatingBox;->getRatingEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";ratingCriteria="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/RatingBox;->getRatingCriteria()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";language="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/RatingBox;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";ratingInfo="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/RatingBox;->getRatingInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

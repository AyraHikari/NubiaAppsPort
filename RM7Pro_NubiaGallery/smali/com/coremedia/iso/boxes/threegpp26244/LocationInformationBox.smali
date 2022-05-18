.class public Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "LocationInformationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "loci"


# instance fields
.field private additionalNotes:Ljava/lang/String;

.field private altitude:D

.field private astronomicalBody:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private name:Ljava/lang/String;

.field private role:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "loci"

    .line 26
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->language:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->role:I

    .line 103
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->longitude:D

    .line 104
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->latitude:D

    .line 105
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->altitude:D

    .line 106
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    return-void
.end method

.method public getAdditionalNotes()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->altitude:D

    return-wide v0
.end method

.method public getAstronomicalBody()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 113
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 114
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    iget v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->role:I

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 118
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->longitude:D

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 119
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->latitude:D

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 120
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->altitude:D

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 121
    iget-object v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    iget-object v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x16

    iget-object v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->role:I

    return v0
.end method

.method public setAdditionalNotes(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->additionalNotes:Ljava/lang/String;

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->altitude:D

    return-void
.end method

.method public setAstronomicalBody(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->astronomicalBody:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->language:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->name:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/coremedia/iso/boxes/threegpp26244/LocationInformationBox;->role:I

    return-void
.end method

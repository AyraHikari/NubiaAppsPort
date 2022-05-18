.class public final Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trkn"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trkn"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNumberOfTracks()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public getTrackNumber()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public setNumberOfTracks(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    aput-byte p1, v0, v1

    .line 3
    iget-object p1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public setTrackNumber(B)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    .line 7
    aput-byte p1, v0, v1

    .line 8
    iget-object p1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public setTrackNumber(BB)V
    .locals 5

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v2, 0x4

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v3, 0x8

    new-array v3, v3, [B

    aput-byte v1, v3, v1

    const/4 v4, 0x1

    aput-byte v1, v3, v4

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    const/4 v4, 0x3

    aput-byte p1, v3, v4

    aput-byte v1, v3, v2

    const/4 p1, 0x5

    aput-byte p2, v3, p1

    const/4 p1, 0x6

    aput-byte v1, v3, p1

    const/4 p1, 0x7

    aput-byte v1, v3, p1

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

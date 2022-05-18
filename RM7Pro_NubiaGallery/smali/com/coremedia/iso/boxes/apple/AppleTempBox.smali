.class public final Lcom/coremedia/iso/boxes/apple/AppleTempBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleTempBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tmpo"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tmpo"

    .line 11
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint16AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method


# virtual methods
.method public getTempo()I
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public setTempo(I)V
    .locals 3

    .line 21
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 22
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 23
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 24
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 25
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v2, 0x2

    new-array v2, v2, [B

    aput-byte v1, v2, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

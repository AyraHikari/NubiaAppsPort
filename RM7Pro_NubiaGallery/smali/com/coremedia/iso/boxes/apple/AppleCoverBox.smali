.class public final Lcom/coremedia/iso/boxes/apple/AppleCoverBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleCoverBox.java"


# static fields
.field private static LOG:Ljava/util/logging/Logger; = null

.field public static final TYPE:Ljava/lang/String; = "covr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "covr"

    .line 14
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, "---"

    return-object v0
.end method

.method public setJpg([B)V
    .locals 2

    .line 28
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 29
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 30
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 31
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 32
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public setPng([B)V
    .locals 2

    .line 19
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 20
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 21
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 22
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 23
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object p1, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->LOG:Ljava/util/logging/Logger;

    const-string v0, "---"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

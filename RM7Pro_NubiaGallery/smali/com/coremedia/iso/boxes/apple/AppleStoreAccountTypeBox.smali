.class public Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleStoreAccountTypeBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "akID"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "akID"

    .line 11
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method


# virtual methods
.method public getReadableValue()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "unknown Account"

    return-object v0

    :cond_0
    const-string v0, "AOL Account"

    return-object v0

    :cond_1
    const-string v0, "iTunes Account"

    return-object v0
.end method

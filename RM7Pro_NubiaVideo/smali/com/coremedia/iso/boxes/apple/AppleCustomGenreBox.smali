.class public final Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "\u00a9gen"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "\u00a9gen"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method


# virtual methods
.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {p1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

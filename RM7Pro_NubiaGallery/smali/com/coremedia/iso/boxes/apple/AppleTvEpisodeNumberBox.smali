.class public Lcom/coremedia/iso/boxes/apple/AppleTvEpisodeNumberBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleTvEpisodeNumberBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tven"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tven"

    .line 11
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTvEpisodeNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method

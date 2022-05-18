.class public final Lcom/coremedia/iso/boxes/apple/AppleCompilationBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleCompilationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "cpil"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "cpil"

    .line 11
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCompilationBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method

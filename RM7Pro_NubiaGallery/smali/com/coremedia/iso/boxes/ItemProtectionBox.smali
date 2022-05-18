.class public Lcom/coremedia/iso/boxes/ItemProtectionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "ItemProtectionBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ipro"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ipro"

    .line 35
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 49
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 50
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 57
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getItemProtectionScheme()Lcom/coremedia/iso/boxes/SchemeInformationBox;
    .locals 2

    .line 39
    const-class v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-class v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/ItemProtectionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

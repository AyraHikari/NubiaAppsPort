.class public Lcom/coremedia/iso/boxes/ItemProtectionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ipro"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ipro"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/FullContainerBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/FullContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/FullContainerBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getItemProtectionScheme()Lcom/coremedia/iso/boxes/SchemeInformationBox;
    .locals 2

    .line 1
    const-class v0, Lcom/coremedia/iso/boxes/SchemeInformationBox;

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

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

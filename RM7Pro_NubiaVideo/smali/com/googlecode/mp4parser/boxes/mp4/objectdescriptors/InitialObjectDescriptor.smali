.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase;
.source "SourceFile"


# instance fields
.field audioProfileLevelIndication:I

.field esDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field extensionDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field graphicsProfileLevelIndication:I

.field includeInlineProfileLevelFlag:I

.field oDProfileLevelIndication:I

.field private objectDescriptorId:I

.field sceneProfileLevelIndication:I

.field unknownDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field urlFlag:I

.field urlLength:I

.field urlString:Ljava/lang/String;

.field visualProfileLevelIndication:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const v1, 0xffc0

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x6

    .line 2
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->objectDescriptorId:I

    and-int/lit8 v1, v0, 0x3f

    shr-int/lit8 v1, v1, 0x5

    .line 3
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    and-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x4

    .line 4
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->includeInlineProfileLevelFlag:I

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 6
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    .line 8
    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlString:Ljava/lang/String;

    .line 9
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->oDProfileLevelIndication:I

    .line 11
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->sceneProfileLevelIndication:I

    .line 12
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->audioProfileLevelIndication:I

    .line 13
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->visualProfileLevelIndication:I

    .line 14
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->graphicsProfileLevelIndication:I

    add-int/lit8 v0, v0, -0x5

    if-le v0, v1, :cond_2

    .line 15
    invoke-static {v3, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v4

    sub-int/2addr v0, v4

    .line 17
    instance-of v4, v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v4, :cond_1

    .line 18
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-le v0, v1, :cond_4

    .line 20
    invoke-static {v3, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object p1

    .line 21
    instance-of v0, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialObjectDescriptor"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{objectDescriptorId="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->objectDescriptorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", urlFlag="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", includeInlineProfileLevelFlag="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->includeInlineProfileLevelFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", urlLength="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", urlString=\'"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", oDProfileLevelIndication="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->oDProfileLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneProfileLevelIndication="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->sceneProfileLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfileLevelIndication="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->audioProfileLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visualProfileLevelIndication="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->visualProfileLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", graphicsProfileLevelIndication="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->graphicsProfileLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", esDescriptors="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->esDescriptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionDescriptors="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->extensionDescriptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unknownDescriptors="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/InitialObjectDescriptor;->unknownDescriptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

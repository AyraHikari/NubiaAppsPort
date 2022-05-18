.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "ESDescriptor.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    tags = {
        0x3
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field URLFlag:I

.field URLLength:I

.field URLString:Ljava/lang/String;

.field decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

.field dependsOnEsId:I

.field esId:I

.field oCREsId:I

.field oCRstreamFlag:I

.field otherDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field remoteODFlag:I

.field slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

.field streamDependenceFlag:I

.field streamPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 337
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .line 339
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    if-eq v2, v3, :cond_2

    return v1

    .line 340
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    if-eq v2, v3, :cond_3

    return v1

    .line 341
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    if-eq v2, v3, :cond_4

    return v1

    .line 342
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    if-eq v2, v3, :cond_5

    return v1

    .line 343
    :cond_5
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    if-eq v2, v3, :cond_6

    return v1

    .line 344
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    if-eq v2, v3, :cond_7

    return v1

    .line 345
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    if-eq v2, v3, :cond_8

    return v1

    .line 346
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    if-eq v2, v3, :cond_9

    return v1

    .line 347
    :cond_9
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    if-eq v2, v3, :cond_a

    return v1

    .line 348
    :cond_a
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_0
    return v1

    .line 349
    :cond_c
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_d
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    if-eqz v2, :cond_e

    :goto_1
    return v1

    .line 351
    :cond_e
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_f
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    if-eqz v2, :cond_10

    :goto_2
    return v1

    .line 353
    :cond_10
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_3

    :cond_11
    if-eqz p1, :cond_12

    :goto_3
    return v1

    :cond_12
    return v0

    :cond_13
    :goto_4
    return v1
.end method

.method public getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    return-object v0
.end method

.method public getDependsOnEsId()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    return v0
.end method

.method public getEsId()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    return v0
.end method

.method public getOtherDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getRemoteODFlag()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    return v0
.end method

.method public getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    return-object v0
.end method

.method public getStreamDependenceFlag()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    return v0
.end method

.method public getStreamPriority()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    return v0
.end method

.method public getURLFlag()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    return v0
.end method

.method public getURLLength()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    return v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    return-object v0
.end method

.method public getoCREsId()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    return v0
.end method

.method public getoCRstreamFlag()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 361
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 363
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 364
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 371
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 372
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    .line 87
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    .line 88
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    ushr-int/lit8 v2, v0, 0x6

    const/4 v3, 0x1

    and-int/2addr v2, v3

    .line 89
    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    ushr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v3

    .line 90
    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    and-int/lit8 v0, v0, 0x1f

    .line 91
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    if-ne v1, v3, :cond_0

    .line 94
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    .line 96
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    if-ne v0, v3, :cond_1

    .line 97
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    .line 98
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    .line 100
    :cond_1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    if-ne v0, v3, :cond_2

    .line 101
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSizeBytes()I

    move-result v0

    add-int/2addr v0, v3

    const/4 v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    add-int/2addr v0, v2

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    add-int/2addr v0, v2

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    if-ne v2, v3, :cond_5

    move v4, v1

    :cond_5
    add-int/2addr v0, v4

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 107
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSize()I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    const-string v6, ", size: "

    const/4 v7, -0x1

    if-le v3, v4, :cond_8

    .line 108
    invoke-static {v7, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v3

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-long v8, v4

    .line 110
    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - ESDescriptor1 read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_6
    move-object v11, v5

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 113
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v0, v4

    goto :goto_3

    :cond_7
    int-to-long v10, v0

    add-long/2addr v10, v8

    long-to-int v0, v10

    .line 118
    :goto_3
    instance-of v2, v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    if-eqz v2, :cond_8

    .line 119
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    iput-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    .line 123
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSize()I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_b

    .line 125
    invoke-static {v7, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v3

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-long v8, v4

    .line 127
    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - ESDescriptor2 read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_4

    :cond_9
    move-object v11, v5

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v3, :cond_a

    .line 129
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 130
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v0, v4

    goto :goto_5

    :cond_a
    int-to-long v10, v0

    add-long/2addr v10, v8

    long-to-int v0, v10

    .line 135
    :goto_5
    instance-of v2, v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    if-eqz v2, :cond_c

    .line 136
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    iput-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    goto :goto_6

    .line 139
    :cond_b
    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->log:Ljava/util/logging/Logger;

    const-string v3, "SLConfigDescriptor is missing!"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 142
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSize()I

    move-result v2

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_f

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 144
    invoke-static {v7, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v3

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-long v8, v4

    .line 146
    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - ESDescriptor3 read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_7

    :cond_d
    move-object v11, v5

    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v3, :cond_e

    .line 148
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 149
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v0, v4

    goto :goto_8

    :cond_e
    int-to-long v10, v0

    add-long/2addr v10, v8

    long-to-int v0, v10

    .line 154
    :goto_8
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->otherDescriptors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    return-void
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serializedSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    .line 179
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 180
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serializedSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 181
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 182
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    shl-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    .line 183
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 184
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    if-lez v1, :cond_0

    .line 185
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 187
    :cond_0
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    if-lez v1, :cond_1

    .line 188
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 189
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUtf8String(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 191
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    if-lez v1, :cond_2

    .line 192
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 197
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public serializedSize()I
    .locals 2

    .line 159
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    if-lez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 162
    :goto_0
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    if-lez v1, :cond_1

    .line 163
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 165
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->serializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->serializedSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    return-void
.end method

.method public setDependsOnEsId(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    return-void
.end method

.method public setEsId(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    return-void
.end method

.method public setRemoteODFlag(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    return-void
.end method

.method public setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    return-void
.end method

.method public setStreamDependenceFlag(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    return-void
.end method

.method public setStreamPriority(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    return-void
.end method

.method public setURLFlag(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    return-void
.end method

.method public setURLLength(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    return-void
.end method

.method public setURLString(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    return-void
.end method

.method public setoCREsId(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    return-void
.end method

.method public setoCRstreamFlag(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ESDescriptor"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{esId="

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->esId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamDependenceFlag="

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamDependenceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLFlag="

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCRstreamFlag="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCRstreamFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamPriority="

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->streamPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLLength="

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URLString=\'"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->URLString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", remoteODFlag="

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->remoteODFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnEsId="

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->dependsOnEsId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCREsId="

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->oCREsId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decoderConfigDescriptor="

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slConfigDescriptor="

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

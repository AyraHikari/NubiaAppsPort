.class public Lcom/coremedia/iso/boxes/ItemLocationBox$Item;
.super Ljava/lang/Object;
.source "ItemLocationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/ItemLocationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public baseOffset:J

.field public constructionMethod:I

.field public dataReferenceIndex:I

.field public extents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;",
            ">;"
        }
    .end annotation
.end field

.field public itemId:I

.field final synthetic this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;IIIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    .line 196
    iput p2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    .line 197
    iput p3, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    .line 198
    iput p4, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    .line 199
    iput-wide p5, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    .line 200
    iput-object p7, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 173
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    .line 174
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    .line 176
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    .line 178
    iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    .line 181
    :cond_0
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    .line 182
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    if-lez v0, :cond_1

    .line 183
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/IsoTypeReaderVariable;->read(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 185
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    .line 187
    :goto_0
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 191
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    invoke-direct {v3, p1, p2}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;-><init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    check-cast p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;

    .line 251
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 252
    :cond_2
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    iget v3, p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    if-eq v2, v3, :cond_3

    return v1

    .line 253
    :cond_3
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    iget v3, p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    if-eq v2, v3, :cond_4

    return v1

    .line 254
    :cond_4
    iget v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    iget v3, p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    if-eq v2, v3, :cond_5

    return v1

    .line 255
    :cond_5
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    iget-object p1, p1, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    :goto_0
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 226
    iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 228
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 233
    :cond_0
    iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 234
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    if-lez v0, :cond_1

    .line 235
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/IsoTypeWriterVariable;->write(JLjava/nio/ByteBuffer;I)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 239
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    .line 240
    invoke-virtual {v1, p1}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->getContent(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getSize()I
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr v0, v1

    .line 211
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->this$0:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->baseOffsetSize:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;

    .line 216
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/ItemLocationBox$Extent;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 262
    iget v0, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 263
    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setBaseOffset(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item{baseOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->baseOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constructionMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->constructionMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataReferenceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->dataReferenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ItemLocationBox$Item;->extents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    }
.end annotation


# instance fields
.field dataRate:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field numIndSub:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dec3"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 p1, 0xd

    .line 2
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    const/4 p1, 0x3

    .line 3
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    if-ge v1, v3, :cond_1

    .line 5
    new-instance v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;-><init>()V

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    const/4 v4, 0x5

    .line 7
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 8
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 9
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 10
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    .line 11
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved:I

    const/4 v4, 0x4

    .line 12
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v4, :cond_0

    const/16 v4, 0x9

    .line 13
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved2:I

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addEntry(Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    const/16 v1, 0xd

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 3
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 4
    iget-object p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    .line 5
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 6
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 7
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 8
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    invoke-virtual {v0, v4, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 9
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    invoke-virtual {v0, v4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 10
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved:I

    invoke-virtual {v0, v4, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 11
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 12
    iget v4, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v4, :cond_0

    .line 13
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    goto :goto_0

    .line 14
    :cond_0
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved2:I

    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getContentSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    .line 2
    iget v3, v3, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v3, :cond_0

    const-wide/16 v3, 0x4

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x3

    :goto_1
    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getDataRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getNumIndSub()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    return v0
.end method

.method public setDataRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->dataRate:I

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setNumIndSub(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->numIndSub:I

    return-void
.end method

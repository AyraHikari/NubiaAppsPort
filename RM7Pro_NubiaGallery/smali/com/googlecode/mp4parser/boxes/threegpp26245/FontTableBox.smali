.class public Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "FontTableBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;
    }
.end annotation


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ftab"

    .line 20
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 35
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    new-instance v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;-><init>()V

    .line 38
    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 39
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    .line 47
    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->getContent(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    .line 27
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->entries:Ljava/util/List;

    return-void
.end method

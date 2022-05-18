.class public Lcom/coremedia/iso/boxes/dece/TrickPlayBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrickPlayBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "trik"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "trik"

    .line 27
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    new-instance v1, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 95
    iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;

    .line 96
    invoke-static {v1}, Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;->access$000(Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/dece/TrickPlayBox$Entry;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrickPlayBox"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{entries="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/dece/TrickPlayBox;->entries:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

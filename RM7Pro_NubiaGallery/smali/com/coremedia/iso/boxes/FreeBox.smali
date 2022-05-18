.class public Lcom/coremedia/iso/boxes/FreeBox;
.super Ljava/lang/Object;
.source "FreeBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "free"


# instance fields
.field data:Ljava/nio/ByteBuffer;

.field private parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field replacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    .line 48
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public addAndReplace(Lcom/coremedia/iso/boxes/Box;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    .line 110
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 62
    invoke-interface {v1, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 64
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    const-string v0, "free"

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 69
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 85
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "free"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    instance-of p2, p1, Ljava/nio/channels/FileChannel;

    if-eqz p2, :cond_0

    const-wide/32 v0, 0x100000

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 98
    check-cast p1, Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method

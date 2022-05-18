.class public Lcom/coremedia/iso/boxes/ItemDataBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "ItemDataBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "idat"


# instance fields
.field data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "idat"

    .line 16
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/coremedia/iso/boxes/ItemDataBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

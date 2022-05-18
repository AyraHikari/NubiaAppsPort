.class public Lcom/coremedia/iso/boxes/FreeSpaceBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "FreeSpaceBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "skip"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "skip"

    .line 38
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    .line 52
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreeSpaceBox[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/FreeSpaceBox;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

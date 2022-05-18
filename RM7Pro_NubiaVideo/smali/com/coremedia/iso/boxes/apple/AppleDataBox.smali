.class public final Lcom/coremedia/iso/boxes/apple/AppleDataBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "data"


# instance fields
.field private data:[B

.field private fourBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "data"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    return-void
.end method

.method private static getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setVersion(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 3
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    return-object v0
.end method

.method public static getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 3

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getEmpty()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0
.end method

.method public static getUint16AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint32AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    const/16 v1, 0x15

    .line 2
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-object v0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    return-object v0
.end method

.method public getFourBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->data:[B

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setFourBytes([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->fourBytes:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

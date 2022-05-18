.class public final Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public readFloat()F
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public readFloatArray()[F
    .locals 4

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readIntArray()[I
    .locals 4

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

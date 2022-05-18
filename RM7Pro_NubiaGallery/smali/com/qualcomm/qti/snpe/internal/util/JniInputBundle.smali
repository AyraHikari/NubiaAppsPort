.class public final Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
.super Ljava/lang/Object;
.source "JniInputBundle.java"


# static fields
.field private static final STRING_TERMINATOR:[B


# instance fields
.field private final mBuffer:Ljava/io/ByteArrayOutputStream;

.field private final mWriter:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 17
    sput-object v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->STRING_TERMINATOR:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 23
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public marshall()Ljava/nio/ByteBuffer;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeInts([I)V
    .locals 3

    .line 35
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 37
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UTF-8"

    .line 65
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 66
    array-length v0, p1

    sget-object v1, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->STRING_TERMINATOR:[B

    array-length v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    iget-object p1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->mWriter:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeStrings(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

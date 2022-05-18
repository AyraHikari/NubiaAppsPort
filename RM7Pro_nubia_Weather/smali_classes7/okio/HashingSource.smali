.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Lokio/Source;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 59
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 2
    .param p0, "source"    # Lokio/Source;

    .prologue
    .line 43
    new-instance v0, Lokio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 2
    .param p0, "source"    # Lokio/Source;

    .prologue
    .line 48
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 2
    .param p0, "source"    # Lokio/Source;

    .prologue
    .line 53
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lokio/ByteString;
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 100
    .local v0, "result":[B
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 68
    .local v4, "result":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_1

    .line 69
    iget-wide v8, p1, Lokio/Buffer;->size:J

    sub-long v6, v8, v4

    .line 72
    .local v6, "start":J
    iget-wide v0, p1, Lokio/Buffer;->size:J

    .line 73
    .local v0, "offset":J
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 74
    .local v3, "s":Lokio/Segment;
    :goto_0
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 75
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 76
    iget v8, v3, Lokio/Segment;->limit:I

    iget v9, v3, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v0, v8

    goto :goto_0

    .line 80
    :cond_0
    :goto_1
    iget-wide v8, p1, Lokio/Buffer;->size:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 81
    iget v8, v3, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, v6

    sub-long/2addr v8, v0

    long-to-int v2, v8

    .line 82
    .local v2, "pos":I
    iget-object v8, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v9, v3, Lokio/Segment;->data:[B

    iget v10, v3, Lokio/Segment;->limit:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v9, v2, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    iget v8, v3, Lokio/Segment;->limit:I

    iget v9, v3, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 84
    move-wide v6, v0

    .line 85
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 86
    goto :goto_1

    .line 89
    .end local v0    # "offset":J
    .end local v2    # "pos":I
    .end local v3    # "s":Lokio/Segment;
    .end local v6    # "start":J
    :cond_1
    return-wide v4
.end method

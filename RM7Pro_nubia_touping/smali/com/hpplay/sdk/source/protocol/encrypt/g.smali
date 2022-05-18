.class public Lcom/hpplay/sdk/source/protocol/encrypt/g;
.super Lcom/hpplay/sdk/source/protocol/encrypt/d;
.source "SourceFile"


# static fields
.field private static final Z:Ljava/lang/String; = "lebo"

.field private static final aa:Ljava/lang/String; = "switch_protocol"


# instance fields
.field O:[B

.field P:[B

.field Q:[B

.field R:[B

.field S:[B

.field T:[B

.field U:[B

.field V:[B

.field W:[B

.field X:[B

.field Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x40

    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    .line 22
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    .line 23
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Q:[B

    .line 25
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->R:[B

    .line 27
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    .line 28
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->T:[B

    .line 29
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    .line 30
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->V:[B

    .line 32
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->W:[B

    .line 34
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    .line 39
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    .line 40
    return-void
.end method


# virtual methods
.method public a([BB)[B
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    array-length v1, v1

    invoke-static {p1, v6, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->T:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->V:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->publicKeyGen([B[B[B)Z

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->T:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->sign([B[B[B[B)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    .line 94
    new-array v1, v6, [B

    .line 95
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->intToBytes(I)[B

    move-result-object v0

    .line 96
    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const/4 v0, 0x4

    aput-byte p2, v1, v0

    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([BB)[B
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->W:[B

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->W:[B

    array-length v1, v1

    invoke-static {p1, v5, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->W:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->verify([B[B[B)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const-string v0, "switch_protocol"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    .line 108
    new-array v1, v5, [B

    .line 109
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->intToBytes(I)[B

    move-result-object v0

    .line 110
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    const/4 v0, 0x4

    aput-byte p2, v1, v0

    .line 112
    const-string v0, "switch_protocol"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g([B)[B
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    array-length v1, v1

    invoke-static {p1, v6, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->U:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->S:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->verify([B[B[B)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    .line 69
    new-array v1, v6, [B

    .line 70
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 71
    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 72
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 73
    const/4 v2, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 74
    const/4 v0, 0x4

    aput-byte v5, v1, v0

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h([B)Z
    .locals 4

    .prologue
    .line 81
    array-length v0, p1

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    .line 82
    const/4 v1, 0x5

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 84
    const-string v0, "switch_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Q:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->R:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->publicKeyGen([B[B[B)Z

    .line 44
    const-string v0, "lebo"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Y:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->Q:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->X:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->sign([B[B[B[B)Z

    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    .line 54
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 55
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->intToBytes(I)[B

    move-result-object v0

    .line 56
    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    .line 58
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->O:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/g;->P:[B

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([B[B)[B

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

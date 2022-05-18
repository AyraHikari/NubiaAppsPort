.class public Lcom/hpplay/sdk/source/protocol/encrypt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0xb

.field public static final B:I = 0x0

.field public static final C:I = 0x1

.field public static final D:I = 0x2

.field public static final E:I = 0x3

.field public static final F:I = 0x4

.field public static final G:I = 0x5

.field public static final H:I = 0x6

.field public static final I:I = 0x7

.field public static final J:I = 0x8

.field public static final K:I = 0x9

.field public static final L:I = 0xa

.field public static final M:I = 0xb

.field public static final N:I = 0xc

.field private static final O:Ljava/lang/String; = "LelinkEncrypt"

.field private static final P:I = 0x2

.field private static final Q:I = 0x1

.field private static final R:I = 0x0

.field private static final S:Ljava/lang/String; = "LELINK-VERIFY_ATV-KEY"

.field private static final T:Ljava/lang/String; = "LEINK-VERIFY-ATV-NONCE"

.field private static final U:Ljava/lang/String; = "LELINK-VERIFY_IDENTITY-KEY"

.field private static final V:Ljava/lang/String; = "LEINK-VERIFY-IDENTITY-NONCE"

.field private static final W:Ljava/lang/String; = "LELINK-IDENTITY-KEY"

.field private static final X:Ljava/lang/String; = "LELINK-IDENTITY-NONCE"

.field private static final Y:Ljava/lang/String; = "LELINK-AUTH_IDENTITY-KEY"

.field private static final Z:Ljava/lang/String; = "LELINK-AUTH_IDENTITY-NONCE"

.field public static final a:Ljava/lang/String; = "LELINK-VERIFY_SIGNATURE-KEY"

.field private static final aa:Ljava/lang/String; = "LELINK_USER"

.field public static final b:Ljava/lang/String; = "LELINK-VERIFY-SIGNATURE-NONCE"

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x5

.field public static final o:I = 0x3

.field public static final p:I = 0x4

.field public static final q:I = 0x5

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x8

.field public static final u:I = 0x8

.field public static final v:I = 0x9

.field public static final w:I = 0xa

.field public static final x:I = 0xb

.field public static final y:I = 0x9

.field public static final z:I = 0xa


# instance fields
.field private aA:[B

.field private aB:[B

.field private aC:I

.field private aD:Ljava/lang/String;

.field private aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

.field private ab:Ljava/lang/String;

.field private ac:Z

.field private ad:[B

.field private ae:[B

.field private af:B

.field private ag:B

.field private ah:[B

.field private ai:B

.field private aj:B

.field private ak:[B

.field private al:[B

.field private am:[B

.field private an:[B

.field private ao:[B

.field private ap:[B

.field private aq:[B

.field private ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

.field private as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

.field private at:Ljava/lang/String;

.field private au:Z

.field private av:Lcom/hpplay/sdk/source/protocol/b/e;

.field private aw:[B

.field private ax:[B

.field private ay:[B

.field private az:[B

.field public c:[B

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x20

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "000000"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ab:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ac:Z

    .line 70
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ad:[B

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ae:[B

    .line 75
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    .line 79
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c:[B

    .line 80
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    .line 81
    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e:[B

    .line 95
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    .line 103
    iput v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    .line 104
    const-string v0, "success"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->at:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    .line 181
    return-void
.end method

.method static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 782
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 783
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    return-object v0
.end method

.method private b([B[B)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 654
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v1

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    if-nez v0, :cond_2

    .line 658
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e()Lcom/hpplay/sdk/source/protocol/encrypt/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    if-eqz v0, :cond_0

    .line 663
    const/16 v0, 0x40

    new-array v6, v0, [B

    .line 664
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    array-length v2, v6

    invoke-virtual {v0, v6, v6, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->b([B[BI)V

    .line 665
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    array-length v2, p1

    invoke-virtual {v0, p1, p1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->b([B[BI)V

    .line 666
    array-length v0, p1

    int-to-long v4, v0

    move-object v0, p2

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a([BI[BIJ[B)I

    move-result v0

    if-nez v0, :cond_0

    .line 668
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private g([B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 629
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    .line 632
    :cond_1
    const/16 v0, 0x40

    new-array v6, v0, [B

    .line 633
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    if-nez v0, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e()Lcom/hpplay/sdk/source/protocol/encrypt/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 635
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    array-length v2, v6

    invoke-virtual {v0, v6, v6, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([B[BI)V

    .line 641
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 642
    array-length v2, p1

    int-to-long v4, v2

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->b([BI[BIJ[B)I

    .line 644
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    array-length v2, p1

    invoke-virtual {v1, p1, p1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([B[BI)V

    goto :goto_0

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    array-length v2, v6

    invoke-virtual {v0, v6, v6, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([B[BI)V

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 772
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/protocol/d;->d()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "HappyCast5,0/500.0"

    .line 773
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->c(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "0xff99ffex0022"

    .line 774
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->l(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->at:Ljava/lang/String;

    .line 775
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->k(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const-string v1, "application/octet-stream"

    .line 776
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/d;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 778
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 772
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ab:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public a([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    if-nez p1, :cond_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 193
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->removeHeader([B)[B

    move-result-object v0

    .line 196
    :try_start_0
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;

    .line 197
    if-eqz v0, :cond_1

    .line 198
    const-string v2, "atv"

    invoke-virtual {v0, v2}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const-string v2, "atv"

    invoke-virtual {v0, v2}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    .line 205
    :cond_1
    const-string v0, "LelinkEncrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atv : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/d;->f()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method a([B[BI)[B
    .locals 2

    .prologue
    .line 797
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 798
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 799
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 801
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 800
    invoke-static {v0, v1, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 806
    :goto_0
    return-object v0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    const-string v1, "LelinkEncrypt"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([[B)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 681
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v5

    if-eqz v0, :cond_0

    aget-object v0, p1, v5

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 707
    :goto_0
    return-object v0

    .line 684
    :cond_1
    aget-object v2, p1, v5

    .line 685
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 686
    array-length v0, v2

    .line 689
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 690
    const/4 v4, 0x1

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 691
    const/4 v4, 0x2

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 692
    const/4 v4, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 695
    :try_start_0
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->g([B)[B

    move-result-object v4

    .line 696
    array-length v0, v3

    array-length v5, v2

    add-int/2addr v0, v5

    array-length v5, v4

    add-int/2addr v0, v5

    new-array v0, v0, [B

    .line 697
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    const/4 v5, 0x0

    array-length v6, v3

    array-length v7, v2

    invoke-static {v2, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    const/4 v5, 0x0

    array-length v3, v3

    array-length v2, v2

    add-int/2addr v2, v3

    array-length v3, v4

    invoke-static {v4, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 707
    goto :goto_0
.end method

.method public b([B)Z
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 275
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return v0

    .line 278
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 279
    const-string v3, "453"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    const-string v1, "453"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_1
    const-string v3, "LelinkEncrypt"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getBody([B)[B

    move-result-object v2

    .line 285
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v3, :cond_3

    .line 286
    :cond_2
    const-string v1, "failed"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_3
    array-length v3, v2

    invoke-static {v2, v0, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a([BIII)Lcom/hpplay/sdk/source/protocol/encrypt/h;

    move-result-object v2

    .line 290
    if-nez v2, :cond_4

    .line 291
    const-string v1, "failed"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_4
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput-byte v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->af:B

    .line 295
    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput-byte v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ag:B

    .line 297
    iget v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 326
    goto :goto_0

    .line 300
    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aw:[B

    .line 301
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v0

    .line 304
    new-instance v2, Lcom/hpplay/sdk/source/protocol/b/a/b;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/b/a/b;-><init>()V

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 305
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    const-string v3, "LELINK_USER"

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ab:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/b/e;->step1(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    const/16 v3, 0x800

    const-string v4, "SHA-1"

    .line 308
    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/protocol/b/f;->a(ILjava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/f;

    move-result-object v3

    .line 310
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aw:[B

    .line 312
    invoke-static {v4}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v4

    .line 308
    invoke-virtual {v2, v3, v0, v4}, Lcom/hpplay/sdk/source/protocol/b/e;->step2(Lcom/hpplay/sdk/source/protocol/b/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/hpplay/sdk/source/protocol/b/c;
    :try_end_0
    .catch Lcom/hpplay/sdk/source/protocol/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 318
    :pswitch_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ad:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ad:[B

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ae:[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ae:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()[B
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 224
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 228
    aput-byte v8, v0, v8

    .line 229
    iget v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 230
    aput-byte v7, v0, v11

    .line 231
    new-array v1, v9, [B

    .line 233
    new-instance v2, Lcom/hpplay/sdk/source/protocol/encrypt/h;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;-><init>()V

    .line 234
    iget v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v3, :pswitch_data_0

    .line 266
    :goto_1
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a()[B

    move-result-object v0

    .line 267
    const-string v1, "LelinkEncrypt"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->r()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[B)[B

    move-result-object v0

    .line 270
    const-string v1, "LelinkEncrypt"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_0
    aput-byte v9, v0, v7

    .line 238
    aput-byte v9, v1, v8

    .line 239
    aput-byte v7, v1, v7

    .line 240
    invoke-virtual {v2, v8, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 241
    aget-byte v0, v1, v8

    invoke-virtual {v2, v7, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 242
    aget-byte v0, v1, v7

    invoke-virtual {v2, v9, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 243
    const/4 v0, 0x4

    const-string v1, "LELINK_USER"

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(ILjava/lang/String;)V

    .line 244
    const-string v0, "default"

    invoke-virtual {v2, v11, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 247
    :pswitch_1
    aput-byte v7, v0, v7

    .line 248
    aput-byte v7, v1, v8

    .line 249
    aput-byte v7, v1, v7

    .line 250
    const/16 v3, 0x40

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c:[B

    .line 251
    new-array v3, v10, [B

    iput-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    .line 252
    new-array v3, v10, [B

    iput-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e:[B

    .line 253
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c:[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    iget-object v6, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->publicKeyGen([B[B[B)Z

    .line 254
    const/16 v3, 0x40

    new-array v3, v3, [B

    .line 255
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    array-length v5, v5

    invoke-static {v4, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    new-array v4, v10, [B

    iput-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    .line 257
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 258
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    array-length v5, v5

    invoke-static {v4, v8, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    invoke-virtual {v2, v8, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 261
    aget-byte v0, v1, v8

    invoke-virtual {v2, v7, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 262
    aget-byte v0, v1, v7

    invoke-virtual {v2, v9, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 263
    invoke-virtual {v2, v11, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    goto/16 :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c([B)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/16 v6, 0x40

    const/16 v5, 0x20

    const/4 v7, 0x0

    .line 389
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 390
    const-string v2, "LelinkEncrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vrify ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "603"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v0, "603"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    move v0, v7

    .line 479
    :goto_0
    return v0

    .line 396
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getBody([B)[B

    move-result-object v1

    .line 397
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v2, :cond_2

    .line 398
    :cond_1
    const-string v0, "failed"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    move v0, v7

    .line 399
    goto :goto_0

    .line 401
    :cond_2
    array-length v2, v1

    const/4 v3, 0x3

    invoke-static {v1, v7, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a([BIII)Lcom/hpplay/sdk/source/protocol/encrypt/h;

    move-result-object v1

    .line 402
    if-nez v1, :cond_3

    .line 403
    const-string v0, "failed"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    move v0, v7

    .line 404
    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->af:B

    .line 407
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ag:B

    .line 409
    iget v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v2, :pswitch_data_0

    .line 478
    :goto_1
    const-string v0, "failed"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    move v0, v7

    .line 479
    goto :goto_0

    .line 412
    :pswitch_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v1

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 415
    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 414
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/b/e;->step3(Ljava/math/BigInteger;)V

    .line 417
    const-string v1, "LELINK-VERIFY_ATV-KEY"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {p0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    .line 419
    const-string v1, "LEINK-VERIFY-ATV-NONCE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    .line 421
    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    .line 422
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aB:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aw:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    const/16 v4, 0x20

    const/16 v5, 0x20

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ax:[B

    .line 426
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ax:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ax:[B

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->g([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->az:[B
    :try_end_0
    .catch Lcom/hpplay/sdk/source/protocol/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "LelinkEncrypt"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 434
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v0

    .line 435
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    .line 436
    new-array v1, v6, [B

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->an:[B

    .line 437
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    array-length v2, v2

    invoke-static {v0, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->an:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->an:[B

    array-length v2, v2

    invoke-static {v0, v5, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    .line 441
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->al:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/b;->b([B[B[B)V

    .line 446
    :try_start_1
    const-string v0, "LELINK-VERIFY_SIGNATURE-KEY"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 448
    const-string v1, "LELINK-VERIFY-SIGNATURE-NONCE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v1

    .line 455
    const/16 v2, 0x40

    new-array v4, v2, [B

    .line 457
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aeInit([B[BZ)Z

    .line 458
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->an:[B

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aecrypt([BII[BIZ)Z

    .line 461
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 462
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    array-length v5, v5

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    array-length v5, v5

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ad:[B

    invoke-virtual {v1, v2, v0, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->verify([B[B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    const-string v0, "success"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    .line 471
    :goto_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 469
    :cond_4
    const-string v0, "failed"

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 472
    :catch_1
    move-exception v0

    .line 473
    const-string v1, "LelinkEncrypt"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()[B
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    .line 343
    :cond_0
    new-array v0, v8, [B

    .line 344
    new-instance v1, Lcom/hpplay/sdk/source/protocol/encrypt/h;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;-><init>()V

    .line 345
    iget v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v2, :pswitch_data_0

    .line 374
    :goto_1
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a()[B

    move-result-object v0

    .line 376
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->p()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[B)[B

    move-result-object v0

    .line 378
    const-string v1, "LelinkEncrypt"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :pswitch_0
    aput-byte v8, v0, v6

    .line 349
    aput-byte v3, v0, v7

    .line 350
    aget-byte v2, v0, v6

    invoke-virtual {v1, v7, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 351
    aget-byte v0, v0, v7

    invoke-virtual {v1, v8, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 352
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 353
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/b/e;->getPublicClientValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aB:[B

    .line 354
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aB:[B

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 355
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    .line 356
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/b/e;->getClientEvidenceMessage()Ljava/math/BigInteger;

    move-result-object v2

    .line 355
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    goto :goto_1

    .line 359
    :pswitch_1
    aput-byte v7, v0, v6

    .line 360
    aput-byte v3, v0, v7

    .line 361
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 362
    new-array v3, v9, [B

    iput-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->al:[B

    .line 363
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->al:[B

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 364
    new-array v3, v9, [B

    iput-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    .line 365
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->al:[B

    invoke-static {v3, v4, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/b;->a([B[B[B)V

    .line 366
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    array-length v4, v4

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    array-length v4, v4

    invoke-static {v3, v6, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    aget-byte v3, v0, v6

    invoke-virtual {v1, v7, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 369
    aget-byte v0, v0, v7

    invoke-virtual {v1, v8, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 370
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    goto/16 :goto_1

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d([B)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v6, 0x20

    .line 552
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 554
    const-string v3, "603"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    const-string v1, "603"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    .line 618
    :goto_0
    return v0

    .line 559
    :cond_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getBody([B)[B

    move-result-object v2

    .line 560
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v3, :cond_2

    .line 561
    :cond_1
    const-string v1, "failed"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    goto :goto_0

    .line 564
    :cond_2
    array-length v3, v2

    const/4 v4, 0x4

    invoke-static {v2, v0, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a([BIII)Lcom/hpplay/sdk/source/protocol/encrypt/h;

    move-result-object v2

    .line 565
    if-nez v2, :cond_3

    .line 566
    const-string v1, "failed"

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    goto :goto_0

    .line 570
    :cond_3
    iget v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v0, v1

    .line 618
    goto :goto_0

    .line 573
    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput-byte v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->af:B

    .line 574
    invoke-virtual {v2, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput-byte v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ag:B

    .line 576
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v3

    .line 577
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v4

    .line 578
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    move-result-object v2

    .line 579
    invoke-direct {p0, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->b([B[B)Z

    move-result v3

    .line 580
    if-eqz v3, :cond_4

    .line 581
    iput-object v7, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 582
    iput-object v7, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 583
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aA:[B

    invoke-virtual {p0, v3, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->av:Lcom/hpplay/sdk/source/protocol/b/e;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/protocol/b/e;->getSessionKeyHash()[B

    move-result-object v3

    .line 586
    new-array v4, v6, [B

    .line 587
    array-length v5, v4

    invoke-static {v3, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    invoke-virtual {p0, v4, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 591
    invoke-virtual {p0, v4, v0, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 593
    const-string v2, "LELINK-AUTH_IDENTITY-KEY"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    .line 595
    const-string v2, "LELINK-AUTH_IDENTITY-NONCE"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    goto :goto_1

    .line 600
    :pswitch_1
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->af:B

    .line 601
    invoke-virtual {v2, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ag:B

    .line 602
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->i(I)[B

    .line 605
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ae:[B

    invoke-virtual {p0, v0, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 607
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    invoke-virtual {p0, v2, v0, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 609
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    invoke-virtual {p0, v2, v0, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 611
    const-string v2, "LELINK-IDENTITY-KEY"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    .line 613
    const-string v2, "LELINK-IDENTITY-NONCE"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    goto/16 :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()[B
    .locals 9

    .prologue
    const/4 v3, 0x5

    const/16 v5, 0x40

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 542
    :goto_0
    return-object v0

    .line 496
    :cond_0
    new-array v7, v2, [B

    .line 497
    new-instance v8, Lcom/hpplay/sdk/source/protocol/encrypt/h;

    invoke-direct {v8}, Lcom/hpplay/sdk/source/protocol/encrypt/h;-><init>()V

    .line 498
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aC:I

    packed-switch v0, :pswitch_data_0

    .line 537
    :goto_1
    invoke-virtual {v8}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a()[B

    move-result-object v0

    .line 539
    new-instance v1, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/d;->p()Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[B)[B

    move-result-object v0

    .line 541
    const-string v1, "LelinkEncrypt"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_0
    aput-byte v2, v7, v4

    .line 502
    aput-byte v3, v7, v1

    .line 503
    aget-byte v0, v7, v4

    invoke-virtual {v8, v1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 504
    aget-byte v0, v7, v1

    invoke-virtual {v8, v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 505
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ay:[B

    invoke-virtual {v8, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 506
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->az:[B

    invoke-virtual {v8, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    .line 507
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aA:[B

    .line 508
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aA:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 509
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aA:[B

    invoke-virtual {v8, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V

    goto :goto_1

    .line 512
    :pswitch_1
    aput-byte v1, v7, v4

    .line 513
    aput-byte v3, v7, v1

    .line 515
    new-array v0, v5, [B

    .line 516
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    new-array v1, v5, [B

    .line 521
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c:[B

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->sign([B[B[B[B)Z

    .line 522
    const-string v0, "LELINK-VERIFY_IDENTITY-KEY"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v0

    .line 523
    const-string v2, "LEINK-VERIFY-IDENTITY-NONCE"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([B[BI)[B

    move-result-object v2

    .line 525
    const/16 v3, 0x40

    :try_start_0
    new-array v4, v3, [B

    .line 526
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v2, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aeInit([B[BZ)Z

    .line 527
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aE:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aecrypt([BII[BIZ)Z

    .line 529
    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v1, v7, v1

    invoke-virtual {v8, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 530
    const/4 v0, 0x2

    const/4 v1, 0x1

    aget-byte v1, v7, v1

    invoke-virtual {v8, v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(IB)V

    .line 531
    const/4 v0, 0x5

    invoke-virtual {v8, v0, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/h;->a(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string v1, "LelinkEncrypt"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/hpplay/sdk/source/protocol/encrypt/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 749
    .line 752
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v0, :cond_0

    .line 768
    :goto_0
    return-object v1

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 757
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 758
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/a;

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/a;-><init>([B[BI)V

    :goto_1
    move-object v1, v0

    .line 768
    goto :goto_0

    .line 762
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/a;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/a;-><init>([B[BI)V
    :try_end_0
    .catch Lcom/hpplay/sdk/source/protocol/encrypt/a$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/hpplay/sdk/source/protocol/encrypt/a$b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 764
    :catch_0
    move-exception v0

    .line 766
    :goto_2
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 764
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public e([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 717
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    if-eqz v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-object v0

    .line 721
    :cond_1
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v1

    .line 726
    const/16 v1, 0x1400

    if-gt v2, v1, :cond_0

    .line 730
    :try_start_0
    new-array v1, v2, [B

    .line 731
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 732
    const/4 v4, 0x4

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {p1, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    invoke-direct {p0, v1, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->b([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 741
    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    .line 743
    const-string v2, "LelinkEncrypt"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aD:Ljava/lang/String;

    return-object v0
.end method

.method f([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ac:Z

    if-eqz v0, :cond_0

    .line 790
    invoke-static {p1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->au:Z

    .line 819
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ad:[B

    .line 820
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ae:[B

    .line 821
    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->af:B

    .line 822
    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ag:B

    .line 823
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->c:[B

    .line 824
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->d:[B

    .line 825
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ah:[B

    .line 826
    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ai:B

    .line 827
    iput-byte v2, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aj:B

    .line 828
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ak:[B

    .line 829
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->al:[B

    .line 830
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->am:[B

    .line 831
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->an:[B

    .line 832
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ao:[B

    .line 833
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->at:Ljava/lang/String;

    .line 834
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ap:[B

    .line 835
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->aq:[B

    .line 836
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->ar:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 837
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/encrypt/d;->as:Lcom/hpplay/sdk/source/protocol/encrypt/a;

    .line 838
    return-void
.end method

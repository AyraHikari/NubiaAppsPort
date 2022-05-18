.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_SHA1:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_SHA224:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_SHA256:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_SHA384:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final HMAC_SHA512:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# instance fields
.field private alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private digest:Ljava/lang/String;

.field private digestBlockLength:I

.field private key:[B

.field private name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 300
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 301
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA1:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 302
    const-string v0, "hmac-sha224."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA224:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 303
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA256:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 304
    const-string v0, "hmac-sha384."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA384:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 305
    const-string v0, "hmac-sha512."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA512:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 306
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 57
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 58
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    .line 59
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->getDigest()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 78
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->getDigest()V

    .line 80
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->getDigest()V

    .line 103
    return-void

    .line 86
    :cond_0
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA1:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "hmac-sha224"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA224:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA256:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 92
    :cond_3
    const-string v0, "hmac-sha384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA384:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 95
    :cond_4
    const-string v0, "hmac-sha512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_5
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA512:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)[B
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 110
    const-string v0, "[:/]"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 111
    array-length v1, v0

    if-ge v1, v5, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

    .line 116
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "[:/]"

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_1
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v3, v0, v6

    aget-object v0, v0, v7

    invoke-direct {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getDigest()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x40

    .line 29
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_MD5:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "md5"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 31
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    .line 53
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA1:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "sha-1"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA224:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    const-string v0, "sha-224"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA256:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    const-string v0, "sha-256"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA512:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    const-string v0, "sha-512"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 43
    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->HMAC_SHA384:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_5
    const-string v0, "sha-384"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 197
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->generate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 199
    iput v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    .line 200
    return-void
.end method

.method public apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V

    .line 204
    return-void
.end method

.method public generate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;
    .locals 15

    .prologue
    .line 128
    const/16 v2, 0x12

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    .line 129
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 134
    :goto_0
    const/4 v2, 0x0

    .line 135
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 136
    :cond_0
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    invoke-direct {v2, v3, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 139
    :cond_1
    const-string v3, "tsigfudge"

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->intValue(Ljava/lang/String;)I

    move-result v10

    .line 140
    if-ltz v10, :cond_2

    const/16 v3, 0x7fff

    if-le v10, v3, :cond_3

    .line 141
    :cond_2
    const/16 v10, 0x12c

    .line 145
    :cond_3
    if-eqz p4, :cond_4

    .line 146
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 147
    invoke-virtual/range {p4 .. p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 148
    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 150
    invoke-virtual/range {p4 .. p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 154
    :cond_4
    if-eqz v2, :cond_5

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 158
    :cond_5
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 159
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v4, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 160
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 161
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 162
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v4, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 163
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 164
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 165
    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    .line 166
    invoke-virtual {v3, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 167
    invoke-virtual {v3, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 168
    invoke-virtual {v3, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 169
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 171
    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 176
    :cond_6
    if-eqz v2, :cond_9

    .line 177
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->sign()[B

    move-result-object v11

    .line 182
    :goto_1
    const/4 v14, 0x0

    .line 183
    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 184
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 185
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 186
    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    .line 187
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 188
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 189
    invoke-virtual {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 190
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v14

    .line 193
    :cond_7
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v12

    move/from16 v13, p3

    invoke-direct/range {v3 .. v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/util/Date;I[BII[B)V

    return-object v3

    .line 131
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v9

    goto/16 :goto_0

    .line 179
    :cond_9
    const/4 v2, 0x0

    new-array v11, v2, [B

    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)B
    .locals 8

    .prologue
    .line 207
    const/4 v0, 0x4

    iput v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    .line 208
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digestBlockLength:I

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->key:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 210
    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getAlgorithm()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 214
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 215
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getFudge()I

    move-result v6

    int-to-long v6, v6

    .line 216
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 217
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADTIME failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    :cond_1
    const/16 v0, 0x12

    goto :goto_0

    .line 223
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    .line 224
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 225
    invoke-virtual {p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 226
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 227
    invoke-virtual {p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->decCount(I)V

    .line 231
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toWire()[B

    move-result-object v2

    .line 232
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->incCount(I)V

    .line 233
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 234
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigstart:I

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 235
    array-length v2, v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([BII)V

    .line 236
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 237
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 238
    iget v3, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->dclass:I

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 239
    iget-wide v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->ttl:J

    invoke-virtual {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 240
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getAlgorithm()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 241
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 242
    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    .line 243
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 244
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 245
    invoke-virtual {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 246
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getFudge()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 247
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 248
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getOther()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 249
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getOther()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 250
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getOther()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 255
    :goto_1
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 256
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v2

    .line 257
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->digestLength()I

    move-result v3

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->digest:Ljava/lang/String;

    const-string v4, "md5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    .line 259
    :goto_2
    array-length v4, v2

    if-le v4, v3, :cond_7

    .line 260
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG: signature too long"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_4
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 252
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 258
    :cond_6
    div-int/lit8 v0, v3, 0x2

    goto :goto_2

    .line 265
    :cond_7
    array-length v3, v2

    if-ge v3, v0, :cond_9

    .line 266
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG: signature too short"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    :cond_8
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 271
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->verify([BZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 272
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 273
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG: signature verification"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_a
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 278
    :cond_b
    const/4 v0, 0x1

    iput v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    .line 279
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 283
    :cond_c
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    :cond_d
    const/16 v0, 0x11

    goto/16 :goto_0
.end method

.method public verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)I
    .locals 1

    .prologue
    .line 292
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)B

    move-result v0

    return v0
.end method

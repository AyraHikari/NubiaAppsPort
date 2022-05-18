.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;
    }
.end annotation


# static fields
.field private static final ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

.field private static final ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

.field private static final GOST:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v1, 0x20

    .line 32
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    const-string v4, "A6"

    const-string v5, "1"

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->GOST:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    .line 33
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    const-string v2, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    const-string v4, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    const-string v5, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    const-string v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    const-string v7, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    .line 34
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    const/16 v1, 0x30

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    const-string v4, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    const-string v5, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    const-string v6, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .locals 9

    .prologue
    const/16 v1, 0x15

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v2, 0x14

    .line 383
    array-length v0, p0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    .line 384
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0

    .line 386
    :cond_0
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 387
    new-instance v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 388
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    .line 389
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v5

    .line 391
    aget-byte v0, v5, v7

    if-gez v0, :cond_4

    move v0, v1

    .line 395
    :goto_0
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 397
    aget-byte v6, v3, v7

    if-gez v6, :cond_3

    .line 401
    :goto_1
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 402
    add-int v6, v0, v1

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 403
    invoke-virtual {v4, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 404
    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 405
    if-le v0, v2, :cond_1

    .line 406
    invoke-virtual {v4, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 409
    :cond_1
    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 410
    invoke-virtual {v4, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 411
    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 412
    if-le v1, v2, :cond_2

    .line 413
    invoke-virtual {v4, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 416
    :cond_2
    invoke-virtual {v4, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 417
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static DSASignaturetoDNS([BI)[B
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x2

    const/16 v4, 0x14

    .line 422
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 423
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 424
    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 425
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 426
    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 427
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 429
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    .line 430
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 431
    if-eq v2, v5, :cond_1

    .line 432
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 434
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 435
    if-ne v2, v6, :cond_2

    .line 436
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 439
    :cond_2
    if-eq v2, v4, :cond_3

    .line 440
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 443
    :cond_3
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 445
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 446
    if-eq v2, v5, :cond_4

    .line 447
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 449
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 450
    if-ne v2, v6, :cond_5

    .line 451
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    if-eqz v2, :cond_6

    .line 452
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 454
    :cond_5
    if-eq v2, v4, :cond_6

    .line 455
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 458
    :cond_6
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 459
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 460
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static ECDSASignaturefromDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 475
    array-length v0, p0

    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 476
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0

    .line 478
    :cond_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 479
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 480
    iget v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 481
    iget v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    .line 482
    aget-byte v4, v3, v6

    if-gez v4, :cond_1

    .line 483
    add-int/lit8 v0, v0, 0x1

    .line 486
    :cond_1
    iget v4, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 487
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    .line 488
    aget-byte v5, v4, v6

    if-gez v5, :cond_2

    .line 489
    add-int/lit8 v1, v1, 0x1

    .line 492
    :cond_2
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 493
    add-int v5, v0, v1

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 494
    invoke-virtual {v2, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 495
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 496
    iget v5, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    if-le v0, v5, :cond_3

    .line 497
    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 500
    :cond_3
    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 501
    invoke-virtual {v2, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 502
    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 503
    iget v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    if-le v1, v0, :cond_4

    .line 504
    invoke-virtual {v2, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 507
    :cond_4
    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 508
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static ECDSASignaturetoDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 513
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 514
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 515
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 516
    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 517
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 519
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    .line 520
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 521
    if-eq v2, v4, :cond_1

    .line 522
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 524
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 525
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    .line 526
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 529
    :cond_2
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    if-eq v2, v3, :cond_3

    .line 530
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 533
    :cond_3
    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 535
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 536
    if-eq v2, v4, :cond_4

    .line 537
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 539
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    .line 540
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_5

    .line 541
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v2

    if-eqz v2, :cond_6

    .line 542
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 544
    :cond_5
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    if-eq v2, v3, :cond_6

    .line 545
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 548
    :cond_6
    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 550
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static ECGOSTSignaturefromDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    .locals 2

    .prologue
    .line 467
    array-length v0, p0

    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 468
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0

    .line 470
    :cond_0
    return-object p0
.end method

.method public static algString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    packed-switch p0, :pswitch_data_0

    .line 362
    :pswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 356
    :pswitch_1
    const-string v0, "MD5withRSA"

    .line 378
    :goto_0
    return-object v0

    .line 365
    :pswitch_2
    const-string v0, "SHA1withDSA"

    goto :goto_0

    .line 368
    :pswitch_3
    const-string v0, "SHA1withRSA"

    goto :goto_0

    .line 370
    :pswitch_4
    const-string v0, "SHA256withRSA"

    goto :goto_0

    .line 372
    :pswitch_5
    const-string v0, "SHA512withRSA"

    goto :goto_0

    .line 374
    :pswitch_6
    const-string v0, "GOST3411withECGOST3410"

    goto :goto_0

    .line 376
    :pswitch_7
    const-string v0, "SHA256withECDSA"

    goto :goto_0

    .line 378
    :pswitch_8
    const-string v0, "SHA384withECDSA"

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 1

    .prologue
    .line 648
    packed-switch p1, :pswitch_data_0

    .line 663
    :pswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 654
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 666
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 673
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 678
    :cond_0
    return-void

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static digestMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGRecord;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[B)[B
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 96
    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->digestSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 101
    :cond_0
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 102
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static digestRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[B
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 51
    invoke-static {v4, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->digestSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;)V

    .line 52
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->size()I

    move-result v1

    .line 53
    new-array v5, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 54
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v6

    .line 55
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;->getLabels()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 58
    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v8

    if-le v8, v2, :cond_3

    .line 59
    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wild(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    .line 62
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    add-int/lit8 v2, v0, -0x1

    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    aput-object v0, v5, v2

    move v0, v2

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 68
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 69
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 75
    :goto_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 76
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getDClass()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 77
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    move v0, v3

    .line 79
    :goto_2
    array-length v1, v5

    if-ge v0, v1, :cond_2

    .line 80
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 81
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    .line 82
    invoke-virtual {v4, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 83
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToWireCanonical()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 84
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v6

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    .line 85
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->save()V

    .line 86
    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->jump(I)V

    .line 87
    invoke-virtual {v4, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 88
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->restore()V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v7, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3
    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_0
.end method

.method private static digestSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 39
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 40
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 41
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 42
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 43
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 44
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 45
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 46
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getSigner()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 47
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 6

    .prologue
    .line 275
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 276
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 277
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 278
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 279
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 280
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x40

    div-int/lit8 v5, v5, 0x8

    .line 281
    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 282
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writeBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;)V

    .line 283
    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writeBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;)V

    .line 284
    mul-int/lit8 v1, v5, 0x8

    add-int/lit8 v1, v1, 0x40

    invoke-static {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 285
    mul-int/lit8 v1, v5, 0x8

    add-int/lit8 v1, v1, 0x40

    invoke-static {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 286
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    .locals 4

    .prologue
    .line 299
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 300
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 301
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 302
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 303
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 304
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    .locals 4

    .prologue
    .line 290
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 291
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 292
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 293
    iget v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 294
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writePaddedBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V

    .line 295
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 1

    .prologue
    .line 308
    packed-switch p1, :pswitch_data_0

    .line 324
    :pswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 314
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 318
    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 327
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 331
    :cond_1
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 337
    :cond_2
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->GOST:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_4
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_3

    .line 340
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 343
    :cond_3
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_5
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_4

    .line 346
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 348
    :cond_4
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5

    .prologue
    .line 258
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 259
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 260
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 261
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 262
    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 263
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 269
    :goto_0
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writeBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;)V

    .line 270
    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->writeBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;)V

    .line 271
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 266
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method

.method private static matches(Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Z
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->getSigner()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 116
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 111
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->reverseByteArray([B)V

    .line 142
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static reverseByteArray([B)V
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 131
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 132
    aget-byte v2, p0, v0

    .line 133
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 134
    aput-byte v2, p0, v1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public static sign(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;
    .locals 17

    .prologue
    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->getAlgorithm()I

    move-result v9

    .line 682
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 683
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getDClass()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->getFootprint()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v15

    const/16 v16, 0x0

    check-cast v16, [B

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    invoke-direct/range {v3 .. v16}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->digestRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[B

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v2, v9, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;->setSignature([B)V

    .line 685
    return-object v3
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 2

    .prologue
    .line 603
    if-eqz p4, :cond_1

    .line 604
    :try_start_0
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 609
    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 610
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 611
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 616
    instance-of v1, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_2

    .line 618
    :try_start_1
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .line 619
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 620
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    div-int/lit8 v1, v1, 0x8

    .line 621
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->DSASignaturetoDNS([BI)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 644
    :cond_0
    :goto_1
    :pswitch_0
    return-object v0

    .line 606
    :cond_1
    :try_start_2
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :catch_1
    move-exception v0

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 625
    :cond_2
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_0

    .line 627
    packed-switch p2, :pswitch_data_0

    .line 637
    :try_start_3
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 639
    :catch_2
    move-exception v0

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 631
    :pswitch_1
    :try_start_4
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSASignaturetoDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_1

    .line 634
    :pswitch_2
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSASignaturetoDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static toDSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;
    .locals 6

    .prologue
    .line 193
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 194
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v1

    .line 195
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 196
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)V

    throw v0

    .line 198
    :cond_0
    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 199
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x40

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 200
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x40

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 201
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x40

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 202
    const-string v1, "DSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 203
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v5, v0, v3, v2, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static toECDSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 218
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 219
    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 220
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 221
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    iget-object v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static toECGOSTPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 209
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 210
    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 211
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 212
    const-string v0, "ECGOST3410"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    iget-object v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method static toPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getAlgorithm()I

    move-result v0

    .line 229
    packed-switch v0, :pswitch_data_0

    .line 241
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)V

    throw v0

    .line 235
    :pswitch_1
    :try_start_1
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toRSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 244
    :pswitch_2
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toDSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_3
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->GOST:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toECGOSTPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_4
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toECDSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_5
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toECDSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;
    .locals 4

    .prologue
    .line 180
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getKey()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    .line 181
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    .line 186
    :cond_0
    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 187
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->readBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Ljava/math/BigInteger;

    move-result-object v1

    .line 188
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static trimByteArray([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    aget-byte v0, p0, v3

    if-nez v0, :cond_0

    .line 121
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 122
    const/4 v1, 0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 125
    :cond_0
    return-object p0
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .locals 2

    .prologue
    .line 557
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_0

    .line 559
    :try_start_0
    invoke-static {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->DSASignaturefromDNS([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 584
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 585
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 586
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 587
    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :catch_1
    move-exception v0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 563
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 565
    packed-switch p1, :pswitch_data_0

    .line 576
    :try_start_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 578
    :catch_2
    move-exception v0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 567
    :pswitch_0
    :try_start_3
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->GOST:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECGOSTSignaturefromDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_0

    .line 570
    :pswitch_1
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P256:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSASignaturefromDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B

    move-result-object v0

    goto :goto_0

    .line 573
    :pswitch_2
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSA_P384:Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;

    invoke-static {p3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->ECDSASignaturefromDNS([BLcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static writeBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 148
    return-void
.end method

.method private static writePaddedBigInteger(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 152
    array-length v1, v0

    if-le v1, p2, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_0
    array-length v1, v0

    if-ge v1, p2, :cond_1

    .line 156
    array-length v1, v0

    sub-int v1, p2, v1

    new-array v1, v1, [B

    .line 157
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 160
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 162
    return-void
.end method

.method private static writePaddedBigIntegerLittleEndian(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->trimByteArray([B)[B

    move-result-object v0

    .line 166
    array-length v1, v0

    if-le v1, p2, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->reverseByteArray([B)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 171
    array-length v1, v0

    if-ge v1, p2, :cond_1

    .line 172
    array-length v0, v0

    sub-int v0, p2, v0

    new-array v0, v0, [B

    .line 173
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 177
    :cond_1
    return-void
.end method

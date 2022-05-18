.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

.field private lastTSIG:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V
    .locals 4

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    .line 317
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->access$000(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)I

    move-result v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    .line 319
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastTSIG:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    .line 320
    return-void
.end method


# virtual methods
.method public verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[B)I
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 323
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v3

    .line 324
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    .line 326
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    if-ne v0, v2, :cond_1

    .line 327
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastTSIG:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    invoke-virtual {v0, p1, p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)I

    move-result v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v1

    .line 330
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 331
    array-length v4, v1

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 332
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 333
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 336
    :cond_0
    iput-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastTSIG:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    .line 400
    :goto_0
    return v0

    .line 339
    :cond_1
    if-eqz v3, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->decCount(I)V

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toWire()[B

    move-result-object v4

    .line 344
    if-eqz v3, :cond_3

    .line 345
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->incCount(I)V

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 350
    if-nez v3, :cond_5

    .line 351
    array-length v0, p2

    array-length v5, v4

    sub-int/2addr v0, v5

    .line 356
    :goto_1
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    array-length v4, v4

    invoke-virtual {v5, p2, v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([BII)V

    .line 357
    if-eqz v3, :cond_9

    .line 358
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastsigned:I

    .line 359
    iput-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastTSIG:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    .line 360
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->access$300(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getAlgorithm()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->key:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-static {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->access$400(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 361
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 362
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 363
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 364
    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    .line 365
    invoke-virtual {v0, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 366
    invoke-virtual {v0, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 367
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getFudge()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 368
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 369
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->verify([B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 370
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADSIG failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_4
    iput v10, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    .line 375
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 353
    :cond_5
    iget v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigstart:I

    array-length v5, v4

    sub-int/2addr v0, v5

    goto/16 :goto_1

    .line 377
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->clear()V

    .line 378
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 379
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 380
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 381
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->verifier:Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/HMAC;->update([B)V

    .line 382
    iput v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    move v0, v1

    .line 383
    goto/16 :goto_0

    .line 386
    :cond_7
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 387
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_8
    iput v10, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    .line 391
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 394
    :cond_9
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->nresponses:I

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v0, v3

    const/16 v3, 0x64

    if-lt v0, v3, :cond_a

    move v0, v2

    .line 395
    :goto_2
    if-eqz v0, :cond_b

    .line 396
    iput v10, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    move v0, v2

    .line 397
    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 394
    goto :goto_2

    .line 399
    :cond_b
    const/4 v0, 0x2

    iput v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    move v0, v1

    .line 400
    goto/16 :goto_0
.end method

.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

.field private static emptyRecordArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;


# instance fields
.field private header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

.field private querytsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

.field private sections:[Ljava/util/List;

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    new-array v0, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->emptyRecordArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 425
    new-array v0, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->emptyRRsetArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>()V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v5

    move v4, v2

    .line 54
    :goto_1
    const/4 v0, 0x4

    if-ge v4, v0, :cond_6

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v6

    .line 56
    if-lez v6, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v0, v4

    :cond_0
    move v3, v2

    .line 58
    :goto_2
    if-ge v3, v6, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->current()I

    move-result v7

    .line 60
    invoke-static {p1, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;IZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 61
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v4

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v8, 0x3

    if-eq v4, v8, :cond_3

    .line 58
    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v1, v2

    .line 51
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v8

    const/16 v9, 0xfa

    if-ne v8, v9, :cond_4

    .line 65
    iput v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigstart:I

    .line 66
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_1

    .line 68
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGRecord;

    .line 69
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGRecord;->getTypeCovered()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iput v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sig0start:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 75
    :catch_0
    move-exception v0

    .line 76
    if-nez v5, :cond_6

    .line 77
    throw v0

    .line 54
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 79
    :cond_6
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->current()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    .line 80
    return-void
.end method

.method private constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 85
    return-void
.end method

.method public static newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 38
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 39
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 40
    invoke-virtual {v0, p0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 41
    return-object v0
.end method

.method public static newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    return-object v0
.end method

.method private static sameSet(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

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

.method private sectionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;I)I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 252
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v4

    .line 255
    const/4 v1, 0x0

    move v2, v5

    move v3, v5

    .line 256
    :goto_0
    if-ge v5, v6, :cond_1

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 258
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    instance-of v7, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    if-eqz v7, :cond_0

    .line 259
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    move v3, v4

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 256
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 262
    :cond_0
    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sameSet(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v4

    move v1, v5

    move v3, v4

    .line 267
    :goto_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 268
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v4

    if-le v4, p4, :cond_3

    .line 269
    invoke-virtual {p1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->jump(I)V

    .line 270
    sub-int v0, v6, v1

    add-int/2addr v2, v0

    .line 274
    :cond_1
    return v2

    :cond_2
    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method private toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;I)Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x3

    .line 278
    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    move v0, v2

    .line 324
    :goto_0
    return v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->recordLength()I

    move-result v0

    sub-int/2addr p2, v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v1

    .line 285
    const/4 v0, 0x0

    .line 286
    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {v1, v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->toWire(I)[B

    move-result-object v0

    .line 288
    array-length v1, v0

    sub-int/2addr p2, v1

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v6

    .line 291
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 292
    new-instance v7, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    invoke-direct {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlagsByte()I

    move-result v4

    move v5, v2

    move v1, v2

    .line 295
    :goto_1
    const/4 v8, 0x4

    if-ge v5, v8, :cond_b

    .line 296
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v5

    if-nez v8, :cond_4

    .line 295
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 298
    :cond_4
    invoke-direct {p0, p1, v5, v7, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sectionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;I)I

    move-result v8

    .line 299
    if-eqz v8, :cond_a

    if-eq v5, v11, :cond_a

    .line 300
    const/4 v9, 0x6

    invoke-static {v4, v9, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(IIZ)I

    move-result v4

    .line 301
    iget-object v9, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v9, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v9

    sub-int v8, v9, v8

    add-int/lit8 v9, v6, 0x4

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {p1, v8, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 302
    add-int/lit8 v5, v5, 0x1

    :goto_3
    if-ge v5, v11, :cond_5

    .line 303
    add-int/lit8 v8, v6, 0x4

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p1, v2, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v2, v4

    .line 311
    :goto_4
    if-eqz v0, :cond_6

    .line 312
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlagsByte()I

    move-result v0

    if-eq v2, v0, :cond_7

    .line 316
    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 318
    add-int/lit8 v0, v6, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 319
    :cond_8
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    if-eqz v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v2

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigerror:I

    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->querytsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    invoke-virtual {v0, p0, v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->generate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1, v11, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 322
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v6, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    :cond_9
    move v0, v3

    .line 324
    goto/16 :goto_0

    .line 307
    :cond_a
    if-ne v5, v11, :cond_3

    .line 308
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v1, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v1

    sub-int/2addr v1, v8

    goto :goto_2

    :cond_b
    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->incCount(I)V

    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 399
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 400
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    iput-object v0, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    .line 405
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    iput v0, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    .line 406
    return-object v1
.end method

.method public findRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 133
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 121
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_1
    return v0

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    return-object v0
.end method

.method public getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    .line 174
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 175
    aget-object v2, v1, v0

    instance-of v2, v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    if-eqz v2, :cond_0

    .line 176
    aget-object v0, v1, v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    .line 178
    :goto_1
    return-object v0

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    .line 146
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_0
.end method

.method public getRcode()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v0

    .line 183
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getExtendedRcode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 186
    :cond_0
    return v0
.end method

.method public getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->emptyRecordArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 194
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_0
.end method

.method public getSectionRRsets(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->emptyRRsetArray:[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    .line 232
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 206
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v6

    .line 207
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 208
    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_4

    .line 209
    aget-object v0, v6, v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    .line 210
    const/4 v3, 0x1

    .line 211
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    .line 214
    :goto_2
    if-gez v4, :cond_2

    move v0, v3

    .line 225
    :goto_3
    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    aget-object v3, v6, v1

    invoke-direct {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 227
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 216
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    .line 217
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v9

    aget-object v10, v6, v1

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v10

    if-ne v9, v10, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getDClass()I

    move-result v9

    aget-object v10, v6, v1

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v10

    if-ne v9, v10, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 218
    aget-object v3, v6, v1

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->addRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    move v0, v2

    .line 220
    goto :goto_3

    .line 222
    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 223
    goto :goto_2

    .line 232
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method public getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v0

    .line 154
    if-nez v0, :cond_0

    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v3

    .line 157
    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 158
    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    const/16 v3, 0xfa

    if-eq v2, v3, :cond_1

    move-object v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_1
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    goto :goto_0
.end method

.method public isSigned()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 165
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numBytes()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setCount(II)V

    .line 114
    return-void
.end method

.method public removeRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->decCount(I)V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    .line 354
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 356
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 357
    aget-object v3, v2, v0

    .line 358
    if-nez p1, :cond_1

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->type:I

    invoke-static {v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :goto_2
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 368
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setHeader(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    .line 89
    return-void
.end method

.method public setTSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;ILcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigkey:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    .line 343
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->tsigerror:I

    .line 344
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->querytsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, ";; TSIG "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    :goto_1
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    :cond_0
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 383
    :cond_2
    const-string v0, "invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 390
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 394
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";; Message size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->numBytes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->header:Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 237
    new-instance v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;-><init>()V

    move v3, v2

    .line 238
    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 238
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 243
    invoke-virtual {v0, p1, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;ILcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 248
    :cond_2
    return-void
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 329
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 330
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    .line 331
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWire(I)[B
    .locals 2

    .prologue
    .line 335
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 336
    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;I)Z

    .line 337
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->size:I

    .line 338
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.class public Lcom/hpplay/sdk/source/mdns/ServiceInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ed90fb74eL


# instance fields
.field private addresses:Ljava/util/List;

.field private host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private final name:Lcom/hpplay/sdk/source/mdns/ServiceName;

.field private niceText:Ljava/lang/String;

.field private final pointers:Ljava/util/List;

.field private port:I

.field private priority:I

.field private text:[Ljava/lang/String;

.field private final textAttributes:Ljava/util/Map;

.field private weight:I


# direct methods
.method public varargs constructor <init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Collection;)V
    .locals 8

    .prologue
    .line 47
    invoke-static {p7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->name:Lcom/hpplay/sdk/source/mdns/ServiceName;

    .line 53
    iput-object p5, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 54
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->priority:I

    .line 55
    iput p3, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->weight:I

    .line 56
    iput p4, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->port:I

    .line 58
    if-eqz p6, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    .line 62
    :cond_0
    if-eqz p7, :cond_1

    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->text:[Ljava/lang/String;

    .line 66
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    .line 67
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->text:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;[Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V
    .locals 8

    .prologue
    .line 78
    invoke-static {p7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 74
    invoke-static {p7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v1, Lcom/hpplay/sdk/source/mdns/ServiceName;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceName;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getWeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getPort()I

    move-result v4

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/ServiceName;IIILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[Ljava/net/InetAddress;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method protected static parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 p0, 0x0

    .line 317
    :goto_0
    return-object p0

    .line 274
    :cond_0
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 275
    check-cast p0, Ljava/util/Map;

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 278
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 280
    if-eqz p0, :cond_b

    array-length v2, p0

    if-lez v2, :cond_b

    .line 281
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 282
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 283
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 285
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_2
    move-object p0, v0

    .line 289
    goto :goto_0

    .line 290
    :cond_4
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    .line 291
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 292
    :cond_5
    instance-of v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    if-eqz v1, :cond_6

    .line 293
    check-cast p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;->getStrings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 295
    :cond_6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 297
    array-length v7, v6

    move v5, v0

    :goto_3
    if-ge v5, v7, :cond_a

    aget-object v3, v6, v5

    .line 298
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 299
    const-string v1, ""

    .line 300
    const-string v1, ""

    .line 302
    const/16 v2, 0x3d

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 303
    if-ltz v8, :cond_9

    .line 304
    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 305
    add-int/lit8 v8, v8, 0x1

    .line 306
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_7

    .line 307
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_7
    :goto_4
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_9
    move-object v2, v3

    .line 310
    goto :goto_4

    :cond_a
    move-object p0, v4

    .line 317
    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_2
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move v0, v1

    move v2, v1

    move v3, v1

    .line 329
    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_4

    .line 330
    aget-char v8, v7, v0

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 331
    aget-char v8, v7, v0

    sparse-switch v8, :sswitch_data_0

    .line 344
    aget-char v8, v7, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    if-eqz v2, :cond_0

    move v2, v1

    .line 329
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    move v2, v4

    .line 334
    goto :goto_1

    .line 336
    :sswitch_1
    if-nez v2, :cond_2

    .line 337
    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_1

    .line 340
    :cond_2
    aget-char v8, v7, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 356
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public addPointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public addText(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    :cond_0
    return-void
.end method

.method public varargs addTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    :cond_0
    return-void
.end method

.method public getAddresses()[Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    check-cast v0, [Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getName()Lcom/hpplay/sdk/source/mdns/ServiceName;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->name:Lcom/hpplay/sdk/source/mdns/ServiceName;

    return-object v0
.end method

.method public getNiceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->niceText:Ljava/lang/String;

    return-object v0
.end method

.method public getPointers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->priority:I

    return v0
.end method

.method public getText()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->text:[Ljava/lang/String;

    return-object v0
.end method

.method public getTextAttributes()Ljava/util/Map;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->weight:I

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public removePointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public varargs removeTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V
    .locals 3

    .prologue
    .line 172
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->parseTextRecords(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public setHost(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 189
    return-void
.end method

.method public setNiceText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->niceText:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setPointers(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->pointers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->port:I

    .line 204
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->priority:I

    .line 208
    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->weight:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v0, "Service (\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->name:Lcom/hpplay/sdk/source/mdns/ServiceName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v0, :cond_0

    .line 220
    const-string v0, " can be reached at \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->port:I

    if-lez v0, :cond_1

    .line 224
    const-string v0, " on port "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->textAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 232
    const-string v4, "\n\tTXT: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v4, 0x64

    if-le v0, v4, :cond_2

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 256
    :cond_6
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

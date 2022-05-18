.class abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3bf1fbebabfbc28bL


# instance fields
.field protected strings:Ljava/util/List;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/lang/String;)V
    .locals 8

    .prologue
    .line 43
    invoke-static {p6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/util/List;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/util/List;)V
    .locals 4

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 28
    if-nez p6, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    .line 31
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 33
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public getStrings()Ljava/util/List;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    return-object v3
.end method

.method public getStringsAsByteArrays()Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->unget()V

    .line 68
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readCountedString()[B

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    check-cast v0, [B

    .line 80
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    check-cast v0, [B

    .line 101
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeCountedString([B)V

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

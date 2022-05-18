.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
.source "SourceFile"


# instance fields
.field private dclass:I

.field private origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 17
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 18
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 20
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 21
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->dclass:I

    goto :goto_0
.end method

.method private newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;)V
    .locals 9

    .prologue
    .line 41
    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->dclass:I

    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 42
    return-void
.end method

.method public add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 36
    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->dclass:I

    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 37
    return-void
.end method

.method public add(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 46
    return-void
.end method

.method public add([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 50
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public delete(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 4

    .prologue
    .line 59
    const/16 v0, 0xff

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->newUpdate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 60
    return-void
.end method

.method public replace(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->delete(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Update;->add(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 65
    return-void
.end method

.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d62426723a14d0fL


# instance fields
.field private nsigs:S

.field private position:S

.field private rrs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    .line 19
    iput-short v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    .line 20
    iput-short v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    .line 31
    iget-short v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    .line 32
    iget-short v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    .line 33
    monitor-exit p1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->safeAddRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 26
    return-void
.end method

.method private declared-synchronized iterator(ZZ)Ljava/util/Iterator;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-short v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    sub-int v1, v2, v1

    .line 91
    :goto_0
    if-nez v1, :cond_1

    .line 92
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    :goto_1
    monitor-exit p0

    return-object v0

    .line 90
    :cond_0
    :try_start_1
    iget-short v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    goto :goto_0

    .line 94
    :cond_1
    if-eqz p1, :cond_5

    .line 95
    if-nez p2, :cond_3

    .line 105
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    if-eqz p1, :cond_6

    .line 107
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    if-eqz v0, :cond_2

    .line 109
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_3
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    if-lt v0, v1, :cond_4

    .line 99
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    .line 100
    :cond_4
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_5
    :try_start_2
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    sub-int v0, v2, v0

    goto :goto_2

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 161
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->rdataToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private safeAddRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 3

    .prologue
    .line 37
    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;

    if-nez v0, :cond_1

    .line 38
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-short v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 6

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->safeAddRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->sameRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "record does not match rrset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 58
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->cloneRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object p1

    .line 59
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->setTTL(J)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->safeAddRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    goto :goto_0

    .line 61
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 63
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->cloneRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->setTTL(J)V

    .line 65
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->position:S

    .line 81
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRSIGRecord;

    if-eqz v0, :cond_0

    .line 75
    iget-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v0

    return v0
.end method

.method public getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTTL()J
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized rrs()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rrs(Z)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sigs()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-short v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "{empty}"

    .line 185
    :goto_0
    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-short v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->nsigs:S

    if-lez v1, :cond_1

    .line 181
    const-string v1, " sigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-direct {p0, v4, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

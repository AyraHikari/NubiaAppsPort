.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$NegativeElement;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>(I)V

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxncache:I

    .line 136
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxcache:I

    .line 137
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->dclass:I

    .line 138
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxncache:I

    .line 148
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxcache:I

    .line 149
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    .line 150
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/lang/String;)V

    .line 152
    :goto_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic access$000(JJ)I
    .locals 2

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;)V
    .locals 4

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v3

    .line 226
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 227
    check-cast v0, Ljava/util/List;

    .line 228
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 230
    invoke-interface {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 231
    invoke-interface {v0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 236
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_3
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 239
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 243
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Ljava/util/List;

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized exactName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private declared-synchronized findElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->exactName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getCred(IZ)I
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x3

    .line 411
    if-ne p1, v2, :cond_2

    .line 412
    if-nez p2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 412
    goto :goto_0

    .line 413
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 414
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 415
    :cond_3
    if-ne p1, v0, :cond_4

    move v0, v2

    .line 416
    goto :goto_0

    .line 418
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 125
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    move-wide p0, p2

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, p0

    .line 128
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 129
    :cond_1
    const v0, 0x7fffffff

    .line 131
    :goto_0
    return v0

    :cond_2
    long-to-int v0, v0

    goto :goto_0
.end method

.method private static markAdditional(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;Ljava/util/Set;)V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getAdditionalName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 430
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getAdditionalName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_2

    .line 432
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 178
    monitor-enter p0

    .line 179
    const/16 v0, 0xff

    if-ne p3, v0, :cond_0

    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "oneElement(ANY)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 182
    check-cast p2, Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    move v2, v0

    .line 185
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt v2, v0, :cond_3

    move-object v0, v1

    .line 199
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 208
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v1

    .line 187
    :cond_3
    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 188
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v3

    if-eq v3, p3, :cond_1

    .line 192
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    check-cast p2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 196
    invoke-interface {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p3, :cond_7

    move-object v0, p2

    .line 197
    goto :goto_1

    .line 201
    :cond_5
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->expired()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    invoke-direct {p0, p1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->removeElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    goto :goto_2

    .line 205
    :cond_6
    invoke-interface {v0, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-ltz v2, :cond_2

    move-object v1, v0

    .line 208
    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized removeElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 255
    check-cast v0, Ljava/util/List;

    .line 256
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 258
    invoke-interface {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 267
    :cond_3
    :try_start_2
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    .line 268
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
    .locals 18

    .prologue
    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v8

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v9

    .line 440
    const/4 v4, 0x0

    .line 441
    const/4 v2, 0x0

    .line 442
    const-string v3, "verbosecache"

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v10

    .line 443
    if-eqz v9, :cond_0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_1

    :cond_0
    if-nez v1, :cond_3

    .line 444
    :cond_1
    const/4 v2, 0x0

    .line 544
    :cond_2
    :goto_0
    return-object v2

    .line 445
    :cond_3
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v6

    .line 446
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v7

    .line 447
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v11

    .line 449
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 450
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionRRsets(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v13

    .line 451
    const/4 v1, 0x0

    move v5, v1

    move-object v3, v6

    move-object v1, v2

    :goto_1
    array-length v2, v13

    if-ge v5, v2, :cond_1b

    .line 452
    aget-object v2, v13, v5

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getDClass()I

    move-result v2

    if-eq v2, v11, :cond_4

    move-object v2, v1

    move-object v1, v3

    move v3, v4

    .line 451
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    .line 454
    :cond_4
    aget-object v2, v13, v5

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v2

    .line 455
    aget-object v14, v13, v5

    invoke-virtual {v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v14

    .line 456
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getCred(IZ)I

    move-result v15

    .line 457
    if-eq v2, v7, :cond_5

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    :cond_5
    invoke-virtual {v14, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 458
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 459
    const/4 v2, 0x1

    .line 460
    if-ne v3, v6, :cond_7

    .line 461
    if-nez v1, :cond_6

    .line 462
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v4, 0x6

    invoke-direct {v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    .line 463
    :cond_6
    aget-object v4, v13, v5

    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    .line 465
    :cond_7
    aget-object v4, v13, v5

    invoke-static {v4, v12}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->markAdditional(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;Ljava/util/Set;)V

    move-object/from16 v17, v3

    move v3, v2

    move-object v2, v1

    move-object/from16 v1, v17

    .line 466
    goto :goto_2

    .line 468
    :cond_8
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    invoke-virtual {v14, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 469
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 470
    if-ne v3, v6, :cond_1a

    .line 471
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x4

    aget-object v3, v13, v5

    invoke-direct {v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v2, v1

    .line 472
    :goto_3
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;

    .line 473
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    move v3, v4

    .line 474
    goto :goto_2

    .line 476
    :cond_9
    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v2, v0, :cond_19

    invoke-virtual {v3, v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v1

    move-object v1, v3

    move v3, v4

    .line 477
    goto/16 :goto_2

    .line 478
    :cond_a
    aget-object v2, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 479
    if-ne v3, v6, :cond_18

    .line 480
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x5

    aget-object v14, v13, v5

    invoke-direct {v1, v2, v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v2, v1

    .line 481
    :goto_4
    aget-object v1, v13, v5

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;

    .line 483
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromDNAME(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move v3, v4

    .line 484
    goto/16 :goto_2

    .line 485
    :catch_0
    move-exception v1

    .line 490
    :goto_5
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionRRsets(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v11

    .line 491
    const/4 v6, 0x0

    .line 492
    const/4 v5, 0x0

    .line 493
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v5

    move-object v5, v6

    move/from16 v6, v17

    :goto_6
    array-length v13, v11

    if-ge v6, v13, :cond_d

    .line 494
    aget-object v13, v11, v6

    invoke-virtual {v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_c

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 495
    aget-object v5, v11, v6

    .line 493
    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 498
    :cond_c
    aget-object v13, v11, v6

    invoke-virtual {v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    aget-object v13, v11, v6

    invoke-virtual {v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 499
    aget-object v1, v11, v6

    goto :goto_7

    .line 502
    :cond_d
    if-nez v4, :cond_15

    .line 503
    const/4 v4, 0x3

    if-eq v9, v4, :cond_12

    move v4, v7

    .line 504
    :goto_8
    const/4 v6, 0x3

    if-eq v9, v6, :cond_e

    if-nez v5, :cond_e

    if-nez v1, :cond_14

    .line 505
    :cond_e
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getCred(IZ)I

    move-result v6

    .line 506
    const/4 v1, 0x0

    .line 507
    if-eqz v5, :cond_f

    .line 508
    invoke-virtual {v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;

    .line 509
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v1, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addNegative(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;ILcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;I)V

    .line 510
    if-nez v2, :cond_10

    .line 512
    const/4 v1, 0x3

    if-ne v9, v1, :cond_13

    .line 513
    const/4 v1, 0x1

    .line 516
    :goto_9
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->ofType(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v2

    .line 530
    :cond_10
    :goto_a
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionRRsets(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v3

    .line 531
    const/4 v1, 0x0

    :goto_b
    array-length v4, v3

    if-ge v1, v4, :cond_17

    .line 532
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v4

    .line 533
    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_16

    const/16 v5, 0x26

    if-eq v4, v5, :cond_16

    .line 531
    :cond_11
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 503
    :cond_12
    const/4 v4, 0x0

    goto :goto_8

    .line 515
    :cond_13
    const/4 v1, 0x2

    goto :goto_9

    .line 519
    :cond_14
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getCred(IZ)I

    move-result v3

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 521
    invoke-static {v1, v12}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->markAdditional(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;Ljava/util/Set;)V

    .line 522
    if-nez v2, :cond_10

    .line 523
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    goto :goto_a

    .line 525
    :cond_15
    if-nez v9, :cond_10

    if-eqz v1, :cond_10

    .line 526
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getCred(IZ)I

    move-result v3

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 528
    invoke-static {v1, v12}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->markAdditional(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;Ljava/util/Set;)V

    goto :goto_a

    .line 535
    :cond_16
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    .line 536
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 537
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->getCred(IZ)I

    move-result v4

    .line 538
    aget-object v5, v3, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    goto :goto_c

    .line 542
    :cond_17
    if-eqz v10, :cond_2

    .line 543
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move-object v2, v1

    goto/16 :goto_4

    :cond_19
    move-object v2, v1

    move-object v1, v3

    move v3, v4

    goto/16 :goto_2

    :cond_1a
    move-object v2, v1

    goto/16 :goto_3

    :cond_1b
    move-object v2, v1

    goto/16 :goto_5
.end method

.method public declared-synchronized addNegative(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;ILcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;I)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 316
    monitor-enter p0

    .line 317
    if-eqz p3, :cond_3

    .line 318
    :try_start_0
    invoke-virtual {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->getTTL()J

    move-result-wide v0

    move-wide v2, v0

    .line 319
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->findElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 320
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 321
    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->removeElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 324
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 325
    const/4 v0, 0x0

    .line 326
    :cond_2
    if-nez v0, :cond_0

    .line 327
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$NegativeElement;

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxncache:I

    int-to-long v6, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$NegativeElement;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;ILcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;IJ)V

    invoke-direct {p0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method

.method public declared-synchronized addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V
    .locals 8

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v2

    .line 295
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    .line 296
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v4

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v1, v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->findElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 298
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 299
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 300
    invoke-direct {p0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->removeElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v2

    if-gtz v2, :cond_2

    .line 303
    const/4 v0, 0x0

    .line 304
    :cond_2
    if-nez v0, :cond_0

    .line 306
    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v0, :cond_3

    .line 307
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    .line 310
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_3
    :try_start_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxcache:I

    int-to-long v2, v2

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    goto :goto_1
.end method

.method public declared-synchronized addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getRRsetType()I

    move-result v1

    .line 281
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->isRR(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->findElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 284
    if-nez v0, :cond_2

    .line 285
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxcache:I

    int-to-long v2, v1

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;IJ)V

    .line 286
    invoke-virtual {p0, v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    .line 289
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;->addRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->maxcache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
    .locals 11

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v7

    move v6, v7

    .line 333
    :goto_0
    const/4 v0, 0x1

    if-lt v6, v0, :cond_e

    .line 334
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 335
    :goto_1
    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    move v5, v0

    .line 337
    :goto_2
    if-eqz v1, :cond_3

    .line 338
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-object v4, v0

    .line 343
    :goto_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 344
    if-nez v8, :cond_5

    .line 333
    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 335
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .line 339
    :cond_3
    if-eqz v5, :cond_4

    move-object v4, p1

    .line 340
    goto :goto_3

    .line 342
    :cond_4
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sub-int v1, v7, v6

    invoke-direct {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    move-object v4, v0

    goto :goto_3

    .line 347
    :cond_5
    if-eqz v5, :cond_8

    const/16 v0, 0xff

    if-ne p2, v0, :cond_8

    .line 348
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    .line 349
    invoke-direct {p0, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->allElements(Ljava/lang/Object;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v9

    .line 350
    const/4 v1, 0x0

    .line 351
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    array-length v0, v9

    if-ge v3, v0, :cond_7

    .line 352
    aget-object v0, v9, v3

    .line 353
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->expired()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 354
    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->getType()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->removeElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    move v0, v1

    .line 351
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    .line 357
    :cond_6
    instance-of v10, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v10, :cond_f

    invoke-interface {v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;->compareCredibility(I)I

    move-result v10

    if-ltz v10, :cond_f

    .line 358
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 363
    :cond_7
    if-lez v1, :cond_c

    move-object v0, v2

    .line 394
    :goto_6
    monitor-exit p0

    return-object v0

    .line 365
    :cond_8
    if-eqz v5, :cond_b

    .line 366
    :try_start_1
    invoke-direct {p0, v4, v8, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v1, :cond_9

    .line 368
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    .line 369
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v0, v1

    .line 370
    goto :goto_6

    .line 372
    :cond_9
    if-eqz v0, :cond_a

    .line 373
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 376
    :cond_a
    const/4 v0, 0x5

    :try_start_2
    invoke-direct {p0, v4, v8, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v1, :cond_c

    .line 378
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x4

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 380
    :cond_b
    const/16 v0, 0x27

    invoke-direct {p0, v4, v8, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v1, :cond_c

    .line 382
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x5

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 384
    :cond_c
    const/4 v0, 0x2

    invoke-direct {p0, v4, v8, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    if-eqz v1, :cond_d

    .line 386
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v2, 0x3

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheRRset;

    invoke-direct {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V

    move-object v0, v1

    goto :goto_6

    .line 387
    :cond_d
    if-eqz v5, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v4, v8, v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->oneElement(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/Object;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->ofType(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    goto :goto_6

    .line 394
    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->ofType(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_6

    :cond_f
    move v0, v1

    goto/16 :goto_5
.end method

.method public lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->lookup(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 561
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    monitor-enter p0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->data:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->allElements(Ljava/lang/Object;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache$Element;

    move-result-object v3

    .line 565
    const/4 v0, 0x0

    .line 566
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 567
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 568
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

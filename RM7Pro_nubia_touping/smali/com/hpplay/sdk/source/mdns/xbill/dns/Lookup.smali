.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultNdots:I

.field private static defaultResolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

.field private static defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private static final noAliases:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

.field private result:I

.field private searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->noAliases:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 443
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->refreshDefault()V

    .line 444
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, p1, v0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 106
    invoke-static {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 107
    invoke-static {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 110
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    .line 111
    iput p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->dclass:I

    .line 112
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->getDefaultResolver()Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 114
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->getDefaultSearchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 115
    invoke-static {p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->getDefaultCache(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->credibility:I

    .line 118
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->verbose:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 120
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 137
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 133
    return-void
.end method

.method private checkDone()V
    .locals 3

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 358
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 360
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->dclass:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->dclass:I

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

    .line 362
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private follow(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 190
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->foundAlias:Z

    .line 191
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse:Z

    .line 192
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->networkerror:Z

    .line 193
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->timedout:Z

    .line 194
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nxdomain:Z

    .line 195
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->referral:Z

    .line 196
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->iterations:I

    .line 197
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->iterations:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 199
    const-string v0, "CNAME loop"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 200
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->lookup(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultCache(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
    .locals 4

    .prologue
    .line 45
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 46
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>(I)V

    .line 49
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDefaultResolver()Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultResolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 248
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 249
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->verbose:Z

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 253
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->processResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;)V

    .line 254
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->doneCurrent:Z

    if-eqz v0, :cond_2

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->dclass:I

    invoke-static {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v2

    .line 269
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 270
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse:Z

    .line 271
    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_3

    .line 263
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->timedout:Z

    goto :goto_0

    .line 265
    :cond_3
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->networkerror:Z

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getQuestion()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 275
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse:Z

    .line 276
    const-string v0, "response does not match query"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 280
    if-nez v0, :cond_6

    .line 281
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 282
    :cond_6
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->verbose:Z

    if-eqz v1, :cond_7

    .line 283
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->type:I

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 286
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->processResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;)V

    goto/16 :goto_0
.end method

.method private processResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 210
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 213
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 214
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 218
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 219
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    .line 245
    :cond_2
    :goto_2
    return-void

    .line 220
    :cond_3
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nxdomain:Z

    .line 222
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->doneCurrent:Z

    .line 223
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->iterations:I

    if-lez v0, :cond_2

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 225
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    const/4 v0, 0x4

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 230
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_2

    .line 231
    :cond_5
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->getCNAME()Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->follow(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->getDNAME()Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;

    move-result-object v0

    .line 237
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromDNAME(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->follow(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    iput v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 240
    const-string v0, "Invalid DNAME target"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 241
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_2

    .line 243
    :cond_7
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->referral:Z

    goto :goto_2
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultResolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultCaches:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots()I

    move-result v0

    sput v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultNdots:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit v1

    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize resolver"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->iterations:I

    .line 86
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->foundAlias:Z

    .line 87
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    .line 88
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->doneCurrent:Z

    .line 89
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    .line 90
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 92
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nxdomain:Z

    .line 94
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse:Z

    .line 95
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse_error:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->networkerror:Z

    .line 97
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->timedout:Z

    .line 98
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nametoolong:Z

    .line 99
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->referral:Z

    .line 100
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->clearCache()V

    .line 102
    :cond_0
    return-void
.end method

.method private resolve(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->doneCurrent:Z

    .line 292
    if-nez p2, :cond_0

    .line 301
    :goto_0
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->lookup(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 302
    :goto_1
    return-void

    .line 296
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->concatenate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nametoolong:Z

    goto :goto_1
.end method

.method public static declared-synchronized setDefaultCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;I)V
    .locals 3

    .prologue
    .line 55
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 56
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setDefaultResolver(Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultResolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 2

    .prologue
    .line 64
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v1

    return-void

    .line 73
    :cond_0
    :try_start_1
    array-length v0, p0

    new-array v2, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 74
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 75
    aget-object v3, p0, v0

    sget-object v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v3

    aput-object v3, v2, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    sput-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPacketLogger(Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;)V
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->setPacketLogger(Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAliases()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->checkDone()V

    .line 373
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->noAliases:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 376
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

.method public getAnswers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->checkDone()V

    .line 368
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->checkDone()V

    .line 386
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 402
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    packed-switch v0, :pswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_0
    const-string v0, "successful"

    goto :goto_0

    .line 393
    :pswitch_1
    const-string v0, "unrecoverable error"

    goto :goto_0

    .line 396
    :pswitch_2
    const-string v0, "try again"

    goto :goto_0

    .line 399
    :pswitch_3
    const-string v0, "host not found"

    goto :goto_0

    .line 402
    :pswitch_4
    const-string v0, "type not found"

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->checkDone()V

    .line 381
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    return v0
.end method

.method public run()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 305
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->reset()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolve(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 328
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-nez v0, :cond_2

    .line 329
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse:Z

    if-eqz v0, :cond_8

    .line 330
    iput v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 332
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    .line 353
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    :goto_2
    return-object v0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-nez v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolve(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v0

    sget v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultNdots:I

    if-le v0, v1, :cond_5

    .line 313
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolve(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 314
    :cond_5
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_2

    .line 316
    :cond_6
    const/4 v0, 0x0

    .line 318
    :goto_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolve(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 321
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    if-eqz v1, :cond_7

    .line 322
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->answers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_2

    .line 323
    :cond_7
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->foundAlias:Z

    if-nez v1, :cond_1

    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 326
    goto :goto_3

    .line 333
    :cond_8
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->timedout:Z

    if-eqz v0, :cond_9

    .line 334
    iput v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 335
    const-string v0, "timed out"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 336
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_1

    .line 337
    :cond_9
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->networkerror:Z

    if-eqz v0, :cond_a

    .line 338
    iput v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 339
    const-string v0, "network error"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 340
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_1

    .line 341
    :cond_a
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nxdomain:Z

    if-eqz v0, :cond_b

    .line 342
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 343
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_1

    .line 344
    :cond_b
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->referral:Z

    if-eqz v0, :cond_c

    .line 345
    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 346
    const-string v0, "referral"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 347
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto :goto_1

    .line 348
    :cond_c
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->nametoolong:Z

    if-eqz v0, :cond_2

    .line 349
    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->result:I

    .line 350
    const-string v0, "name too long"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->error:Ljava/lang/String;

    .line 351
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->done:Z

    goto/16 :goto_1
.end method

.method public setCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;)V
    .locals 2

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->dclass:I

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->temporary_cache:Z

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->cache:Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->temporary_cache:Z

    goto :goto_0
.end method

.method public setCredibility(I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->credibility:I

    .line 187
    return-void
.end method

.method public setNdots(I)V
    .locals 3

    .prologue
    .line 177
    if-gez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal ndots value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    sput p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->defaultNdots:I

    .line 181
    return-void
.end method

.method public setResolver(Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->resolver:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 147
    return-void
.end method

.method public setSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 151
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 160
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 161
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

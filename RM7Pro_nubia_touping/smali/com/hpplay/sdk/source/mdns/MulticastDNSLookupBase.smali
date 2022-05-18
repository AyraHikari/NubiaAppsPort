.class public abstract Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/Constants;
.implements Ljava/io/Closeable;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected browseID:Ljava/lang/Object;

.field protected dclass:I

.field protected defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

.field protected defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field protected names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field protected querier:Lcom/hpplay/sdk/source/mdns/Querier;

.field protected queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

.field protected searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field protected type:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "MulticastDNSLookupBase"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    .line 42
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    .line 119
    const-string v0, "checklistnen"

    const-string v1, "----------- MulticastDNSLookupBase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->getDefaultQuerier()Lcom/hpplay/sdk/source/mdns/Querier;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->querier:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 121
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->getDefaultSearchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 122
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 10

    .prologue
    const/16 v1, 0xff

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>()V

    .line 127
    new-array v4, v6, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    aput-object v0, v4, v2

    iput-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-array v0, v6, [I

    aput v2, v0, v2

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v6

    .line 133
    array-length v7, v6

    move v4, v3

    move v9, v2

    move v2, v3

    move v3, v9

    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    .line 134
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    if-gez v2, :cond_1

    invoke-virtual {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v0

    move v2, v0

    .line 139
    :goto_1
    if-gez v4, :cond_2

    invoke-virtual {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v0

    .line 133
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 138
    goto :goto_1

    :cond_2
    move v0, v1

    .line 139
    goto :goto_2

    .line 142
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 143
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    .line 144
    iput v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    .line 146
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_4
    :goto_3
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0xff

    invoke-direct {p0, v0, p2, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 47
    invoke-direct {p0, p1, v0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 48
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 53
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 59
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    .line 60
    iput p3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    .line 61
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 62
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 66
    invoke-direct {p0, p1, v0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 67
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 82
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>()V

    .line 88
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 90
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 91
    aget-object v2, p1, v0

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :try_start_0
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move v2, v1

    .line 98
    :goto_2
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 100
    :try_start_1
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 101
    :catch_1
    move-exception v3

    .line 102
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 107
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 108
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    .line 109
    iput p3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    .line 110
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 114
    return-void

    .line 112
    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Invalid Name(s) specified!"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addNames([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 159
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 161
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 162
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    array-length v2, v0

    array-length v3, v0

    array-length v4, p1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 165
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 167
    :cond_0
    return-void
.end method

.method public addNames([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 177
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 178
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 179
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->addNames([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 183
    :cond_1
    return-void
.end method

.method public addSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 191
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 193
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 194
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    array-length v2, v0

    array-length v3, v0

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 197
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 199
    :cond_0
    return-void
.end method

.method public addSearchPath([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 209
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 210
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 211
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->addSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 215
    :cond_1
    return-void
.end method

.method protected buildQueries()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v0, :cond_8

    .line 301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v0, 0x0

    move v3, v2

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v1, v1

    if-ge v3, v1, :cond_6

    .line 305
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v7, v1, v3

    .line 306
    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    invoke-static {v7}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->isMulticastDomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    if-nez v0, :cond_1

    .line 309
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v7, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    .line 316
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 311
    :cond_1
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v7, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    goto :goto_1

    .line 314
    :cond_2
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v7, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v2

    .line 318
    :goto_2
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 321
    :try_start_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v4, v4, v1

    invoke-static {v7, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->concatenate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    .line 322
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aget-object v8, v8, v1

    invoke-static {v8}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->isMulticastDomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 324
    if-nez v0, :cond_4

    .line 325
    iget v8, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v9, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v4, v8, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v8

    invoke-static {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    .line 333
    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    :cond_4
    iget v8, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v9, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v4, v8, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 334
    :catch_0
    move-exception v4

    .line 335
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 331
    :cond_5
    :try_start_1
    iget v8, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->type:I

    iget v9, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->dclass:I

    invoke-static {v4, v8, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v8

    invoke-static {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 341
    :cond_6
    if-eqz v0, :cond_7

    .line 342
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 345
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 347
    :cond_8
    return-void
.end method

.method public closed()V
    .locals 1

    .prologue
    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->querier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/Querier;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    .line 424
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 427
    new-instance v0, Lcom/hpplay/sdk/source/mdns/ServiceRecodSorter;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/ServiceRecodSorter;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 428
    array-length v5, p1

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_7

    aget-object v0, p1, v2

    .line 429
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 432
    :sswitch_0
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;)V

    .line 433
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 439
    :sswitch_1
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    .line 440
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 441
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTTL()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 443
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addPointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_1

    .line 445
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removePointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_1

    .line 450
    :sswitch_2
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    .line 451
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 452
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;->getTTL()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    .line 454
    new-array v6, v12, [Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    aput-object v0, v6, v3

    invoke-virtual {v1, v6}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V

    goto :goto_1

    .line 456
    :cond_2
    new-array v6, v12, [Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    aput-object v0, v6, v3

    invoke-virtual {v1, v6}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V

    goto :goto_1

    .line 461
    :sswitch_3
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    .line 462
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 463
    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 464
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 465
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getTTL()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 466
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addAddress(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 468
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeAddress(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 474
    :sswitch_4
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;

    .line 475
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 476
    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 477
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 478
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getTTL()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 479
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 481
    :cond_6
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 488
    :cond_7
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    return-object v0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x1c -> :sswitch_4
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized getDefaultQuerier()Lcom/hpplay/sdk/source/mdns/Querier;
    .locals 3

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 357
    :try_start_1
    new-instance v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;-><init>(ZZ)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    :try_start_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultSearchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-nez v1, :cond_0

    .line 373
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_1

    array-length v1, v2

    :goto_0
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v3}, Lcom/hpplay/sdk/source/mdns/Querier;->getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 375
    const/4 v1, 0x0

    .line 376
    if-eqz v2, :cond_2

    .line 377
    array-length v0, v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v3}, Lcom/hpplay/sdk/source/mdns/Querier;->getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 378
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v4, v2

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    array-length v0, v2

    .line 383
    :goto_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mdns/Querier;->getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v4}, Lcom/hpplay/sdk/source/mdns/Querier;->getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    array-length v4, v4

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    move v1, v0

    .line 374
    goto :goto_0

    .line 381
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mdns/Querier;->getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNames()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public declared-synchronized getQuerier()Lcom/hpplay/sdk/source/mdns/Querier;
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->querier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public declared-synchronized setDefaultQuerier(Lcom/hpplay/sdk/source/mdns/Querier;)V
    .locals 1

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultQuerier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 411
    monitor-enter p0

    if-nez p1, :cond_0

    .line 412
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :goto_0
    monitor-exit p0

    return-void

    .line 415
    :cond_0
    :try_start_1
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 416
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 417
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_1
    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->defaultSearchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNames([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 241
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 242
    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->names:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 256
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 257
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->setNames([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0
.end method

.method public declared-synchronized setQuerier(Lcom/hpplay/sdk/source/mdns/Querier;)V
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->querier:Lcom/hpplay/sdk/source/mdns/Querier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 277
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->buildQueries()V

    .line 278
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 293
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 294
    aget-object v2, p1, v0

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;->setSearchPath([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0
.end method

.class public Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;
    }
.end annotation


# static fields
.field protected static final logger:Ljava/util/logging/Logger;

.field private static multicastDNSCache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;


# instance fields
.field private cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

.field public dataCopy:Ljava/util/LinkedHashMap;

.field private dataField:Ljava/lang/reflect/Field;

.field private findElement:Ljava/lang/reflect/Method;

.field private monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

.field private removeElement:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "mdns_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dns_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/utils/Misc;->getLogger(Ljava/lang/String;Z)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>()V

    .line 143
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    .line 147
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    .line 149
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    .line 151
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    .line 164
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->populateReflectedFields()V

    .line 165
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>(I)V

    .line 143
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    .line 147
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    .line 149
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    .line 151
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    .line 177
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->populateReflectedFields()V

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;-><init>()V

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->populateReflectedFields()V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;-><init>(Ljava/lang/String;)V

    .line 143
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    .line 147
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    .line 149
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    .line 151
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    .line 193
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->populateReflectedFields()V

    .line 194
    return-void
.end method

.method private findElementCopy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/ElementHelper;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 500
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Lcom/hpplay/sdk/source/mdns/ElementHelper;

    .line 503
    :goto_0
    return-object v0

    .line 500
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/ElementHelper;

    invoke-direct {v0, p0, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    sget-object v2, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 503
    goto :goto_0
.end method

.method public static getInstance()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->multicastDNSCache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    if-nez v0, :cond_0

    .line 106
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->multicastDNSCache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->multicastDNSCache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;->release()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->multicastDNSCache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    return-object v0
.end method

.method protected populateReflectedFields()V
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/hpplay/sdk/source/mdns/MonitorTask;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

    .line 461
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->monitorTask:Lcom/hpplay/sdk/source/mdns/MonitorTask;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;->start()V

    .line 464
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 466
    :try_start_0
    const-string v0, "data"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/AccessibleObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 468
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataCopy:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    :goto_0
    :try_start_1
    const-string v0, "findElement"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    .line 479
    const-string v0, "removeElement"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    .line 482
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElement:Ljava/lang/reflect/Method;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 490
    :goto_1
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    throw v0

    .line 472
    :catch_1
    move-exception v0

    .line 473
    sget-object v2, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 484
    :catch_2
    move-exception v0

    .line 485
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    throw v0

    .line 487
    :catch_3
    move-exception v0

    .line 488
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    return-object v0
.end method

.method public queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 13

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 268
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(I)V

    .line 269
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    .line 270
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 271
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v0, v4

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    .line 273
    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 274
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 278
    const/16 v4, 0xff

    invoke-virtual {p0, v0, v4, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 281
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 282
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 284
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    .line 285
    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 286
    invoke-virtual {v1, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 287
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 290
    :cond_1
    invoke-static {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->getTargetFromRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v6

    .line 291
    if-eqz v6, :cond_2

    .line 292
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 333
    :cond_4
    return-object v0

    .line 300
    :cond_5
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>(I)V

    .line 301
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v4

    .line 302
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 303
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v5

    .line 304
    if-eqz v5, :cond_4

    array-length v1, v5

    if-lez v1, :cond_4

    .line 305
    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v1, v5, v3

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 308
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x7fff

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->setDClassForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 309
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {p0, v1, v2, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 315
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v7

    .line 316
    if-eqz v7, :cond_9

    array-length v1, v7

    if-lez v1, :cond_9

    .line 317
    array-length v8, v7

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v8, :cond_9

    aget-object v1, v7, v2

    .line 318
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 319
    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 322
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCacheForAdditionalRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v9

    .line 323
    array-length v10, v9

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_8

    aget-object v11, v9, v1

    .line 324
    invoke-virtual {v0, v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 325
    const/4 v12, 0x3

    invoke-virtual {v0, v11, v12}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 323
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 305
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2
.end method

.method public queryCacheForAdditionalRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 344
    if-nez p1, :cond_0

    .line 345
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->EMPTY_RECORDS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 363
    :goto_0
    return-object v0

    .line 347
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 349
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->getTargetFromRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_2

    .line 351
    const/16 v2, 0xff

    invoke-virtual {p0, v0, v2, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    .line 354
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 355
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p0, v0, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCacheForAdditionalRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v6

    .line 357
    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    .line 358
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 354
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_0
.end method

.method public removeElementCopy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElement:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method declared-synchronized removeRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    .locals 2

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElementCopy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCacheMonitor(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;)V
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 383
    :try_start_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V
    .locals 6

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v2

    .line 410
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 411
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v1

    .line 412
    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->findElementCopy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/ElementHelper;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_3

    .line 414
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->compareCredibility(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 415
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->addRR(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 417
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getTTL()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->resetExpire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {p0, p1, p2, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;
    }
.end annotation


# instance fields
.field private table:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "verbosecompression"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->verbose:Z

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->table:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    .line 26
    return-void
.end method


# virtual methods
.method public add(ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x3fff

    if-le p1, v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    .line 32
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$1;)V

    .line 33
    iput-object p2, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 34
    iput p1, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->pos:I

    .line 35
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->table:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->next:Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    .line 36
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->table:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    aput-object v1, v2, v0

    .line 37
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->verbose:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)I
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    .line 43
    const/4 v1, -0x1

    .line 44
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->table:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    aget-object v0, v2, v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 45
    iget-object v2, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v2, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget v0, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->pos:I

    .line 44
    :cond_0
    iget-object v1, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;->next:Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

    goto :goto_0

    .line 48
    :cond_1
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->verbose:Z

    if-eqz v1, :cond_2

    .line 49
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    :cond_2
    return v0
.end method

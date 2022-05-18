.class Lcom/hpplay/sdk/source/mdns/Lookup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mdns/Lookup;->lookupDomains()[Lcom/hpplay/sdk/source/mdns/Lookup$Domain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

.field final synthetic val$domains:Ljava/util/Set;

.field final synthetic val$exceptions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/Lookup;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$1;->this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/Lookup$1;->val$exceptions:Ljava/util/List;

    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/Lookup$1;->val$domains:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$1;->val$exceptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public receiveRecord(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 170
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 171
    check-cast p2, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$1;->val$domains:Ljava/util/Set;

    new-instance v2, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

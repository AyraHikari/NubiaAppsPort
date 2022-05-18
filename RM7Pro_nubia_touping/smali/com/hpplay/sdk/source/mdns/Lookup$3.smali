.class Lcom/hpplay/sdk/source/mdns/Lookup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

.field final synthetic val$listener:Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/Lookup;Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$3;->this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/Lookup$3;->val$listener:Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$3;->val$listener:Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 228
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 5

    .prologue
    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    .line 232
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 233
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/Lookup$3;->val$listener:Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;

    invoke-interface {v4, p1, v3}, Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;->receiveRecord(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void

    .line 231
    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data
.end method

.class Lcom/hpplay/sdk/source/mdns/Lookup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

.field final synthetic val$exceptions:Ljava/util/Queue;

.field final synthetic val$messages:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/Lookup;Ljava/util/Queue;Ljava/util/Queue;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$2;->this$0:Lcom/hpplay/sdk/source/mdns/Lookup;

    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/Lookup$2;->val$exceptions:Ljava/util/Queue;

    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/Lookup$2;->val$messages:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$2;->val$exceptions:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$2;->val$messages:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

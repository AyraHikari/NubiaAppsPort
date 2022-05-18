.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeMnemonic"
.end annotation


# instance fields
.field private objects:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "Type"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 32
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->setPrefix(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public check(I)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 21
    return-void
.end method

.method public getProto(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->check(I)V

    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    return-object v0
.end method

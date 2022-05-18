.class Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$ZoneTransferHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicHandler"
.end annotation


# instance fields
.field private axfr:Ljava/util/List;

.field private ixfr:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$1;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public handleRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;

    .line 416
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 417
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    .line 425
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void

    .line 419
    :cond_0
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    goto :goto_0
.end method

.method public startAXFR()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->axfr:Ljava/util/List;

    .line 393
    return-void
.end method

.method public startIXFR()V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    .line 397
    return-void
.end method

.method public startIXFRAdds(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;

    .line 408
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->access$400(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->end:J

    .line 410
    return-void
.end method

.method public startIXFRDeletes(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V
    .locals 4

    .prologue
    .line 400
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$1;)V

    .line 401
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;->access$400(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->start:J

    .line 403
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$BasicHandler;->ixfr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

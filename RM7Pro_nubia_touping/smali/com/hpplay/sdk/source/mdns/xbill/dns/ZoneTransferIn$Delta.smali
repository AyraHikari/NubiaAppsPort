.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delta"
.end annotation


# instance fields
.field public adds:Ljava/util/List;

.field public deletes:Ljava/util/List;

.field public end:J

.field public start:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$1;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ZoneTransferIn$Delta;-><init>()V

    return-void
.end method

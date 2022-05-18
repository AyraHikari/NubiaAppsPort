.class Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass$DClassMnemonic;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DClassMnemonic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "DClass"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 16
    const-string v0, "CLASS"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass$DClassMnemonic;->setPrefix(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 0

    .prologue
    .line 11
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 12
    return-void
.end method

.class public Lcom/hpplay/sdk/source/mdns/Lookup$Domain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/Lookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Domain"
.end annotation


# instance fields
.field private isDefault:Z

.field private isLegacy:Z

.field private final name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 36
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getLabel(I)[B

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    aget-byte v0, v0, v1

    int-to-char v0, v0

    sparse-switch v0, :sswitch_data_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :sswitch_0
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isDefault:Z

    goto :goto_0

    .line 43
    :sswitch_1
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isLegacy:Z

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eq v1, p1, :cond_0

    .line 55
    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast p1, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isDefault:Z

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isLegacy:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "  [default]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;->isLegacy:Z

    if-eqz v0, :cond_1

    const-string v0, "  [legacy]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

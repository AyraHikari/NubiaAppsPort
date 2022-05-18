.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final nxdomain:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

.field private static final nxrrset:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

.field private static final unknown:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->unknown:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    .line 142
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->nxdomain:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    .line 143
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>(I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->nxrrset:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method constructor <init>(ILcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    .line 21
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method static ofType(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;
    .locals 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->unknown:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    .line 54
    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->nxdomain:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->nxrrset:Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    goto :goto_0

    .line 51
    :pswitch_3
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;-><init>()V

    .line 52
    iput p0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    goto :goto_0
.end method

.method public getCNAME()Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/CNAMERecord;

    return-object v0
.end method

.method public getDNAME()Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->first()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;

    return-object v0
.end method

.method public getNS()Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    return-object v0
.end method

.method public isCNAME()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDNAME()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelegation()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXDOMAIN()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXRRSET()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->type:I

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 118
    :pswitch_0
    const-string v0, "unknown"

    .line 136
    :goto_0
    return-object v0

    .line 121
    :pswitch_1
    const-string v0, "NXDOMAIN"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "NXRRSET"

    goto :goto_0

    .line 127
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_6
    const-string v0, "successful"

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

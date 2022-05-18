.class public Lcom/hpplay/sdk/source/mdns/ServiceRecodSorter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 15
    instance-of v3, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-eqz v3, :cond_0

    .line 16
    instance-of v3, p2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-eqz v3, :cond_0

    .line 17
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 18
    check-cast p2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 20
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v3

    .line 21
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v4

    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 25
    :sswitch_0
    const/16 v2, 0x21

    if-ne v4, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 27
    :sswitch_1
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    move v1, v0

    .line 31
    goto :goto_0

    :sswitch_3
    move v1, v2

    .line 29
    goto :goto_0

    .line 36
    :sswitch_4
    sparse-switch v4, :sswitch_data_2

    goto :goto_0

    :sswitch_5
    move v1, v2

    .line 39
    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 41
    goto :goto_0

    .line 47
    :sswitch_7
    sparse-switch v4, :sswitch_data_3

    goto :goto_0

    :sswitch_8
    move v1, v0

    .line 54
    goto :goto_0

    :sswitch_9
    move v1, v2

    .line 51
    goto :goto_0

    .line 59
    :sswitch_a
    sparse-switch v4, :sswitch_data_4

    goto :goto_0

    :sswitch_b
    move v1, v2

    .line 65
    goto :goto_0

    :sswitch_c
    move v1, v0

    .line 67
    goto :goto_0

    .line 23
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0xc -> :sswitch_1
        0x10 -> :sswitch_4
        0x1c -> :sswitch_7
        0x21 -> :sswitch_0
        0x2f -> :sswitch_a
    .end sparse-switch

    .line 27
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_2
        0x21 -> :sswitch_3
    .end sparse-switch

    .line 36
    :sswitch_data_2
    .sparse-switch
        0xc -> :sswitch_5
        0x10 -> :sswitch_6
        0x21 -> :sswitch_5
    .end sparse-switch

    .line 47
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_8
        0xc -> :sswitch_9
        0x10 -> :sswitch_9
        0x1c -> :sswitch_8
        0x21 -> :sswitch_9
    .end sparse-switch

    .line 59
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_b
        0xc -> :sswitch_b
        0x10 -> :sswitch_b
        0x1c -> :sswitch_b
        0x21 -> :sswitch_b
        0x2f -> :sswitch_c
    .end sparse-switch
.end method

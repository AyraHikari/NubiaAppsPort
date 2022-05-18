.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field name:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field next:Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;

.field pos:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression$Entry;-><init>()V

    return-void
.end method

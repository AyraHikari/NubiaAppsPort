.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# static fields
.field private static flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "KEY flags"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 79
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 80
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 81
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x4000

    const-string v2, "NOCONF"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const v1, 0x8000

    const-string v2, "NOAUTH"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const v1, 0xc000

    const-string v2, "NOKEY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x2000

    const-string v2, "FLAG2"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 85
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x1000

    const-string v2, "EXTEND"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 86
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x800

    const-string v2, "FLAG4"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x400

    const-string v2, "FLAG5"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "USER"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x100

    const-string v2, "ZONE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 90
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x200

    const-string v2, "HOST"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 91
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x300

    const-string v2, "NTYP3"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 92
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x80

    const-string v2, "FLAG8"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 93
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x40

    const-string v2, "FLAG9"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 94
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x20

    const-string v2, "FLAG10"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 95
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x10

    const-string v2, "FLAG11"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 96
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "SIG0"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 97
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x1

    const-string v2, "SIG1"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 98
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "SIG2"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 99
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "SIG3"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 100
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "SIG4"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 101
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "SIG5"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 102
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "SIG6"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 103
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "SIG7"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 104
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "SIG8"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 105
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x9

    const-string v2, "SIG9"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 106
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "SIG10"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 107
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xb

    const-string v2, "SIG11"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 108
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xc

    const-string v2, "SIG12"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 109
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xd

    const-string v2, "SIG13"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 110
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xe

    const-string v2, "SIG14"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 111
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xf

    const-string v2, "SIG15"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static value(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    if-ltz v0, :cond_1

    const v2, 0xffff

    if-gt v0, v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "|"

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 69
    if-gez v3, :cond_2

    move v0, v1

    .line 70
    goto :goto_0

    .line 67
    :cond_2
    or-int/2addr v0, v3

    goto :goto_1
.end method

.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IQUERY:I = 0x1

.field public static final NOTIFY:I = 0x4

.field public static final QUERY:I = 0x0

.field public static final STATUS:I = 0x2

.field public static final UPDATE:I = 0x5

.field private static opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "DNS Opcode"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 30
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 31
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 33
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x0

    const-string v2, "QUERY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 34
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "IQUERY"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 35
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "STATUS"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 36
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "NOTIFY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 37
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "UPDATE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->opcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

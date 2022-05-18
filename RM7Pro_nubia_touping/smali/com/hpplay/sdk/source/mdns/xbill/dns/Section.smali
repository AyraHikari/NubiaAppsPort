.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDITIONAL:I = 0x3

.field public static final ANSWER:I = 0x1

.field public static final AUTHORITY:I = 0x2

.field public static final PREREQ:I = 0x1

.field public static final QUESTION:I = 0x0

.field public static final UPDATE:I = 0x2

.field public static final ZONE:I

.field private static longSections:[Ljava/lang/String;

.field private static sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

.field private static updateSections:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 43
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "Message Section"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    .line 45
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 47
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 48
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "qd"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 49
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "an"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 50
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "au"

    invoke-virtual {v0, v5, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 51
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "ad"

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    const-string v1, "QUESTIONS"

    aput-object v1, v0, v4

    .line 53
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    const-string v1, "ANSWERS"

    aput-object v1, v0, v3

    .line 54
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    const-string v1, "AUTHORITY RECORDS"

    aput-object v1, v0, v5

    .line 55
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    const-string v1, "ADDITIONAL RECORDS"

    aput-object v1, v0, v2

    .line 56
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    const-string v1, "ZONE"

    aput-object v1, v0, v4

    .line 57
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    const-string v1, "PREREQUISITES"

    aput-object v1, v0, v3

    .line 58
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    const-string v1, "UPDATE RECORDS"

    aput-object v1, v0, v5

    .line 59
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    const-string v1, "ADDITIONAL RECORDS"

    aput-object v1, v0, v2

    .line 60
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

.method public static longString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 19
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->longSections:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 24
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->updateSections:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->sections:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

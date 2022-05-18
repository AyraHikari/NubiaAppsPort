.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CASE_LOWER:I = 0x3

.field static final CASE_SENSITIVE:I = 0x1

.field static final CASE_UPPER:I = 0x2

.field private static cachedInts:[Ljava/lang/Integer;


# instance fields
.field private description:Ljava/lang/String;

.field private max:I

.field private numericok:Z

.field private prefix:Ljava/lang/String;

.field private strings:Ljava/util/HashMap;

.field private values:Ljava/util/HashMap;

.field private wordcase:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    .line 127
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 128
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->description:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->wordcase:I

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->values:Ljava/util/HashMap;

    .line 28
    const v0, 0x7fffffff

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->max:I

    .line 29
    return-void
.end method

.method private parseNumeric(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->max:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 71
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->wordcase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->wordcase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    if-ltz p0, :cond_0

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 76
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public addAlias(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 84
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    invoke-direct {p0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public addAll(Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;)V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->wordcase:I

    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->wordcase:I

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": wordcases do not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->values:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public check(I)V
    .locals 3

    .prologue
    .line 48
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->max:I

    if-le p1, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    return-void
.end method

.method public getText(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->values:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result v0

    .line 117
    if-gez v0, :cond_0

    .line 122
    :cond_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->numericok:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setMaximum(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->max:I

    .line 33
    return-void
.end method

.method public setNumericAllowed(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->numericok:Z

    .line 41
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->prefix:Ljava/lang/String;

    .line 37
    return-void
.end method

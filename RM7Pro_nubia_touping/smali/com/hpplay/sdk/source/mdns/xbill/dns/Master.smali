.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentDClass:I

.field private currentTTL:J

.field private currentType:I

.field private defaultTTL:J

.field private file:Ljava/io/File;

.field private generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

.field private generators:Ljava/util/List;

.field private included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

.field private last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

.field private needSOATTL:Z

.field private noExpandGenerate:Z

.field private origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 32
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    .line 33
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->file:Ljava/io/File;

    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    .line 38
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 39
    iput-wide p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/InputStream;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/InputStream;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 57
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RelativeNameException;

    invoke-direct {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RelativeNameException;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    .line 62
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 63
    iput-wide p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/File;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/File;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/File;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    .line 45
    return-void
.end method

.method private endGenerate()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getEOL()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    .line 190
    return-void
.end method

.method private nextGenerated()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_0
    .catch Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$TokenizerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$TokenizerException;->getBaseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private parseName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-static {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private parseTTLClassAndType()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->value(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentDClass:I

    if-ltz v3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 92
    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    .line 95
    :try_start_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    .line 96
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 106
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentDClass:I

    if-ltz v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    if-gez v1, :cond_5

    .line 114
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 97
    :catch_0
    move-exception v3

    .line 98
    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 99
    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    goto :goto_0

    .line 100
    :cond_3
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    goto :goto_0

    .line 109
    :cond_4
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentDClass:I

    goto :goto_1

    .line 116
    :cond_5
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_7

    .line 117
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    .line 118
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    const-string v1, "missing TTL"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 121
    :cond_6
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->needSOATTL:Z

    .line 122
    iput-wide v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    .line 126
    :cond_7
    return-void
.end method

.method private parseUInt32(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-wide v2

    .line 133
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 134
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    const-wide v4, 0xffffffffL

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startGenerate()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 143
    const-string v0, "-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-gez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid $GENERATE range specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 147
    :cond_0
    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v0, 0x0

    .line 150
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 151
    if-ltz v3, :cond_1

    .line 152
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_1
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v2

    .line 157
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v4

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v6

    .line 165
    :goto_0
    cmp-long v0, v2, v10

    if-ltz v0, :cond_5

    cmp-long v0, v4, v10

    if-ltz v0, :cond_5

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    cmp-long v0, v6, v10

    if-lez v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseTTLClassAndType()V

    .line 168
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->supportedType(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$GENERATE does not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 162
    :cond_2
    const-wide/16 v6, 0x1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getEOL()V

    .line 173
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->unget()V

    .line 174
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    iget v9, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    iget v10, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentDClass:I

    iget-wide v11, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    iget-object v14, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct/range {v1 .. v14}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    .line 175
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generators:Ljava/util/List;

    if-nez v0, :cond_4

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generators:Ljava/util/List;

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generators:Ljava/util/List;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid $GENERATE range specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public _nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->nextGenerated()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->endGenerate()V

    .line 224
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0, v4, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get(ZZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 225
    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 226
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 227
    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-eq v2, v4, :cond_3

    .line 228
    iget v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-nez v0, :cond_4

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->unget()V

    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    const-string v1, "no owner"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    .line 302
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseTTLClassAndType()V

    .line 303
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentType:I

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentDClass:I

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->currentTTL:J

    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 304
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->needSOATTL:Z

    if-eqz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->getMinimum()J

    move-result-wide v0

    .line 306
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->setTTL(J)V

    .line 307
    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    .line 308
    iput-boolean v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->needSOATTL:Z

    .line 311
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    goto :goto_0

    .line 240
    :cond_8
    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-eq v2, v4, :cond_3

    .line 241
    iget v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-nez v2, :cond_9

    move-object v0, v1

    .line 242
    goto :goto_0

    .line 246
    :cond_9
    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_a

    .line 247
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->last:Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    goto :goto_2

    .line 255
    :cond_a
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    .line 256
    const-string v2, "$ORIGIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 258
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getEOL()V

    goto/16 :goto_1

    .line 259
    :cond_b
    const-string v2, "$TTL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 260
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTL()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getEOL()V

    goto/16 :goto_1

    .line 263
    :cond_c
    const-string v2, "$INCLUDE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->file:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 274
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 276
    iget-object v1, v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->parseName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getEOL()V

    .line 280
    :cond_d
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->defaultTTL:J

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;-><init>(Ljava/io/File;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;J)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->included:Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;

    .line 281
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 284
    :cond_f
    const-string v2, "$GENERATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 285
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 288
    :cond_10
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generator:Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;

    if-eqz v0, :cond_11

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot nest $GENERATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_11
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->startGenerate()V

    .line 293
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->noExpandGenerate:Z

    if-nez v0, :cond_12

    .line 294
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->nextGenerated()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :cond_12
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->endGenerate()V

    goto/16 :goto_1
.end method

.method public expandGenerate(Z)V
    .locals 1

    .prologue
    .line 330
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->noExpandGenerate:Z

    .line 331
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->close()V

    .line 342
    :cond_0
    return-void
.end method

.method public generators()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generators:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->generators:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->_nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->close()V

    .line 326
    :cond_0
    return-object v0

    .line 320
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Master;->st:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->close()V

    :cond_1
    throw v1
.end method

.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "via"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 37
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 38
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;
    .param p2, "vias"    # [Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 109
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 110
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSMSURI()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v7, "sms:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 59
    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 64
    :goto_1
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-eqz v7, :cond_0

    .line 66
    const-string v7, ";via="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_2
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    if-eqz v7, :cond_7

    move v1, v5

    .line 71
    .local v1, "hasBody":Z
    :goto_2
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    if-eqz v7, :cond_8

    move v2, v5

    .line 72
    .local v2, "hasSubject":Z
    :goto_3
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    .line 73
    :cond_3
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    if-eqz v1, :cond_4

    .line 75
    const-string v5, "body="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_4
    if-eqz v2, :cond_6

    .line 79
    if-eqz v1, :cond_5

    .line 80
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_5
    const-string v5, "subject="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v1    # "hasBody":Z
    .end local v2    # "hasSubject":Z
    :cond_7
    move v1, v6

    .line 70
    goto :goto_2

    .restart local v1    # "hasBody":Z
    :cond_8
    move v2, v6

    .line 71
    goto :goto_3
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getVias()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    return-object v0
.end method

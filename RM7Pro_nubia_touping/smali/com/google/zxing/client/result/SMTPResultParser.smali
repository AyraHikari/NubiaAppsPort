.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 9
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 31
    invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "rawText":Ljava/lang/String;
    const-string v0, "smtp:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMTP:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-object v2

    .line 35
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "emailAddress":Ljava/lang/String;
    const/4 v4, 0x0

    .line 37
    .local v4, "subject":Ljava/lang/String;
    const/4 v5, 0x0

    .line 38
    .local v5, "body":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 39
    .local v6, "colon":I
    if-ltz v6, :cond_1

    .line 40
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 43
    if-ltz v6, :cond_1

    .line 44
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 48
    :cond_1
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v3

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .locals 4
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    .line 35
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v2, v3, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/client/result/ISBNResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "rawText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 43
    const-string v2, "978"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "979"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :cond_2
    new-instance v1, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object v0

    return-object v0
.end method

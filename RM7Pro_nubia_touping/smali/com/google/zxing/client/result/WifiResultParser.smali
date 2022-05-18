.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 13
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v0, 0x0

    const/16 v12, 0x3b

    const/4 v11, 0x0

    .line 42
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "rawText":Ljava/lang/String;
    const-string v10, "WIFI:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    const-string v10, "S:"

    invoke-static {v10, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 51
    const-string v0, "P:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "pass":Ljava/lang/String;
    const-string v0, "T:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 54
    const-string v1, "nopass"

    .line 56
    :cond_2
    const-string v0, "H:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 57
    .local v4, "hidden":Z
    const-string v0, "I:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "identity":Ljava/lang/String;
    const-string v0, "A:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "anonymousIdentity":Ljava/lang/String;
    const-string v0, "E:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "eapMethod":Ljava/lang/String;
    const-string v0, "H:"

    invoke-static {v0, v9, v12, v11}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "phase2Method":Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

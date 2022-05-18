.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 14
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, "rawText":Ljava/lang/String;
    const-string v13, "mailto:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "MAILTO:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 39
    :cond_0
    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "hostEmail":Ljava/lang/String;
    const/16 v13, 0x3f

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 41
    .local v10, "queryStart":I
    if-ltz v10, :cond_1

    .line 42
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 45
    :cond_1
    :try_start_0
    invoke-static {v8}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "tos":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_2
    invoke-static {v11}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 54
    .local v9, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "ccs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "bccs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "subject":Ljava/lang/String;
    const/4 v5, 0x0

    .line 58
    .local v5, "body":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 59
    if-nez v1, :cond_3

    .line 60
    const-string v0, "to"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 61
    .local v12, "tosString":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 62
    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .end local v12    # "tosString":Ljava/lang/String;
    :cond_3
    const-string v0, "cc"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 66
    .local v7, "ccString":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 67
    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_4
    const-string v0, "bcc"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "bccString":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 71
    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_5
    const-string v0, "subject"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "subject":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 74
    .restart local v4    # "subject":Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "body":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 76
    .end local v6    # "bccString":Ljava/lang/String;
    .end local v7    # "ccString":Ljava/lang/String;
    .restart local v5    # "body":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v1    # "tos":[Ljava/lang/String;
    .end local v2    # "ccs":[Ljava/lang/String;
    .end local v3    # "bccs":[Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "body":Ljava/lang/String;
    .end local v8    # "hostEmail":Ljava/lang/String;
    .end local v9    # "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "queryStart":I
    :cond_7
    :goto_0
    return-object v0

    .line 78
    :cond_8
    invoke-static {v11}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 81
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v0, v11}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .restart local v8    # "hostEmail":Ljava/lang/String;
    .restart local v10    # "queryStart":I
    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    return-object v0
.end method

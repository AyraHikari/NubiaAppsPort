.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 12
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "rawText":Ljava/lang/CharSequence;
    sget-object v10, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 45
    :cond_1
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "query":Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 52
    .local v2, "latitude":D
    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v10, v2, v10

    if-gtz v10, :cond_0

    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v10, v2, v10

    if-ltz v10, :cond_0

    .line 55
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 56
    .local v4, "longitude":D
    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v10, v4, v10

    if-gtz v10, :cond_0

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v10, v4, v10

    if-ltz v10, :cond_0

    .line 59
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-nez v10, :cond_3

    .line 60
    const-wide/16 v6, 0x0

    .line 70
    .local v6, "altitude":D
    :cond_2
    new-instance v1, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v6    # "altitude":D
    :cond_3
    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 63
    .restart local v6    # "altitude":D
    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2

    goto :goto_0

    .line 68
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    return-object v0
.end method

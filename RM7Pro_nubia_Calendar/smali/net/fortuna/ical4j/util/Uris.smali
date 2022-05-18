.class public final Lnet/fortuna/ical4j/util/Uris;
.super Ljava/lang/Object;
.source "Uris.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-static {p0}, Lnet/fortuna/ical4j/util/Uris;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "use":Ljava/net/URISyntaxException;
    const-string v1, "ical4j.parsing.relaxed"

    .line 113
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    :cond_0
    throw v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 96
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "ical4j.compatibility.notes"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(?i)^cid:.*"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "[<>]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.class public Lcom/hpplay/cybergarage/xml/XML;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARSET_UTF8:Ljava/lang/String; = "utf-8"

.field public static final DEFAULT_CONTENT_LANGUAGE:Ljava/lang/String; = "en"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/xml; charset=\"utf-8\""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hpplay/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final escapeXMLChars(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return-object v1

    .line 33
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 35
    new-array v6, v5, [C

    .line 36
    invoke-virtual {p0, v0, v5, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v0

    move v2, v0

    move-object v0, v1

    .line 39
    :goto_1
    if-ge v3, v5, :cond_4

    .line 40
    aget-char v7, v6, v3

    sparse-switch v7, :sswitch_data_0

    .line 61
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 62
    sub-int v7, v3, v2

    invoke-virtual {v4, v6, v2, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move-object v0, v1

    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    :sswitch_0
    const-string v0, "&amp;"

    goto :goto_2

    .line 45
    :sswitch_1
    const-string v0, "&lt;"

    goto :goto_2

    .line 48
    :sswitch_2
    const-string v0, "&gt;"

    goto :goto_2

    .line 51
    :sswitch_3
    if-eqz p1, :cond_3

    .line 52
    const-string v0, "&apos;"

    goto :goto_2

    .line 56
    :cond_3
    :sswitch_4
    if-eqz p1, :cond_1

    .line 57
    const-string v0, "&quot;"

    goto :goto_2

    .line 68
    :cond_4
    if-nez v2, :cond_5

    move-object v1, p0

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    sub-int v0, v5, v2

    invoke-virtual {v4, v6, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_0
        0x27 -> :sswitch_3
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static final unescapeXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

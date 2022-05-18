.class public Lorg/apache/commons/lang/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 724
    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p0, v2}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 728
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 729
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 731
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static escapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 761
    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {p1, v2}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 768
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 769
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 770
    .local v0, "c":C
    if-ne v0, v3, :cond_2

    .line 771
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 773
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 775
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 458
    if-nez p0, :cond_0

    .line 459
    const/4 v2, 0x0

    .line 464
    :goto_0
    return-object v2

    .line 462
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 463
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 465
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    if-nez p0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    if-nez p1, :cond_1

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V

    .line 107
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V

    .line 148
    return-void
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "escapeSingleQuotes"    # Z
    .param p2, "escapeForwardSlash"    # Z

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 164
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0, p1, p2}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V

    .line 165
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 166
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;ZZ)V
    .locals 6
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "escapeSingleQuote"    # Z
    .param p3, "escapeForwardSlash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Writer must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_0
    if-nez p1, :cond_2

    .line 259
    :cond_1
    return-void

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 191
    .local v2, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, "ch":C
    const/16 v3, 0xfff

    if-le v0, v3, :cond_3

    .line 196
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_3
    const/16 v3, 0xff

    if-le v0, v3, :cond_4

    .line 198
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_4
    const/16 v3, 0x7f

    if-le v0, v3, :cond_5

    .line 200
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_5
    const/16 v3, 0x20

    if-ge v0, v3, :cond_7

    .line 202
    packed-switch v0, :pswitch_data_0

    .line 224
    :pswitch_0
    const/16 v3, 0xf

    if-le v0, v3, :cond_6

    .line 225
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 205
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 208
    :pswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 209
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 212
    :pswitch_3
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 213
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 216
    :pswitch_4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 217
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 220
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 221
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 227
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\u000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/lang/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_7
    sparse-switch v0, :sswitch_data_0

    .line 254
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 234
    :sswitch_0
    if-eqz p2, :cond_8

    .line 235
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 237
    :cond_8
    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 241
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 244
    :sswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 245
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 248
    :sswitch_3
    if-eqz p3, :cond_9

    .line 249
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 251
    :cond_9
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x2f -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static escapeSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 693
    if-nez p0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 617
    if-nez p0, :cond_0

    .line 618
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    if-nez p0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    if-nez p1, :cond_1

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static hex(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 269
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 801
    if-nez p0, :cond_0

    .line 802
    const/4 v2, 0x0

    .line 807
    :goto_0
    return-object v2

    .line 805
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 806
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 808
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 810
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unescapeCsv(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 838
    if-nez p1, :cond_0

    .line 859
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 842
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_3

    .line 846
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "quoteless":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 855
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 858
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 528
    if-nez p0, :cond_0

    .line 529
    const/4 v2, 0x0

    .line 534
    :goto_0
    return-object v2

    .line 532
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 533
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 535
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    if-nez p0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    if-nez p1, :cond_1

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    .line 286
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 287
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 289
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 12
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x5c

    .line 311
    if-nez p0, :cond_0

    .line 312
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The Writer must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 314
    :cond_0
    if-nez p1, :cond_2

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 318
    .local v5, "sz":I
    new-instance v6, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v6, v11}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 319
    .local v6, "unicode":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    .line 320
    .local v1, "hadSlash":Z
    const/4 v3, 0x0

    .line 321
    .local v3, "inUnicode":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 322
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, "ch":C
    if-eqz v3, :cond_4

    .line 326
    invoke-virtual {v6, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 327
    invoke-virtual {v6}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 331
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 332
    .local v7, "value":I
    int-to-char v8, v7

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    .line 333
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/apache/commons/lang/text/StrBuilder;->setLength(I)Lorg/apache/commons/lang/text/StrBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v3, 0x0

    .line 335
    const/4 v1, 0x0

    .line 321
    .end local v7    # "value":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    :catch_0
    move-exception v4

    .line 337
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unable to parse unicode value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 342
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    if-eqz v1, :cond_5

    .line 344
    const/4 v1, 0x0

    .line 345
    sparse-switch v0, :sswitch_data_0

    .line 377
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 347
    :sswitch_0
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 350
    :sswitch_1
    const/16 v8, 0x27

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 353
    :sswitch_2
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 356
    :sswitch_3
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 359
    :sswitch_4
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 362
    :sswitch_5
    const/16 v8, 0x9

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 365
    :sswitch_6
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 368
    :sswitch_7
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 373
    :sswitch_8
    const/4 v3, 0x1

    .line 374
    goto :goto_2

    .line 381
    :cond_5
    if-ne v0, v10, :cond_6

    .line 382
    const/4 v1, 0x1

    .line 383
    goto :goto_2

    .line 385
    :cond_6
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 387
    .end local v0    # "ch":C
    :cond_7
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
        0x62 -> :sswitch_7
        0x66 -> :sswitch_4
        0x6e -> :sswitch_6
        0x72 -> :sswitch_3
        0x74 -> :sswitch_5
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 667
    if-nez p0, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 670
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    if-nez p0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    if-nez p1, :cond_1

    .line 649
    :goto_0
    return-void

    .line 648
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

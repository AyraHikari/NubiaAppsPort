.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 225
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v7, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v2, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 228
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 229
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 248
    invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :sswitch_1
    add-int/lit8 v9, v4, -0x2

    if-ge v3, v9, :cond_0

    .line 235
    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 236
    .local v5, "nextChar":C
    const/16 v9, 0xd

    if-eq v5, v9, :cond_0

    const/16 v9, 0xa

    if-eq v5, v9, :cond_0

    .line 237
    add-int/lit8 v9, v3, 0x2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 238
    .local v6, "nextNextChar":C
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v1

    .line 239
    .local v1, "firstDigit":I
    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v8

    .line 240
    .local v8, "secondDigit":I
    if-ltz v1, :cond_1

    if-ltz v8, :cond_1

    .line 241
    shl-int/lit8 v9, v1, 0x4

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 252
    .end local v0    # "c":C
    .end local v1    # "firstDigit":I
    .end local v5    # "nextChar":C
    .end local v6    # "nextNextChar":C
    .end local v8    # "secondDigit":I
    :cond_2
    invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 229
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 341
    if-eqz p0, :cond_1

    .line 342
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 343
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, "name":Ljava/lang/String;
    const/4 v8, 0x5

    new-array v1, v8, [Ljava/lang/String;

    .line 345
    .local v1, "components":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 347
    .local v6, "start":I
    const/4 v0, 0x0

    .line 348
    .local v0, "componentIndex":I
    :goto_1
    if-ge v0, v10, :cond_0

    const/16 v8, 0x3b

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, "end":I
    if-ltz v2, :cond_0

    .line 349
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 351
    add-int/lit8 v6, v2, 0x1

    goto :goto_1

    .line 353
    .end local v2    # "end":I
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v5, "newName":Ljava/lang/StringBuilder;
    const/4 v8, 0x3

    invoke-static {v1, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 356
    const/4 v8, 0x1

    invoke-static {v1, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 357
    const/4 v8, 0x2

    invoke-static {v1, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 358
    invoke-static {v1, v9, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 359
    invoke-static {v1, v10, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    .end local v0    # "componentIndex":I
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newName":Ljava/lang/StringBuilder;
    .end local v6    # "start":I
    :cond_1
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 331
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 23
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 109
    .local v3, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 111
    .local v9, "max":I
    :goto_0
    if-ge v3, v9, :cond_15

    .line 115
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(?:^|\n)"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "(?:;([^:]*))?:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 116
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 117
    .local v7, "matcher":Ljava/util/regex/Matcher;
    if-lez v3, :cond_0

    .line 118
    add-int/lit8 v3, v3, -0x1

    .line 120
    :cond_0
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 123
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    .line 125
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "metadataString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 127
    .local v10, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 128
    .local v14, "quotedPrintable":Z
    const/4 v15, 0x0

    .line 129
    .local v15, "quotedPrintableCharset":Ljava/lang/String;
    const/16 v17, 0x0

    .line 130
    .local v17, "valueType":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 131
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v12, v19, v18

    .line 132
    .local v12, "metadatum":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .restart local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, "metadatumTokens":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 138
    const/16 v21, 0x0

    aget-object v4, v13, v21

    .line 139
    .local v4, "key":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v16, v13, v21

    .line 140
    .local v16, "value":Ljava/lang/String;
    const-string v21, "ENCODING"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 141
    const/4 v14, 0x1

    .line 131
    .end local v4    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 142
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_3
    const-string v21, "CHARSET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 143
    move-object/from16 v15, v16

    goto :goto_2

    .line 144
    :cond_4
    const-string v21, "VALUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 145
    move-object/from16 v17, v16

    goto :goto_2

    .line 151
    .end local v4    # "key":Ljava/lang/String;
    .end local v12    # "metadatum":Ljava/lang/String;
    .end local v13    # "metadatumTokens":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_5
    move v6, v3

    .line 153
    .local v6, "matchStart":I
    :goto_3
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_a

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_7

    add-int/lit8 v18, v3, 0x1

    .line 155
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    add-int/lit8 v18, v3, 0x1

    .line 156
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 157
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 158
    :cond_7
    if-eqz v14, :cond_a

    if-lez v3, :cond_8

    add-int/lit8 v18, v3, -0x1

    .line 159
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v3, v0, :cond_a

    add-int/lit8 v18, v3, -0x2

    .line 160
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 161
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 167
    :cond_a
    if-gez v3, :cond_b

    .line 169
    move v3, v9

    goto/16 :goto_0

    .line 170
    :cond_b
    if-le v3, v6, :cond_14

    .line 172
    if-nez v8, :cond_c

    .line 173
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .restart local v8    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_c
    if-lez v3, :cond_d

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 176
    add-int/lit8 v3, v3, -0x1

    .line 178
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "element":Ljava/lang/String;
    if-eqz p2, :cond_e

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 182
    :cond_e
    if-eqz v14, :cond_11

    .line 183
    invoke-static {v2, v15}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    if-eqz p3, :cond_f

    .line 185
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 196
    :cond_f
    :goto_4
    const-string v18, "uri"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 200
    :try_start_0
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    :cond_10
    :goto_5
    if-nez v10, :cond_13

    .line 206
    new-instance v5, Ljava/util/ArrayList;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v5, "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v5    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 214
    goto/16 :goto_0

    .line 188
    :cond_11
    if-eqz p3, :cond_12

    .line 189
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 191
    :cond_12
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    sget-object v18, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const-string v19, "$1"

    invoke-virtual/range {v18 .. v19}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 210
    :cond_13
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 215
    .end local v2    # "element":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 218
    goto/16 :goto_0

    .line 220
    .end local v6    # "matchStart":I
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "metadataString":Ljava/lang/String;
    .end local v14    # "quotedPrintable":Z
    .end local v15    # "quotedPrintableCharset":Ljava/lang/String;
    .end local v17    # "valueType":Ljava/lang/String;
    :cond_15
    return-object v8

    .restart local v2    # "element":Ljava/lang/String;
    .restart local v6    # "matchStart":I
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "metadataString":Ljava/lang/String;
    .restart local v14    # "quotedPrintable":Z
    .restart local v15    # "quotedPrintableCharset":Ljava/lang/String;
    .restart local v17    # "valueType":Ljava/lang/String;
    :catch_0
    move-exception v18

    goto :goto_5
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "components"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "newName"    # Ljava/lang/StringBuilder;

    .prologue
    .line 366
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "fragmentBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 262
    .local v1, "fragmentBytes":[B
    if-nez p1, :cond_1

    .line 263
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    .local v0, "fragment":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .end local v0    # "fragment":Ljava/lang/String;
    .end local v1    # "fragmentBytes":[B
    :cond_0
    return-void

    .line 266
    .restart local v1    # "fragmentBytes":[B
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "fragment":Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v0    # "fragment":Ljava/lang/String;
    :catch_0
    move-exception v2

    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v0    # "fragment":Ljava/lang/String;
    goto :goto_0
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    const/4 v2, 0x0

    .line 299
    :goto_0
    return-object v2

    .line 292
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 294
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 303
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    :cond_0
    const/4 v7, 0x0

    .line 327
    :goto_0
    return-object v7

    .line 306
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 308
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 309
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 310
    const/4 v5, 0x0

    .line 311
    .local v5, "type":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 312
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "metadatum":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 314
    .local v0, "equals":I
    if-gez v0, :cond_4

    .line 316
    move-object v5, v3

    .line 324
    .end local v0    # "equals":I
    .end local v3    # "metadatum":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    .restart local v0    # "equals":I
    .restart local v3    # "metadatum":Ljava/lang/String;
    :cond_4
    const-string v8, "TYPE"

    invoke-virtual {v3, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 320
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    goto :goto_3

    .line 311
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    .end local v0    # "equals":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "metadatum":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 32
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v29

    .line 56
    .local v29, "rawText":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .line 57
    .local v23, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 60
    :cond_1
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v24

    .line 61
    .local v24, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v24, :cond_2

    .line 63
    const-string v1, "N"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v24

    .line 64
    invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 66
    :cond_2
    const-string v1, "NICKNAME"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v25

    .line 67
    .local v25, "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v25, :cond_5

    const/4 v3, 0x0

    .line 68
    .local v3, "nicknames":[Ljava/lang/String;
    :goto_1
    const-string v1, "TEL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v28

    .line 69
    .local v28, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "EMAIL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v20

    .line 70
    .local v20, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "NOTE"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v26

    .line 71
    .local v26, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ADR"

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v18

    .line 72
    .local v18, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "ORG"

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v27

    .line 73
    .local v27, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BDAY"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v19

    .line 74
    .local v19, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    const/16 v19, 0x0

    .line 77
    :cond_3
    const-string v1, "TITLE"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v30

    .line 78
    .local v30, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "URL"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v31

    .line 79
    .local v31, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "IMPP"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v22

    .line 80
    .local v22, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "GEO"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v21

    .line 81
    .local v21, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v21, :cond_6

    const/16 v17, 0x0

    .line 82
    .local v17, "geo":[Ljava/lang/String;
    :goto_2
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 83
    const/16 v17, 0x0

    .line 85
    :cond_4
    new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 88
    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    .line 96
    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 97
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 98
    invoke-static/range {v30 .. v30}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 99
    invoke-static/range {v31 .. v31}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v3    # "nicknames":[Ljava/lang/String;
    .end local v17    # "geo":[Ljava/lang/String;
    .end local v18    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v21    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 81
    .restart local v3    # "nicknames":[Ljava/lang/String;
    .restart local v18    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v21    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v17

    goto :goto_2
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method

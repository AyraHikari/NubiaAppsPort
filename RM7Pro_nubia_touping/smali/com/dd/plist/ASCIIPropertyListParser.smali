.class public final Lcom/dd/plist/ASCIIPropertyListParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARRAY_BEGIN_TOKEN:C = '('

.field public static final ARRAY_END_TOKEN:C = ')'

.field public static final ARRAY_ITEM_DELIMITER_TOKEN:C = ','

.field public static final COMMENT_BEGIN_TOKEN:C = '/'

.field public static final DATA_BEGIN_TOKEN:C = '<'

.field public static final DATA_END_TOKEN:C = '>'

.field public static final DATA_GSBOOL_BEGIN_TOKEN:C = 'B'

.field public static final DATA_GSBOOL_FALSE_TOKEN:C = 'N'

.field public static final DATA_GSBOOL_TRUE_TOKEN:C = 'Y'

.field public static final DATA_GSDATE_BEGIN_TOKEN:C = 'D'

.field public static final DATA_GSINT_BEGIN_TOKEN:C = 'I'

.field public static final DATA_GSOBJECT_BEGIN_TOKEN:C = '*'

.field public static final DATA_GSREAL_BEGIN_TOKEN:C = 'R'

.field public static final DATE_APPLE_DATE_TIME_DELIMITER:C = 'T'

.field public static final DATE_APPLE_END_TOKEN:C = 'Z'

.field public static final DATE_DATE_FIELD_DELIMITER:C = '-'

.field public static final DATE_GS_DATE_TIME_DELIMITER:C = ' '

.field public static final DATE_TIME_FIELD_DELIMITER:C = ':'

.field public static final DICTIONARY_ASSIGN_TOKEN:C = '='

.field public static final DICTIONARY_BEGIN_TOKEN:C = '{'

.field public static final DICTIONARY_END_TOKEN:C = '}'

.field public static final DICTIONARY_ITEM_DELIMITER_TOKEN:C = ';'

.field public static final MULTILINE_COMMENT_END_TOKEN:C = '/'

.field public static final MULTILINE_COMMENT_SECOND_TOKEN:C = '*'

.field public static final QUOTEDSTRING_BEGIN_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_END_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_ESCAPE_TOKEN:C = '\\'

.field public static final SINGLELINE_COMMENT_SECOND_TOKEN:C = '/'

.field public static final WHITESPACE_CARRIAGE_RETURN:C = '\r'

.field public static final WHITESPACE_NEWLINE:C = '\n'

.field public static final WHITESPACE_SPACE:C = ' '

.field public static final WHITESPACE_TAB:C = '\t'


# instance fields
.field private final data:[C

.field private index:I


# direct methods
.method private constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    .line 114
    return-void
.end method

.method private accept(C)Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs accept([C)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 265
    .line 266
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p1, v1

    .line 267
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v4, v4, v5

    if-ne v4, v3, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return v0
.end method

.method private varargs acceptSequence([C)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 254
    :goto_1
    return v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private expect(C)V
    .locals 4

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 315
    :cond_0
    return-void
.end method

.method private varargs expect([C)V
    .locals 4

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string v0, "Expected \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 297
    const-string v2, " or \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    const-string v0, " but found \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 303
    :cond_1
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    :try_start_0
    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 131
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_0
    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    :goto_1
    throw v1

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 151
    :try_start_0
    invoke-static {v0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 155
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_0
    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :goto_1
    throw v1

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 187
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x2

    .line 200
    :try_start_0
    array-length v0, p0

    if-le v0, v1, :cond_4

    .line 201
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_0

    .line 202
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_2

    .line 205
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 206
    const-string v0, "UTF-32"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 211
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, -0x11

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x45

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, -0x41

    if-ne v0, v1, :cond_3

    .line 212
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_4

    .line 215
    const-string v0, "UTF-32"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_4
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported property list encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse([BLjava/lang/String;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/dd/plist/ASCIIPropertyListParser;

    invoke-direct {v0, p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;-><init>([BLjava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse()Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method private parseArray()Lcom/dd/plist/NSArray;
    .locals 3

    .prologue
    const/16 v2, 0x29

    .line 492
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 493
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 494
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 495
    :goto_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 498
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 504
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 509
    new-instance v1, Lcom/dd/plist/NSArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/plist/NSObject;

    invoke-direct {v1, v0}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    return-object v1
.end method

.method private parseData()Lcom/dd/plist/NSObject;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/16 v3, 0x3e

    .line 559
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 562
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 563
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 564
    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 565
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 568
    new-array v0, v4, [C

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 569
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    .line 576
    :goto_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 590
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 609
    :goto_2
    return-object v0

    .line 572
    :cond_1
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 577
    :cond_2
    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 579
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 580
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v1

    .line 581
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_3
    new-array v1, v4, [C

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 585
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v1

    .line 586
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 592
    :cond_4
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 593
    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 596
    new-array v3, v0, [B

    move v0, v1

    .line 597
    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 598
    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 599
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 600
    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 603
    :cond_5
    new-instance v0, Lcom/dd/plist/NSData;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSData;-><init>([B)V

    .line 606
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_2

    .line 564
    :array_0
    .array-data 2
        0x42s
        0x44s
        0x49s
        0x52s
    .end array-data

    .line 568
    :array_1
    .array-data 2
        0x59s
        0x4es
    .end array-data

    .line 582
    :array_2
    .array-data 2
        0x49s
        0x52s
    .end array-data
.end method

.method private parseDateString()Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 618
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 621
    :try_start_0
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-object v0

    .line 622
    :catch_0
    move-exception v0

    .line 627
    :cond_0
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseDictionary()Lcom/dd/plist/NSDictionary;
    .locals 3

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 521
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 522
    new-instance v1, Lcom/dd/plist/NSDictionary;

    invoke-direct {v1}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 523
    :goto_0
    const/16 v0, 0x7d

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 535
    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 536
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 538
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 539
    invoke-virtual {v1, v0, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 540
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 541
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    .line 542
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    goto :goto_0

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 548
    return-object v1
.end method

.method private static parseEscapedSequence(Ljava/text/StringCharacterIterator;)C
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 720
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    .line 721
    sparse-switch v0, :sswitch_data_0

    .line 769
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The property list contains a string with an invalid escape sequence: \\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :sswitch_0
    move v0, v1

    .line 761
    :goto_0
    :sswitch_1
    return v0

    .line 730
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 732
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 734
    :sswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 740
    :sswitch_5
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [C

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v4

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v5

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v6

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v3

    aput-char v3, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 742
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v2

    .line 745
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The property list contains a string with an invalid escape sequence: \\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-direct {v2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 759
    :sswitch_6
    new-instance v1, Ljava/lang/String;

    new-array v2, v7, [C

    aput-char v0, v2, v4

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    aput-char v0, v2, v5

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    aput-char v0, v2, v6

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 761
    const/16 v0, 0x8

    :try_start_1
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 763
    :catch_1
    move-exception v0

    .line 764
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The property list contains a string with an invalid escape sequence: \\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 721
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x55 -> :sswitch_5
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_5
    .end sparse-switch
.end method

.method private parseObject()Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 473
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseDateString()Lcom/dd/plist/NSObject;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 449
    :sswitch_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseArray()Lcom/dd/plist/NSArray;

    move-result-object v0

    goto :goto_0

    .line 452
    :sswitch_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseDictionary()Lcom/dd/plist/NSDictionary;

    move-result-object v0

    goto :goto_0

    .line 455
    :sswitch_2
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseData()Lcom/dd/plist/NSObject;

    move-result-object v0

    goto :goto_0

    .line 458
    :sswitch_3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    .line 462
    :try_start_0
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 465
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private parseQuotedString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x5c

    .line 650
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 654
    :goto_0
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v3, v3, v4

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    if-ne v3, v5, :cond_4

    if-eqz v0, :cond_4

    .line 655
    :cond_0
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-direct {p0, v5}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 657
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    if-ne v3, v5, :cond_1

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    .line 660
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 657
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 665
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 675
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    .line 677
    return-object v0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 670
    :catch_1
    move-exception v0

    .line 671
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "A quoted string could not be parsed."

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static declared-synchronized parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 689
    const-class v1, Lcom/dd/plist/ASCIIPropertyListParser;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 694
    :goto_0
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->getIndex()I

    move-result v4

    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->getEndIndex()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 695
    packed-switch v0, :pswitch_data_0

    .line 701
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 697
    :pswitch_0
    invoke-static {v3}, Lcom/dd/plist/ASCIIPropertyListParser;->parseEscapedSequence(Ljava/text/StringCharacterIterator;)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 709
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private parseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xds
        0x2cs
        0x3bs
        0x3ds
        0x29s
    .end array-data
.end method

.method private read(C)V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->expect(C)V

    .line 325
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 326
    return-void
.end method

.method private readInputUntil(C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs readInputUntil([C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    :goto_0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 333
    return-void
.end method

.method private skip(I)V
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 342
    return-void
.end method

.method private skipWhitespacesAndComments()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_0

    .line 358
    :cond_1
    new-array v2, v3, [C

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 360
    new-array v0, v3, [C

    fill-array-data v0, :array_2

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    move v0, v1

    .line 378
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 379
    return-void

    .line 365
    :cond_3
    new-array v2, v3, [C

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 368
    :goto_2
    new-array v0, v3, [C

    fill-array-data v0, :array_4

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->acceptSequence([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    move v0, v1

    .line 375
    goto :goto_1

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    goto :goto_2

    .line 353
    nop

    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
        0x9s
    .end array-data

    .line 358
    :array_1
    .array-data 2
        0x2fs
        0x2fs
    .end array-data

    .line 360
    :array_2
    .array-data 2
        0xds
        0xas
    .end array-data

    .line 365
    :array_3
    .array-data 2
        0x2fs
        0x2as
    .end array-data

    .line 368
    :array_4
    .array-data 2
        0x2as
        0x2fs
    .end array-data
.end method


# virtual methods
.method public parse()Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iput v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    .line 421
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    array-length v0, v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The property list is empty."

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[C

    aget-char v0, v0, v2

    const v1, 0xfeff

    if-ne v0, v1, :cond_1

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip(I)V

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespacesAndComments()V

    .line 431
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Reached end of input unexpectedly."

    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 431
    nop

    :array_0
    .array-data 2
        0x7bs
        0x28s
        0x2fs
    .end array-data
.end method

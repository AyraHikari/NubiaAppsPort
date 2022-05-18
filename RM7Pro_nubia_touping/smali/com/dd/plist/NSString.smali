.class public Lcom/dd/plist/NSString;
.super Lcom/dd/plist/NSObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dd/plist/NSObject;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static asciiEncoder:Ljava/nio/charset/CharsetEncoder;

.field private static utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

.field private static utf8Encoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/String;

    sub-int v1, p3, p2

    invoke-direct {v0, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/dd/plist/NSString;-><init>([BIILjava/lang/String;)V

    .line 56
    return-void
.end method

.method static escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_8

    aget-char v0, v3, v1

    .line 349
    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    .line 351
    const-string v5, "\\U"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 355
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 356
    :cond_1
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_2

    .line 357
    const-string v0, "\\\\"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 358
    :cond_2
    const/16 v5, 0x22

    if-ne v0, v5, :cond_3

    .line 359
    const-string v0, "\\\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 360
    :cond_3
    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    .line 361
    const-string v0, "\\b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 362
    :cond_4
    const/16 v5, 0xa

    if-ne v0, v5, :cond_5

    .line 363
    const-string v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 364
    :cond_5
    const/16 v5, 0xd

    if-ne v0, v5, :cond_6

    .line 365
    const-string v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    :cond_6
    const/16 v5, 0x9

    if-ne v0, v5, :cond_7

    .line 367
    const-string v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 369
    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 372
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Lcom/dd/plist/NSString;)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/plist/NSString;->append(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public boolValue()Z
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    move-result-object v0

    .line 168
    const-string v1, "([+-]?[0]*)?[YyTt1-9].*"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->clone()Lcom/dd/plist/NSString;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/dd/plist/NSString;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/dd/plist/NSString;

    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->clone()Lcom/dd/plist/NSString;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 331
    instance-of v0, p1, Lcom/dd/plist/NSString;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/dd/plist/NSString;

    invoke-virtual {p1}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 333
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    move-result-object v0

    const-string v1, "[^0-9.+-]+"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextDouble()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v0

    .line 140
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    check-cast p1, Lcom/dd/plist/NSString;

    iget-object v1, p1, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->doubleValue()D

    move-result-wide v0

    .line 116
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 124
    :goto_0
    return v0

    .line 120
    :cond_0
    const-wide v2, -0x3810000020000000L    # -3.4028234663852886E38

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 121
    const v0, -0x800001

    goto :goto_0

    .line 124
    :cond_1
    double-to-float v0, v0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/dd/plist/NSString;->doubleValue()D

    move-result-wide v0

    .line 93
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 94
    const v0, 0x7fffffff

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 98
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 101
    :cond_1
    double-to-int v0, v0

    goto :goto_0
.end method

.method public prepend(Lcom/dd/plist/NSString;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/plist/NSString;->prepend(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public prepend(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    .line 187
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    .line 313
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    .line 325
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    return-void
.end method

.method public toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 285
    const-class v2, Lcom/dd/plist/NSString;

    monitor-enter v2

    .line 286
    :try_start_0
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v1, :cond_0

    .line 287
    const-string v1, "ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sput-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 291
    :goto_0
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const/4 v1, 0x5

    .line 293
    sget-object v3, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 303
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 305
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 306
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 307
    invoke-virtual {p1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 308
    return-void

    .line 289
    :cond_0
    :try_start_1
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 295
    :cond_1
    :try_start_2
    sget-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v1, :cond_2

    .line 296
    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sput-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 300
    :goto_2
    const/4 v1, 0x6

    .line 301
    sget-object v3, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 298
    :cond_2
    sget-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    .line 248
    const-string v0, "<string>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-class v1, Lcom/dd/plist/NSString;

    monitor-enter v1

    .line 252
    :try_start_0
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    .line 253
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 260
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 261
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    :cond_0
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    const-string v1, "]]>"

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_1
    const-string v0, "</string>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    return-void

    .line 255
    :cond_1
    :try_start_3
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not encode the NSString into UTF-8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

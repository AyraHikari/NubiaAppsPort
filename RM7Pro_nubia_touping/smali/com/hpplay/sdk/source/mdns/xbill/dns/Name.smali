.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXLABELS:I = 0x80

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x7

.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 19
    new-array v0, v4, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->emptyLabel:[B

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wildLabel:[B

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    .line 736
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move v0, v1

    .line 738
    :goto_0
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 739
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 740
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 738
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    goto :goto_1

    .line 746
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 747
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->emptyLabel:[B

    invoke-direct {v0, v2, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendSafe([BII)V

    .line 748
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->empty:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 749
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->empty:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 750
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wild:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 751
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wild:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wildLabel:[B

    invoke-direct {v0, v2, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendSafe([BII)V

    .line 752
    return-void

    .line 20
    nop

    :array_0
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/16 v0, 0x40

    new-array v4, v0, [B

    move v0, v3

    move v2, v3

    .line 285
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 286
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v5

    .line 287
    and-int/lit16 v6, v5, 0xc0

    sparse-switch v6, :sswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bad label type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :sswitch_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v6

    const/16 v7, 0x80

    if-lt v6, v7, :cond_1

    .line 290
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "too many labels"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    if-nez v5, :cond_2

    .line 294
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->emptyLabel:[B

    invoke-direct {p0, v2, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V

    move v2, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    int-to-byte v6, v5

    aput-byte v6, v4, v3

    .line 298
    invoke-virtual {p1, v4, v1, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray([BII)V

    .line 299
    invoke-direct {p0, v4, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V

    goto :goto_0

    .line 303
    :sswitch_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v6

    .line 304
    and-int/lit16 v5, v5, -0xc1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    .line 305
    const-string v6, "verbosecompression"

    invoke-static {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->current()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pointer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->current()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-lt v5, v6, :cond_4

    .line 310
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bad compression"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_4
    if-nez v0, :cond_5

    .line 314
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->save()V

    move v0, v1

    .line 318
    :cond_5
    invoke-virtual {p1, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->jump(I)V

    .line 319
    const-string v6, "verbosecompression"

    invoke-static {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', seeking to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_6
    if-eqz v0, :cond_7

    .line 329
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->restore()V

    .line 332
    :cond_7
    return-void

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    .line 340
    if-le p2, v1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempted to remove too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 344
    sub-int v0, v1, p2

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setlabels(I)V

    .line 346
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sub-int v2, v1, p2

    if-ge v0, v2, :cond_1

    .line 347
    add-int v2, v0, p2

    invoke-direct {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setoffset(II)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 11

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "empty name"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 164
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    if-nez p2, :cond_2

    .line 166
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->empty:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    invoke-static {p2, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_0

    .line 174
    :cond_4
    const/4 v5, -0x1

    .line 175
    const/4 v4, 0x1

    .line 176
    const/16 v0, 0x40

    new-array v9, v0, [B

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v2, 0x0

    .line 179
    const/4 v1, 0x0

    .line 180
    const/4 v7, 0x0

    .line 182
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_d

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v8, v6

    .line 184
    if-nez v3, :cond_9

    .line 185
    const/16 v6, 0x5c

    if-ne v8, v6, :cond_6

    .line 186
    const/4 v3, 0x1

    .line 187
    const/4 v2, 0x0

    .line 188
    const/4 v1, 0x0

    .line 182
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_6
    const/16 v6, 0x2e

    if-ne v8, v6, :cond_7

    .line 193
    const/4 v5, 0x0

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v9, v5

    .line 194
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v9, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 195
    const/4 v5, -0x1

    .line 196
    const/4 v4, 0x1

    goto :goto_2

    .line 198
    :cond_7
    const/4 v6, -0x1

    if-ne v5, v6, :cond_12

    move v6, v0

    .line 201
    :goto_3
    const/16 v5, 0x3f

    if-le v4, v5, :cond_8

    .line 202
    const-string v0, "label too long"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 205
    :cond_8
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v9, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    .line 208
    :cond_9
    const/16 v6, 0x30

    if-lt v8, v6, :cond_b

    const/16 v6, 0x39

    if-gt v8, v6, :cond_b

    const/4 v6, 0x3

    if-ge v2, v6, :cond_b

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    mul-int/lit8 v1, v1, 0xa

    .line 211
    add-int/lit8 v6, v8, -0x30

    add-int/2addr v1, v6

    .line 212
    const/16 v6, 0xff

    if-le v1, v6, :cond_a

    .line 213
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 216
    :cond_a
    const/4 v6, 0x3

    if-lt v2, v6, :cond_5

    .line 220
    int-to-byte v3, v1

    .line 225
    :goto_4
    const/16 v5, 0x3f

    if-le v4, v5, :cond_c

    .line 226
    const-string v0, "label too long"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 221
    :cond_b
    if-lez v2, :cond_11

    const/4 v3, 0x3

    if-ge v2, v3, :cond_11

    .line 222
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 230
    :cond_c
    add-int/lit8 v5, v4, 0x1

    aput-byte v3, v9, v4

    .line 231
    const/4 v3, 0x0

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_2

    .line 235
    :cond_d
    if-lez v2, :cond_e

    const/4 v0, 0x3

    if-ge v2, v0, :cond_e

    .line 236
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 237
    :cond_e
    if-eqz v3, :cond_f

    .line 238
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 240
    :cond_f
    const/4 v0, -0x1

    if-ne v5, v0, :cond_10

    .line 241
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->emptyLabel:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 242
    const/4 v0, 0x1

    .line 248
    :goto_5
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    invoke-direct {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto/16 :goto_0

    .line 244
    :cond_10
    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v9, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendFromString(Ljava/lang/String;[BII)V

    move v0, v7

    goto :goto_5

    :cond_11
    move v3, v8

    goto :goto_4

    :cond_12
    move v6, v5

    goto/16 :goto_3
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 336
    return-void
.end method

.method private final append([BII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v2, p2

    move v3, v1

    move v4, v1

    .line 100
    :goto_1
    if-ge v3, p3, :cond_2

    .line 101
    aget-byte v5, p1, v2

    .line 102
    const/16 v6, 0x3f

    if-le v5, v6, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 106
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 107
    add-int/2addr v2, v5

    .line 108
    add-int/2addr v4, v5

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_2
    add-int v2, v0, v4

    .line 112
    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 113
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v3

    .line 116
    add-int v5, v3, p3

    .line 117
    const/16 v6, 0x80

    if-le v5, v6, :cond_4

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_4
    new-array v2, v2, [B

    .line 121
    if-eqz v0, :cond_5

    .line 122
    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v7

    invoke-static {v6, v7, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_5
    invoke-static {p1, p2, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 129
    :goto_2
    if-ge v1, p3, :cond_6

    .line 130
    add-int v4, v3, v1

    invoke-direct {p0, v4, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setoffset(II)V

    .line 131
    aget-byte v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_6
    invoke-direct {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setlabels(I)V

    .line 137
    return-void
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v0, "Name too long"

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private final appendSafe([BII)V
    .locals 1

    .prologue
    .line 153
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5c

    .line 485
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    move v0, v1

    .line 488
    :goto_0
    add-int v4, v1, v3

    if-ge v0, v4, :cond_2

    .line 489
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 490
    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_1

    .line 491
    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    const/16 v5, 0x28

    if-eq v4, v5, :cond_0

    const/16 v5, 0x29

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_0

    if-eq v4, v8, :cond_0

    const/16 v5, 0x40

    if-eq v4, v5, :cond_0

    const/16 v5, 0x24

    if-eq v4, v5, :cond_0

    .line 492
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 498
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    sget-object v5, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenate(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-object p0

    .line 357
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    .line 358
    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 359
    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V

    move-object p0, v0

    .line 360
    goto :goto_0
.end method

.method private static final copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iput-object v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 76
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    iput-wide v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    .line 91
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 80
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v3

    .line 81
    new-array v4, v2, [B

    iput-object v4, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 82
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iget-object v5, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :goto_1
    if-ge v0, v3, :cond_1

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 85
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setoffset(II)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    invoke-direct {p1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setlabels(I)V

    goto :goto_0
.end method

.method private final equals([BI)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v6

    .line 645
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    .line 646
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v1, v1, v2

    aget-byte v3, p1, p2

    if-eq v1, v3, :cond_1

    .line 663
    :cond_0
    :goto_1
    return v0

    .line 650
    :cond_1
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, v3, v2

    .line 651
    add-int/lit8 v2, p2, 0x1

    .line 652
    const/16 v3, 0x3f

    if-le v7, v3, :cond_2

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v2

    move v2, v1

    move v1, v0

    .line 656
    :goto_2
    if-ge v1, v7, :cond_3

    .line 657
    sget-object v8, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v9, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v8, v8, v2

    sget-object v9, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v9, v4

    if-ne v8, v4, :cond_0

    .line 656
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move v2, v3

    goto :goto_2

    .line 645
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move p2, v4

    goto :goto_0

    .line 663
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 261
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 264
    :goto_0
    return-object p1

    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_1
.end method

.method private final getlabels()I
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .locals 5

    .prologue
    const/4 v0, 0x6

    .line 43
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const/4 v0, 0x0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    if-ltz p1, :cond_3

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 47
    const/4 v1, 0x7

    if-ge p1, v1, :cond_2

    .line 48
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 49
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    ushr-long v0, v2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    move v4, v0

    move v0, v1

    move v1, v4

    .line 53
    :goto_1
    if-ge v1, p1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    .line 66
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    .line 67
    return-void
.end method

.method private final setoffset(II)V
    .locals 8

    .prologue
    .line 35
    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 36
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 37
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    const-wide/16 v4, 0xff

    shl-long/2addr v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    .line 38
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    int-to-long v4, p2

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offsets:J

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public canonicalize()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 395
    const/4 v2, 0x1

    move v0, v1

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 398
    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 404
    :goto_1
    if-eqz v0, :cond_1

    .line 414
    :goto_2
    return-object p0

    .line 397
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v3

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->appendSafe([BII)V

    .line 410
    :goto_3
    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 411
    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move-object p0, v0

    .line 414
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 705
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 706
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 731
    :goto_0
    return v0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v2

    .line 710
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    .line 711
    if-le v2, v1, :cond_1

    move v0, v1

    .line 713
    :goto_1
    const/4 v4, 0x1

    move v6, v4

    :goto_2
    if-gt v6, v0, :cond_5

    .line 714
    sub-int v4, v2, v6

    invoke-direct {p0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v7

    .line 715
    sub-int v4, v1, v6

    invoke-direct {p1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v8

    .line 716
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v9, v4, v7

    .line 717
    iget-object v4, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v10, v4, v8

    move v5, v3

    .line 719
    :goto_3
    if-ge v5, v9, :cond_3

    if-ge v5, v10, :cond_3

    .line 720
    sget-object v4, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v11, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v4, v4, v11

    sget-object v11, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v12, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int v13, v5, v8

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget-byte v11, v11, v12

    sub-int/2addr v4, v11

    .line 721
    if-eqz v4, :cond_2

    move v0, v4

    .line 722
    goto :goto_0

    :cond_1
    move v0, v2

    .line 711
    goto :goto_1

    .line 719
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 726
    :cond_3
    if-eq v9, v10, :cond_4

    .line 727
    sub-int v0, v9, v10

    goto :goto_0

    .line 713
    :cond_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 731
    :cond_5
    sub-int v0, v2, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 667
    if-ne p1, p0, :cond_1

    .line 668
    const/4 v0, 0x1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v1, :cond_0

    .line 670
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 671
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    if-nez v1, :cond_2

    .line 672
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashCode()I

    .line 675
    :cond_2
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    if-nez v1, :cond_3

    .line 676
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashCode()I

    .line 679
    :cond_3
    iget v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    if-ne v1, v2, :cond_0

    .line 682
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public fromDNAME(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 420
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNAMERecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    .line 421
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    const/4 v0, 0x0

    .line 444
    :cond_0
    return-object v0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v4

    sub-int/2addr v3, v4

    .line 425
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v4

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v0

    sub-int/2addr v4, v0

    .line 426
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v5

    .line 427
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v6

    .line 428
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v7

    .line 429
    add-int v0, v4, v7

    const/16 v8, 0xff

    if-le v0, v8, :cond_2

    .line 430
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 432
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    .line 433
    add-int v8, v3, v6

    invoke-direct {v0, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setlabels(I)V

    .line 434
    add-int v8, v4, v7

    new-array v8, v8, [B

    iput-object v8, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 435
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iget-object v9, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-static {v8, v5, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget-object v2, v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-static {v2, v1, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    .line 439
    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    add-int v4, v3, v6

    if-ge v2, v4, :cond_0

    .line 440
    invoke-direct {v0, v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setoffset(II)V

    .line 441
    iget-object v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLabel(I)[B
    .locals 5

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 548
    new-array v2, v1, [B

    .line 549
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    return-object v2
.end method

.method public getLabelString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 690
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    if-eqz v0, :cond_0

    .line 691
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    .line 700
    :goto_0
    return v0

    .line 695
    :cond_0
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 696
    shl-int/lit8 v2, v1, 0x3

    sget-object v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 699
    :cond_1
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    .line 700
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->hashcode:I

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    .line 459
    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    aget-byte v1, v2, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWild()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v2

    if-nez v2, :cond_0

    .line 453
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v2, v2, v1

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public labels()I
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v1, v1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    sub-int v0, v1, v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public relativize(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    .line 367
    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 368
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    .line 369
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v2

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 370
    invoke-direct {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->setlabels(I)V

    .line 371
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    .line 372
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v3

    iget-object v4, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 375
    :cond_0
    return-object p0
.end method

.method public subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v0

    .line 476
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    .line 477
    if-le v1, v0, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v2

    .line 508
    if-nez v2, :cond_0

    .line 509
    const-string v0, "@"

    .line 537
    :goto_0
    return-object v0

    .line 510
    :cond_0
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v3

    aget-byte v0, v0, v3

    if-nez v0, :cond_1

    .line 511
    const-string v0, "."

    goto :goto_0

    .line 513
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 517
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v4, v4, v0

    .line 518
    const/16 v5, 0x3f

    if-le v4, v5, :cond_2

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_2
    if-nez v4, :cond_4

    .line 523
    if-nez p1, :cond_3

    .line 524
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_4
    if-lez v1, :cond_5

    .line 530
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    :cond_5
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, v5, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 559
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toWire() called on non-absolute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v4

    move v2, v3

    .line 564
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_5

    .line 566
    if-nez v2, :cond_2

    move-object v1, p0

    .line 572
    :goto_1
    const/4 v0, -0x1

    .line 573
    if-eqz p2, :cond_1

    .line 574
    invoke-virtual {p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->get(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)I

    move-result v0

    .line 577
    :cond_1
    if-ltz v0, :cond_3

    .line 578
    const v1, 0xc000

    or-int/2addr v0, v1

    .line 579
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 593
    :goto_2
    return-void

    .line 569
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    move-object v1, v0

    goto :goto_1

    .line 583
    :cond_3
    if-eqz p2, :cond_4

    .line 584
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;->add(ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 587
    :cond_4
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v1, v0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([BII)V

    .line 564
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 591
    :cond_5
    invoke-virtual {p1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    goto :goto_2
.end method

.method public toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 0

    .prologue
    .line 633
    if-eqz p3, :cond_0

    .line 634
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 639
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    goto :goto_0
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 596
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 597
    const/4 v0, 0x0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;)V

    .line 598
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWireCanonical()[B

    move-result-object v0

    .line 603
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 604
    return-void
.end method

.method public toWireCanonical()[B
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v8

    .line 608
    if-nez v8, :cond_1

    .line 609
    new-array v0, v2, [B

    .line 628
    :cond_0
    return-object v0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 613
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v5

    move v4, v2

    move v7, v2

    .line 615
    :goto_0
    if-ge v7, v8, :cond_0

    .line 616
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    aget-byte v9, v1, v5

    .line 617
    const/16 v1, 0x3f

    if-le v9, v1, :cond_2

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_2
    add-int/lit8 v1, v4, 0x1

    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v6, v5

    aput-byte v5, v0, v4

    move v5, v3

    move v3, v1

    move v1, v2

    .line 623
    :goto_1
    if-ge v1, v9, :cond_3

    .line 624
    add-int/lit8 v4, v3, 0x1

    sget-object v10, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->lowercase:[B

    iget-object v11, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v10, v5

    aput-byte v5, v0, v3

    .line 623
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move v5, v6

    goto :goto_1

    .line 615
    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v4, v3

    move v7, v1

    goto :goto_0
.end method

.method public wild(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 4

    .prologue
    .line 380
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must replace 1 or more labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>()V

    .line 385
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->wild:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->copy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 386
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->name:[B

    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->offset(I)I

    move-result v2

    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getlabels()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name.wild: concatenate failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

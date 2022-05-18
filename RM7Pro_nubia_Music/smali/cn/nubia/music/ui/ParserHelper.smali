.class public Lcn/nubia/music/ui/ParserHelper;
.super Ljava/lang/Object;
.source "ParserHelper.java"


# static fields
.field private static final pow10:[D


# instance fields
.field private current:C

.field private n:I

.field public pos:I

.field private s:Ljava/lang/CharSequence;

.field private sacled:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 379
    const/16 v0, 0x80

    new-array v0, v0, [D

    sput-object v0, Lcn/nubia/music/ui/ParserHelper;->pow10:[D

    .line 382
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/nubia/music/ui/ParserHelper;->pow10:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 383
    sget-object v1, Lcn/nubia/music/ui/ParserHelper;->pow10:[D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IF)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/music/ui/ParserHelper;->s:Ljava/lang/CharSequence;

    .line 37
    iput p3, p0, Lcn/nubia/music/ui/ParserHelper;->sacled:F

    .line 38
    iput p2, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/ParserHelper;->n:I

    .line 40
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 41
    return-void
.end method

.method public static buildFloat(II)F
    .locals 4

    .prologue
    .line 357
    const/16 v0, -0x7d

    if-lt p1, v0, :cond_0

    if-nez p0, :cond_1

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    .line 361
    :cond_1
    const/16 v0, 0x80

    if-lt p1, v0, :cond_3

    .line 362
    if-lez p0, :cond_2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_2
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 365
    :cond_3
    if-nez p1, :cond_4

    .line 366
    int-to-float v0, p0

    goto :goto_0

    .line 369
    :cond_4
    const/high16 v0, 0x4000000

    if-lt p0, v0, :cond_5

    .line 370
    add-int/lit8 p0, p0, 0x1

    .line 373
    :cond_5
    if-lez p1, :cond_6

    int-to-double v0, p0

    sget-object v2, Lcn/nubia/music/ui/ParserHelper;->pow10:[D

    aget-wide v2, v2, p1

    mul-double/2addr v0, v2

    :goto_1
    double-to-float v0, v0

    goto :goto_0

    :cond_6
    int-to-double v0, p0

    sget-object v2, Lcn/nubia/music/ui/ParserHelper;->pow10:[D

    neg-int v3, p1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    goto :goto_1
.end method

.method private read()C
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    .line 47
    :cond_0
    iget v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->n:I

    if-ne v0, v1, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private reportUnexpectedCharacterError(C)V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v0

    iput-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 82
    return-void
.end method

.method public nextFloat()F
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcn/nubia/music/ui/ParserHelper;->skipWhitespace()V

    .line 389
    invoke-virtual {p0}, Lcn/nubia/music/ui/ParserHelper;->parseFloat()F

    move-result v0

    .line 390
    invoke-virtual {p0}, Lcn/nubia/music/ui/ParserHelper;->skipNumberSeparator()V

    .line 391
    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->sacled:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public parseFloat()F
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 88
    .line 98
    iget-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 106
    :goto_0
    iget-char v3, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v3, :pswitch_data_1

    .line 108
    :pswitch_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 346
    :goto_1
    return v0

    :pswitch_2
    move v0, v1

    .line 103
    :goto_2
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v3

    iput-char v3, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    goto :goto_0

    :pswitch_3
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    .line 173
    :goto_3
    iget-char v8, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    .line 174
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 175
    iget-char v8, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_2

    .line 179
    if-nez v4, :cond_2

    .line 180
    iget-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/ParserHelper;->reportUnexpectedCharacterError(C)V

    move v0, v7

    .line 181
    goto :goto_1

    .line 116
    :pswitch_4
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v3

    iput-char v3, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 117
    iget-char v3, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    sparse-switch v3, :sswitch_data_0

    move v0, v7

    .line 133
    goto :goto_1

    :sswitch_1
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v1

    .line 131
    goto :goto_3

    :pswitch_5
    :sswitch_2
    move v3, v1

    move v4, v1

    move v5, v1

    .line 149
    :pswitch_6
    if-ge v4, v10, :cond_0

    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    mul-int/lit8 v5, v5, 0xa

    iget-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    .line 155
    :goto_4
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v6

    iput-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 156
    iget-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v6, :pswitch_data_3

    move v6, v5

    move v5, v4

    move v4, v2

    .line 158
    goto :goto_3

    .line 153
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 186
    :pswitch_7
    if-nez v5, :cond_6

    .line 188
    :pswitch_8
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 189
    add-int/lit8 v3, v3, -0x1

    .line 190
    iget-char v8, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_4

    .line 202
    if-nez v4, :cond_2

    move v0, v7

    .line 203
    goto :goto_1

    :pswitch_9
    move v4, v5

    move v5, v6

    .line 220
    :goto_5
    :pswitch_a
    if-ge v4, v10, :cond_1

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    mul-int/lit8 v5, v5, 0xa

    iget-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    .line 223
    add-int/lit8 v3, v3, -0x1

    .line 225
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v6

    iput-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 226
    iget-char v6, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v6, :pswitch_data_5

    move v6, v5

    .line 244
    :cond_2
    iget-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    sparse-switch v4, :sswitch_data_1

    .line 338
    :goto_6
    if-nez v2, :cond_3

    .line 339
    neg-int v1, v1

    .line 341
    :cond_3
    add-int/2addr v1, v3

    .line 342
    if-nez v0, :cond_4

    .line 343
    neg-int v6, v6

    .line 346
    :cond_4
    invoke-static {v6, v1}, Lcn/nubia/music/ui/ParserHelper;->buildFloat(II)F

    move-result v0

    goto/16 :goto_1

    .line 247
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v4

    iput-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 248
    iget-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v4, :pswitch_data_6

    .line 250
    :pswitch_b
    iget-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/ParserHelper;->reportUnexpectedCharacterError(C)V

    move v0, v7

    .line 251
    goto/16 :goto_1

    :pswitch_c
    move v2, v1

    .line 255
    :pswitch_d
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v4

    iput-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 256
    iget-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v4, :pswitch_data_7

    .line 258
    iget-char v0, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/ParserHelper;->reportUnexpectedCharacterError(C)V

    move v0, v7

    .line 259
    goto/16 :goto_1

    .line 283
    :pswitch_e
    iget-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v4, :pswitch_data_8

    goto :goto_6

    .line 286
    :pswitch_f
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v4

    iput-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 287
    iget-char v4, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v4, :pswitch_data_9

    goto :goto_6

    :pswitch_10
    move v4, v1

    .line 314
    :goto_7
    :pswitch_11
    const/4 v5, 0x3

    if-ge v1, v5, :cond_5

    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 316
    mul-int/lit8 v4, v4, 0xa

    iget-char v5, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    .line 318
    :cond_5
    invoke-direct {p0}, Lcn/nubia/music/ui/ParserHelper;->read()C

    move-result v5

    iput-char v5, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    .line 319
    iget-char v5, p0, Lcn/nubia/music/ui/ParserHelper;->current:C

    packed-switch v5, :pswitch_data_a

    move v1, v4

    .line 321
    goto :goto_6

    :pswitch_12
    move v4, v1

    goto :goto_7

    :cond_6
    :pswitch_13
    move v4, v5

    move v5, v6

    goto/16 :goto_5

    :pswitch_14
    move v0, v2

    goto/16 :goto_2

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_14
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 175
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x30 -> :sswitch_0
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch

    .line 156
    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 190
    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 226
    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 244
    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch

    .line 248
    :pswitch_data_6
    .packed-switch 0x2b
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 256
    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 283
    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    .line 287
    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 319
    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public skipNumberSeparator()V
    .locals 2

    .prologue
    .line 65
    :goto_0
    iget v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/music/ui/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 67
    sparse-switch v0, :sswitch_data_0

    .line 78
    :cond_0
    return-void

    .line 72
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/ParserHelper;->advance()V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public skipWhitespace()V
    .locals 2

    .prologue
    .line 55
    :goto_0
    iget v0, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/music/ui/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/music/ui/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcn/nubia/music/ui/ParserHelper;->advance()V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.class public Lorg/joda/time/tz/DateTimeZoneBuilder;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    }
.end annotation


# instance fields
.field private final iRuleSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method private addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ">;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 403
    if-nez v3, :cond_1

    .line 405
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 410
    invoke-virtual {p2, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 419
    add-int/lit8 v1, v3, -0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v1

    .line 421
    :cond_2
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v4

    .line 423
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v6

    int-to-long v0, v1

    add-long/2addr v0, v6

    .line 424
    invoke-virtual {p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v6

    int-to-long v4, v4

    add-long/2addr v4, v6

    .line 426
    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 429
    goto :goto_0

    .line 431
    :cond_3
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 432
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->withMillis(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v0

    .line 436
    invoke-direct {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v1

    goto :goto_0
.end method

.method private static buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 215
    const-string v0, "UTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 217
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 320
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/high16 v1, -0x80000000

    const/16 v2, 0x77

    move-object v0, p0

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    return-object v0
.end method

.method public static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :sswitch_0
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :sswitch_1
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object v0

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x46 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public static readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v0, p0, Ljava/io/DataInput;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Ljava/io/DataInput;

    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method static readMillis(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 184
    shr-int/lit8 v1, v0, 0x6

    packed-switch v1, :pswitch_data_0

    .line 187
    shl-int/lit8 v0, v0, 0x1a

    shr-int/lit8 v0, v0, 0x1a

    .line 188
    int-to-long v0, v0

    const-wide/32 v2, 0x1b7740

    mul-long/2addr v0, v2

    .line 209
    :goto_0
    return-wide v0

    .line 192
    :pswitch_0
    shl-int/lit8 v0, v0, 0x1a

    shr-int/lit8 v0, v0, 0x2

    .line 193
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 194
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 195
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    .line 196
    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    goto :goto_0

    .line 200
    :pswitch_1
    int-to-long v0, v0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    const/16 v2, 0x1a

    shr-long/2addr v0, v2

    .line 201
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 202
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 203
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 204
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 205
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static writeMillis(Ljava/io/DataOutput;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3f

    const/16 v8, 0x3a

    const/16 v7, 0x22

    const/16 v6, 0x1a

    const-wide/16 v4, 0x0

    .line 140
    const-wide/32 v0, 0x1b7740

    rem-long v0, p1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 142
    const-wide/32 v0, 0x1b7740

    div-long v0, p1, v0

    .line 143
    shl-long v2, v0, v8

    shr-long/2addr v2, v8

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 145
    and-long/2addr v0, v10

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    const-wide/32 v0, 0xea60

    rem-long v0, p1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 152
    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    .line 153
    shl-long v2, v0, v7

    shr-long/2addr v2, v7

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 155
    const/high16 v2, 0x40000000    # 2.0f

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    or-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 160
    :cond_1
    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 162
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 163
    shl-long v2, v0, v6

    shr-long/2addr v2, v6

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 165
    const/16 v2, 0x20

    shr-long v2, v0, v2

    and-long/2addr v2, v10

    long-to-int v2, v2

    or-int/lit16 v2, v2, 0x80

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 166
    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 175
    :cond_2
    cmp-long v0, p1, v4

    if-gez v0, :cond_3

    const/16 v0, 0xff

    :goto_1
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 176
    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    .line 175
    :cond_3
    const/16 v0, 0xc0

    goto :goto_1
.end method


# virtual methods
.method public addCutover(ICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 7

    .prologue
    .line 252
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    .line 255
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    .line 256
    invoke-virtual {v1, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-object p0
.end method

.method public addRecurringSavings(Ljava/lang/String;IIICIIIZI)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 7

    .prologue
    .line 309
    if-gt p3, p4, :cond_0

    .line 310
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    .line 312
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-direct {v1, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;Ljava/lang/String;I)V

    .line 313
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    invoke-direct {v0, v1, p3, p4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;II)V

    .line 314
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V

    .line 316
    :cond_0
    return-object p0
.end method

.method public setFixedSavings(Ljava/lang/String;I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setFixedSavings(Ljava/lang/String;I)V

    .line 277
    return-object p0
.end method

.method public setStandardOffset(I)Lorg/joda/time/tz/DateTimeZoneBuilder;
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->getLastRuleSet()Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->setStandardOffset(I)V

    .line 269
    return-object p0
.end method

.method public toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 339
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 343
    const/4 v4, 0x0

    .line 345
    const-wide/high16 v2, -0x8000000000000000L

    .line 348
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v6

    .line 349
    :goto_0
    if-ge v5, v8, :cond_5

    .line 350
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->iRuleSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    .line 351
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v1

    .line 352
    if-nez v1, :cond_1

    move-wide v0, v2

    .line 349
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0, v7, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    .line 356
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    .line 357
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v1

    .line 360
    new-instance v9, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;

    invoke-direct {v9, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;-><init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V

    move v0, v1

    move-object v1, v4

    .line 362
    :cond_2
    :goto_2
    invoke-virtual {v9, v2, v3, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 363
    invoke-direct {p0, v7, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder;->addTransition(Ljava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 377
    :cond_3
    invoke-virtual {v9, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->getUpperLimit(I)J

    move-result-wide v2

    move-object v4, v1

    move-wide v0, v2

    goto :goto_1

    .line 367
    :cond_4
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    .line 368
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v0

    .line 369
    if-nez v1, :cond_2

    add-int/lit8 v4, v8, -0x1

    if-ne v5, v4, :cond_2

    .line 370
    invoke-virtual {v9, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    move-result-object v1

    goto :goto_2

    .line 381
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 382
    if-eqz v4, :cond_7

    .line 398
    :cond_6
    :goto_3
    return-object v4

    .line 386
    :cond_7
    const-string v0, "UTC"

    invoke-static {p1, v0, v6, v6}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object v4

    goto :goto_3

    .line 388
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-nez v4, :cond_9

    .line 389
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 390
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v2

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getStandardOffset()I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->buildFixedZone(Ljava/lang/String;Ljava/lang/String;II)Lorg/joda/time/DateTimeZone;

    move-result-object v4

    goto :goto_3

    .line 394
    :cond_9
    invoke-static {p1, p2, v7, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->create(Ljava/lang/String;ZLjava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->isCachable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    invoke-static {v4}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    move-result-object v4

    goto :goto_3
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->toDateTimeZone(Ljava/lang/String;Z)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 467
    instance-of v1, v0, Lorg/joda/time/tz/FixedDateTimeZone;

    if-eqz v1, :cond_0

    .line 468
    const/16 v1, 0x46

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 469
    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p2, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 471
    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 481
    :goto_0
    return-void

    .line 473
    :cond_0
    instance-of v1, v0, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v1, :cond_1

    .line 474
    const/16 v1, 0x43

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 475
    check-cast v0, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/tz/CachedDateTimeZone;->getUncachedZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 479
    :goto_1
    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    invoke-virtual {v0, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->writeTo(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 477
    :cond_1
    const/16 v1, 0x50

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_1
.end method

.method public writeTo(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    instance-of v0, p2, Ljava/io/DataOutput;

    if-eqz v0, :cond_0

    .line 448
    check-cast p2, Ljava/io/DataOutput;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    .line 454
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeTo(Ljava/lang/String;Ljava/io/DataOutput;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

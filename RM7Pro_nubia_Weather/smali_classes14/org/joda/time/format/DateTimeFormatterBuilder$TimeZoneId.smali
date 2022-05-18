.class final enum Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TimeZoneId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;",
        ">;",
        "Lorg/joda/time/format/InternalPrinter;",
        "Lorg/joda/time/format/InternalParser;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

.field private static final ALL_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE_GROUPED_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPED_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

.field static final MAX_LENGTH:I

.field static final MAX_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2317
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    .line 2314
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    aput-object v1, v0, v2

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->$VALUES:[Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    .line 2322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->BASE_GROUPED_IDS:Ljava/util/List;

    .line 2326
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getAvailableIDs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->ALL_IDS:Ljava/util/List;

    .line 2327
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->ALL_IDS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->GROUPED_IDS:Ljava/util/Map;

    .line 2331
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->ALL_IDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2332
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2333
    if-ltz v4, :cond_2

    .line 2334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2335
    add-int/lit8 v4, v4, 0x1

    .line 2337
    :cond_0
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2338
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2340
    sget-object v7, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->GROUPED_IDS:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2341
    sget-object v7, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->GROUPED_IDS:Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    :cond_1
    sget-object v7, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->GROUPED_IDS:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    .line 2347
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    .line 2348
    goto :goto_0

    .line 2345
    :cond_2
    sget-object v4, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->BASE_GROUPED_IDS:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2349
    :cond_3
    sput v3, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->MAX_LENGTH:I

    .line 2350
    sput v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->MAX_PREFIX_LENGTH:I

    .line 2351
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;
    .locals 1

    .prologue
    .line 2314
    const-class v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    return-object v0
.end method

.method public static final values()[Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;
    .locals 1

    .prologue
    .line 2314
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->$VALUES:[Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    invoke-virtual {v0}, [Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    return-object v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2368
    sget v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->MAX_LENGTH:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 2354
    sget v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->MAX_LENGTH:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    .line 2373
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->BASE_GROUPED_IDS:Ljava/util/List;

    .line 2375
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2376
    sget v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->MAX_PREFIX_LENGTH:I

    add-int/2addr v1, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2378
    const-string v1, ""

    move v3, p3

    .line 2379
    :goto_0
    if-ge v3, v5, :cond_7

    .line 2380
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x2f

    if-ne v2, v6, :cond_0

    .line 2382
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p2, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, p3, v0

    .line 2385
    if-ge v3, v4, :cond_6

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    :goto_1
    sget-object v3, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->GROUPED_IDS:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2389
    if-nez v0, :cond_1

    .line 2390
    xor-int/lit8 v0, p3, -0x1

    .line 2410
    :goto_2
    return v0

    .line 2379
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 2396
    :goto_3
    const/4 v4, 0x0

    .line 2397
    const/4 v0, 0x0

    move v5, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 2398
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2399
    invoke-static {p2, v2, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2400
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 2397
    :cond_2
    :goto_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v0

    goto :goto_4

    .line 2406
    :cond_3
    if-eqz v4, :cond_4

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 2408
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_2

    .line 2410
    :cond_4
    xor-int/lit8 v0, p3, -0x1

    goto :goto_2

    :cond_5
    move-object v0, v4

    goto :goto_5

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move v2, p3

    move-object v3, v0

    goto :goto_3
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2360
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2361
    return-void

    .line 2360
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2365
    return-void
.end method

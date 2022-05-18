.class public abstract Lorg/joda/time/DateTimeZone;
.super Ljava/lang/Object;
.source "DateTimeZone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeZone$LazyInit;,
        Lorg/joda/time/DateTimeZone$Stub;
    }
.end annotation


# static fields
.field private static final MAX_MILLIS:I = 0x5265bff

.field public static final UTC:Lorg/joda/time/DateTimeZone;

.field private static final cDefault:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static final cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/joda/time/tz/NameProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final cProvider:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/joda/time/tz/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4cf893d49479892aL


# instance fields
.field private final iID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/joda/time/UTCDateTimeZone;->INSTANCE:Lorg/joda/time/DateTimeZone;

    sput-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeZone;->cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    if-nez p1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iput-object p1, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 692
    return-void
.end method

.method private static convertToAsciiNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 387
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 388
    if-ltz v2, :cond_0

    .line 389
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;
    .locals 2

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 6
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 210
    if-nez p0, :cond_1

    .line 211
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :cond_1
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getProvider()Lorg/joda/time/tz/Provider;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 220
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    :cond_3
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->parseOffset(Ljava/lang/String;)I

    move-result v0

    .line 222
    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 223
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0

    .line 225
    :cond_4
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1, v0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The datetime zone id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forOffsetHours(I)Lorg/joda/time/DateTimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/joda/time/DateTimeZone;->forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 279
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 302
    :goto_0
    return-object v0

    .line 281
    :cond_0
    const/16 v0, -0x17

    if-lt p0, v0, :cond_1

    const/16 v0, 0x17

    if-le p0, v0, :cond_2

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hours out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_2
    const/16 v0, -0x3b

    if-lt p1, v0, :cond_3

    const/16 v0, 0x3b

    if-le p1, v0, :cond_4

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minutes out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_4
    if-lez p0, :cond_5

    if-gez p1, :cond_5

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Positive hours must not have negative minutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_5
    mul-int/lit8 v0, p0, 0x3c

    .line 293
    if-gez v0, :cond_6

    .line 294
    :try_start_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 298
    :goto_1
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 302
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_6
    add-int/2addr v0, p1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forOffsetMillis(I)Lorg/joda/time/DateTimeZone;
    .locals 3

    .prologue
    .line 312
    const v0, -0x5265bff

    if-lt p0, v0, :cond_0

    const v0, 0x5265bff

    if-le p0, v0, :cond_1

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millis out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0, p0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 6

    .prologue
    .line 335
    if-nez p0, :cond_1

    .line 336
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 339
    if-nez v1, :cond_2

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The TimeZone id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    const-string v0, "UTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0

    .line 347
    :cond_3
    const/4 v0, 0x0

    .line 348
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->getConvertedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getProvider()Lorg/joda/time/tz/Provider;

    move-result-object v3

    .line 350
    if-eqz v2, :cond_4

    .line 351
    invoke-interface {v3, v2}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 353
    :cond_4
    if-nez v0, :cond_5

    .line 354
    invoke-interface {v3, v1}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 356
    :cond_5
    if-nez v0, :cond_0

    .line 361
    if-nez v2, :cond_9

    .line 363
    const-string v0, "GMT+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "GMT-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 364
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_7

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 367
    const/16 v2, 0x39

    if-le v1, v2, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 368
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->convertToAsciiNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_7
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->parseOffset(Ljava/lang/String;)I

    move-result v0

    .line 372
    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 373
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0

    .line 375
    :cond_8
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v1, v0}, Lorg/joda/time/DateTimeZone;->fixedOffsetZone(Ljava/lang/String;I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The datetime zone id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailableIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getProvider()Lorg/joda/time/tz/Provider;

    move-result-object v0

    invoke-interface {v0}, Lorg/joda/time/tz/Provider;->getAvailableIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getConvertedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lorg/joda/time/DateTimeZone$LazyInit;->CONVERSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDefault()Lorg/joda/time/DateTimeZone;
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    .line 146
    if-nez v0, :cond_3

    .line 149
    :try_start_0
    const-string v1, "user.timezone"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 157
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 162
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 163
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 165
    :cond_2
    sget-object v1, Lorg/joda/time/DateTimeZone;->cDefault:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    sget-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    .line 169
    :cond_3
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getDefaultNameProvider()Lorg/joda/time/tz/NameProvider;
    .locals 3

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 593
    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.NameProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 594
    if-eqz v0, :cond_1

    .line 596
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/NameProvider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 605
    :goto_0
    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lorg/joda/time/tz/DefaultNameProvider;

    invoke-direct {v0}, Lorg/joda/time/tz/DefaultNameProvider;-><init>()V

    .line 609
    :cond_0
    return-object v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 601
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static getDefaultProvider()Lorg/joda/time/tz/Provider;
    .locals 3

    .prologue
    .line 504
    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    .line 507
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/Provider;

    .line 508
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->validateProvider(Lorg/joda/time/tz/Provider;)Lorg/joda/time/tz/Provider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 513
    :catch_1
    move-exception v0

    .line 518
    :cond_0
    :try_start_3
    const-string v0, "org.joda.time.DateTimeZone.Folder"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 519
    if-eqz v0, :cond_1

    .line 521
    :try_start_4
    new-instance v1, Lorg/joda/time/tz/ZoneInfoProvider;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/io/File;)V

    .line 522
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->validateProvider(Lorg/joda/time/tz/Provider;)Lorg/joda/time/tz/Provider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto :goto_0

    .line 523
    :catch_2
    move-exception v0

    .line 524
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 527
    :catch_3
    move-exception v0

    .line 532
    :cond_1
    :try_start_6
    new-instance v0, Lorg/joda/time/tz/ZoneInfoProvider;

    const-string v1, "org/joda/time/tz/data"

    invoke-direct {v0, v1}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->validateProvider(Lorg/joda/time/tz/Provider;)Lorg/joda/time/tz/Provider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v0

    goto :goto_0

    .line 534
    :catch_4
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    new-instance v0, Lorg/joda/time/tz/UTCProvider;

    invoke-direct {v0}, Lorg/joda/time/tz/UTCProvider;-><init>()V

    goto :goto_0
.end method

.method public static getNameProvider()Lorg/joda/time/tz/NameProvider;
    .locals 3

    .prologue
    .line 551
    sget-object v0, Lorg/joda/time/DateTimeZone;->cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/NameProvider;

    .line 552
    if-nez v0, :cond_0

    .line 553
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultNameProvider()Lorg/joda/time/tz/NameProvider;

    move-result-object v0

    .line 554
    sget-object v1, Lorg/joda/time/DateTimeZone;->cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    sget-object v0, Lorg/joda/time/DateTimeZone;->cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/NameProvider;

    .line 558
    :cond_0
    return-object v0
.end method

.method public static getProvider()Lorg/joda/time/tz/Provider;
    .locals 3

    .prologue
    .line 429
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/Provider;

    .line 430
    if-nez v0, :cond_0

    .line 431
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultProvider()Lorg/joda/time/tz/Provider;

    move-result-object v0

    .line 432
    sget-object v1, Lorg/joda/time/DateTimeZone;->cProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/Provider;

    .line 436
    :cond_0
    return-object v0
.end method

.method private static parseOffset(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 630
    sget-object v0, Lorg/joda/time/DateTimeZone$LazyInit;->OFFSET_FORMATTER:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method private static printOffset(I)Ljava/lang/String;
    .locals 6

    .prologue
    const v2, 0x36ee80

    const v5, 0xea60

    const/16 v4, 0x3a

    const/4 v3, 0x2

    .line 643
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 644
    if-ltz p0, :cond_0

    .line 645
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 651
    :goto_0
    div-int v1, p0, v2

    .line 652
    invoke-static {v0, v1, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 653
    mul-int/2addr v1, v2

    sub-int v1, p0, v1

    .line 655
    div-int v2, v1, v5

    .line 656
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 657
    invoke-static {v0, v2, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 658
    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 659
    if-nez v1, :cond_1

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    :goto_1
    return-object v0

    .line 647
    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 648
    neg-int p0, p0

    goto :goto_0

    .line 663
    :cond_1
    div-int/lit16 v2, v1, 0x3e8

    .line 664
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 665
    invoke-static {v0, v2, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 666
    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    .line 667
    if-nez v1, :cond_2

    .line 668
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 671
    :cond_2
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 672
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static setDefault(Lorg/joda/time/DateTimeZone;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setDefault"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 186
    :cond_0
    if-nez p0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The datetime zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->cDefault:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static setNameProvider(Lorg/joda/time/tz/NameProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setNameProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 576
    :cond_0
    if-nez p0, :cond_1

    .line 577
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultNameProvider()Lorg/joda/time/tz/NameProvider;

    move-result-object p0

    .line 579
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->cNameProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public static setProvider(Lorg/joda/time/tz/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "DateTimeZone.setProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 454
    :cond_0
    if-nez p0, :cond_1

    .line 455
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefaultProvider()Lorg/joda/time/tz/Provider;

    move-result-object p0

    .line 459
    :goto_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->cProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    return-void

    .line 457
    :cond_1
    invoke-static {p0}, Lorg/joda/time/DateTimeZone;->validateProvider(Lorg/joda/time/tz/Provider;)Lorg/joda/time/tz/Provider;

    goto :goto_0
.end method

.method private static validateProvider(Lorg/joda/time/tz/Provider;)Lorg/joda/time/tz/Provider;
    .locals 2

    .prologue
    .line 470
    invoke-interface {p0}, Lorg/joda/time/tz/Provider;->getAvailableIDs()Ljava/util/Set;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t have any available ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    const-string v1, "UTC"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t support UTC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const-string v1, "UTC"

    invoke-interface {p0, v1}, Lorg/joda/time/tz/Provider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTC zone provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_3
    return-object p0
.end method


# virtual methods
.method public adjustOffset(JZ)J
    .locals 7

    .prologue
    const-wide/32 v2, 0xa4cb80

    .line 1184
    sub-long v0, p1, v2

    .line 1185
    add-long/2addr v2, p1

    .line 1186
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    .line 1187
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    .line 1188
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-wide p1

    .line 1193
    :cond_1
    sub-long v2, v4, v2

    .line 1194
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    .line 1195
    sub-long v4, v0, v2

    .line 1196
    add-long/2addr v0, v2

    .line 1197
    cmp-long v6, p1, v4

    if-ltz v6, :cond_0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1202
    sub-long v0, p1, v4

    .line 1203
    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1205
    if-nez p3, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    .line 1208
    :cond_2
    if-eqz p3, :cond_0

    add-long/2addr p1, v2

    goto :goto_0
.end method

.method public convertLocalToUTC(JZ)J
    .locals 13

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    .line 993
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v5

    .line 995
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    .line 997
    if-eq v5, v4, :cond_4

    .line 1001
    if-nez p3, :cond_0

    if-gez v5, :cond_4

    .line 1003
    :cond_0
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    .line 1004
    int-to-long v6, v5

    sub-long v6, p1, v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    move-wide v0, v2

    .line 1007
    :cond_1
    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 1008
    int-to-long v8, v4

    sub-long v8, p1, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    .line 1011
    :goto_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1013
    if-eqz p3, :cond_2

    .line 1015
    new-instance v0, Lorg/joda/time/IllegalInstantException;

    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/IllegalInstantException;-><init>(JLjava/lang/String;)V

    throw v0

    :cond_2
    move v0, v5

    .line 1026
    :goto_1
    int-to-long v2, v0

    sub-long v2, p1, v2

    .line 1028
    xor-long v4, p1, v2

    cmp-long v1, v4, v10

    if-gez v1, :cond_3

    int-to-long v0, v0

    xor-long/2addr v0, p1

    cmp-long v0, v0, v10

    if-gez v0, :cond_3

    .line 1029
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_3
    return-wide v2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move-wide v2, v6

    goto :goto_0
.end method

.method public convertLocalToUTC(JZJ)J
    .locals 5

    .prologue
    .line 970
    invoke-virtual {p0, p4, p5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    .line 971
    int-to-long v0, v2

    sub-long v0, p1, v0

    .line 972
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 973
    if-ne v3, v2, :cond_0

    .line 976
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public convertUTCToLocal(J)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 943
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 944
    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 946
    xor-long v4, p1, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    int-to-long v0, v0

    xor-long/2addr v0, p1

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    return-wide v2
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final getID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    return-object v0
.end method

.method public getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J
    .locals 6

    .prologue
    .line 1045
    if-nez p1, :cond_1

    .line 1046
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 1048
    :goto_0
    if-ne v0, p0, :cond_0

    .line 1052
    :goto_1
    return-wide p2

    .line 1051
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v1

    .line 1052
    const/4 v3, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public final getName(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTimeZone;->getName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(JLjava/util/Locale;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 788
    if-nez p3, :cond_0

    .line 789
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 791
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v1

    .line 792
    if-nez v1, :cond_2

    .line 793
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 805
    :cond_1
    :goto_0
    return-object v0

    .line 796
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getNameProvider()Lorg/joda/time/tz/NameProvider;

    move-result-object v0

    .line 797
    instance-of v2, v0, Lorg/joda/time/tz/DefaultNameProvider;

    if-eqz v2, :cond_3

    .line 798
    check-cast v0, Lorg/joda/time/tz/DefaultNameProvider;

    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->isStandardOffset(J)Z

    move-result v3

    invoke-virtual {v0, p3, v2, v1, v3}, Lorg/joda/time/tz/DefaultNameProvider;->getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 802
    :goto_1
    if-nez v0, :cond_1

    .line 805
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_3
    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-interface {v0, p3, v2, v1}, Lorg/joda/time/tz/NameProvider;->getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public abstract getNameKey(J)Ljava/lang/String;
.end method

.method public abstract getOffset(J)I
.end method

.method public final getOffset(Lorg/joda/time/ReadableInstant;)I
    .locals 2

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 826
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    goto :goto_0
.end method

.method public getOffsetFromLocal(J)I
    .locals 11

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 895
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    .line 897
    int-to-long v0, v4

    sub-long v6, p1, v0

    .line 898
    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v5

    .line 900
    if-eq v4, v5, :cond_2

    .line 903
    sub-int v0, v4, v5

    if-gez v0, :cond_3

    .line 907
    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    .line 908
    int-to-long v6, v4

    sub-long v6, p1, v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    move-wide v0, v2

    .line 911
    :cond_0
    int-to-long v6, v5

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v6

    .line 912
    int-to-long v8, v5

    sub-long v8, p1, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_4

    .line 915
    :goto_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v4

    .line 929
    :cond_1
    :goto_1
    return v0

    .line 919
    :cond_2
    if-ltz v4, :cond_3

    .line 920
    invoke-virtual {p0, v6, v7}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v2

    .line 921
    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    .line 922
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 923
    sub-int v1, v0, v4

    .line 924
    sub-long v2, v6, v2

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    :cond_3
    move v0, v5

    .line 929
    goto :goto_1

    :cond_4
    move-wide v2, v6

    goto :goto_0
.end method

.method public final getShortName(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTimeZone;->getShortName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName(JLjava/util/Locale;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 742
    if-nez p3, :cond_0

    .line 743
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 745
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v1

    .line 746
    if-nez v1, :cond_2

    .line 747
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    .line 759
    :cond_1
    :goto_0
    return-object v0

    .line 750
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getNameProvider()Lorg/joda/time/tz/NameProvider;

    move-result-object v0

    .line 751
    instance-of v2, v0, Lorg/joda/time/tz/DefaultNameProvider;

    if-eqz v2, :cond_3

    .line 752
    check-cast v0, Lorg/joda/time/tz/DefaultNameProvider;

    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->isStandardOffset(J)Z

    move-result v3

    invoke-virtual {v0, p3, v2, v1, v3}, Lorg/joda/time/tz/DefaultNameProvider;->getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_1
    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->printOffset(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_3
    iget-object v2, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-interface {v0, p3, v2, v1}, Lorg/joda/time/tz/NameProvider;->getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public abstract getStandardOffset(J)I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    return v0
.end method

.method public abstract isFixed()Z
.end method

.method public isLocalDateTimeGap(Lorg/joda/time/LocalDateTime;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    :goto_0
    return v0

    .line 1166
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    :try_end_0
    .catch Lorg/joda/time/IllegalInstantException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStandardOffset(J)Z
    .locals 3

    .prologue
    .line 854
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateTimeZone;->getStandardOffset(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract nextTransition(J)J
.end method

.method public abstract previousTransition(J)J
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1285
    new-instance v0, Lorg/joda/time/DateTimeZone$Stub;

    iget-object v1, p0, Lorg/joda/time/DateTimeZone;->iID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/joda/time/DateTimeZone$Stub;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

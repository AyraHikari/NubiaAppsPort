.class public Lorg/joda/time/DateTimeComparator;
.super Ljava/lang/Object;
.source "DateTimeComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

.field private static final serialVersionUID:J = -0x549e1a37ff9c2abcL


# instance fields
.field private final iLowerLimit:Lorg/joda/time/DateTimeFieldType;

.field private final iUpperLimit:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-direct {v0, v2, v2}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    .line 56
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    .line 58
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    sput-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    .line 157
    iput-object p2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    .line 158
    return-void
.end method

.method public static getDateOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;
    .locals 1

    .prologue
    .line 106
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 107
    sget-object v0, Lorg/joda/time/DateTimeComparator;->ALL_INSTANCE:Lorg/joda/time/DateTimeComparator;

    .line 115
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_1

    .line 110
    sget-object v0, Lorg/joda/time/DateTimeComparator;->DATE_INSTANCE:Lorg/joda/time/DateTimeComparator;

    goto :goto_0

    .line 112
    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 113
    sget-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Lorg/joda/time/DateTimeComparator;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeComparator;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)V

    goto :goto_0
.end method

.method public static getTimeOnlyInstance()Lorg/joda/time/DateTimeComparator;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/joda/time/DateTimeComparator;->TIME_INSTANCE:Lorg/joda/time/DateTimeComparator;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-static {v0, v1}, Lorg/joda/time/DateTimeComparator;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTimeComparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 192
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v2

    move-object v0, v1

    .line 193
    check-cast v0, Lorg/joda/time/Chronology;

    invoke-interface {v2, p1, v0}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v5

    .line 194
    invoke-interface {v2, p1, v5}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v2

    .line 198
    if-ne p1, p2, :cond_0

    move v0, v4

    .line 221
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    .line 203
    check-cast v1, Lorg/joda/time/Chronology;

    invoke-interface {v0, p2, v1}, Lorg/joda/time/convert/InstantConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v6

    .line 204
    invoke-interface {v0, p2, v6}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    .line 206
    iget-object v7, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v7, :cond_1

    .line 207
    iget-object v7, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v7, v5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 208
    iget-object v7, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v7, v6}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 211
    :cond_1
    iget-object v7, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v7, :cond_2

    .line 212
    iget-object v7, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v7, v5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v2

    .line 213
    iget-object v5, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    .line 216
    :cond_2
    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    .line 217
    const/4 v0, -0x1

    goto :goto_0

    .line 218
    :cond_3
    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    .line 221
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    instance-of v1, p1, Lorg/joda/time/DateTimeComparator;

    if-eqz v1, :cond_2

    .line 243
    check-cast p1, Lorg/joda/time/DateTimeComparator;

    .line 244
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getLowerLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeComparator;->getUpperLimit()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 249
    :cond_2
    return v0
.end method

.method public getLowerLimit()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getUpperLimit()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v1, v1, 0x7b

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-ne v0, v1, :cond_1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeComparator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_1
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeComparator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iLowerLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/joda/time/DateTimeComparator;->iUpperLimit:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

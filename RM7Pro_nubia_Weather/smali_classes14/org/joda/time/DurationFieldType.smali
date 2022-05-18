.class public abstract Lorg/joda/time/DurationFieldType;
.super Ljava/lang/Object;
.source "DurationFieldType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DurationFieldType$StandardDurationFieldType;
    }
.end annotation


# static fields
.field static final CENTURIES:B = 0x2t

.field static final CENTURIES_TYPE:Lorg/joda/time/DurationFieldType;

.field static final DAYS:B = 0x7t

.field static final DAYS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final ERAS:B = 0x1t

.field static final ERAS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final HALFDAYS:B = 0x8t

.field static final HALFDAYS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final HOURS:B = 0x9t

.field static final HOURS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final MILLIS:B = 0xct

.field static final MILLIS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final MINUTES:B = 0xat

.field static final MINUTES_TYPE:Lorg/joda/time/DurationFieldType;

.field static final MONTHS:B = 0x5t

.field static final MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final SECONDS:B = 0xbt

.field static final SECONDS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final WEEKS:B = 0x6t

.field static final WEEKS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final WEEKYEARS:B = 0x3t

.field static final WEEKYEARS_TYPE:Lorg/joda/time/DurationFieldType;

.field static final YEARS:B = 0x4t

.field static final YEARS_TYPE:Lorg/joda/time/DurationFieldType;

.field private static final serialVersionUID:J = 0x7f8cac4ed77L


# instance fields
.field private final iName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->ERAS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 62
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->CENTURIES_TYPE:Lorg/joda/time/DurationFieldType;

    .line 64
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->WEEKYEARS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 66
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->YEARS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 68
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 70
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->WEEKS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 72
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->DAYS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 74
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->HALFDAYS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 76
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->HOURS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 78
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->MINUTES_TYPE:Lorg/joda/time/DurationFieldType;

    .line 80
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->SECONDS_TYPE:Lorg/joda/time/DurationFieldType;

    .line 82
    new-instance v0, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DurationFieldType$StandardDurationFieldType;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/DurationFieldType;->MILLIS_TYPE:Lorg/joda/time/DurationFieldType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/joda/time/DurationFieldType;->iName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static centuries()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lorg/joda/time/DurationFieldType;->CENTURIES_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static days()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/joda/time/DurationFieldType;->DAYS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static eras()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/joda/time/DurationFieldType;->ERAS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static halfdays()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/joda/time/DurationFieldType;->HALFDAYS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static hours()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lorg/joda/time/DurationFieldType;->HOURS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static millis()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/joda/time/DurationFieldType;->MILLIS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static minutes()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lorg/joda/time/DurationFieldType;->MINUTES_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static months()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/joda/time/DurationFieldType;->MONTHS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static seconds()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lorg/joda/time/DurationFieldType;->SECONDS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static weeks()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lorg/joda/time/DurationFieldType;->WEEKS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static weekyears()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lorg/joda/time/DurationFieldType;->WEEKYEARS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public static years()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lorg/joda/time/DurationFieldType;->YEARS_TYPE:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method


# virtual methods
.method public abstract getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/DurationFieldType;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported(Lorg/joda/time/Chronology;)Z
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

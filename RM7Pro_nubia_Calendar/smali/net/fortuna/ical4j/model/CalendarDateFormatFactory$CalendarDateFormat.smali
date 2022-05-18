.class abstract Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
.super Ljava/text/DateFormat;
.source "CalendarDateFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalendarDateFormat"
.end annotation


# static fields
.field private static final DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = -0x3a2ada95bbf8938dL


# instance fields
.field private lenient:Z

.field private final pattern:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    .line 115
    sget-object v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->DEFAULT_TIME_ZONE:Ljava/util/TimeZone;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 118
    iput-object p1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->pattern:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->pattern:Ljava/lang/String;

    invoke-static {v1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;

    .line 156
    .local v0, "f":Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->isLenient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->setLenient(Z)V

    .line 158
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 166
    goto :goto_0

    .line 168
    :cond_3
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 169
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 172
    check-cast v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;

    .line 174
    .local v0, "that":Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
    iget-boolean v3, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    iget-boolean v4, v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 175
    goto :goto_0

    .line 177
    :cond_5
    iget-object v3, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_6
    iget-object v3, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 181
    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    .line 189
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 192
    return v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    return v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->lenient:Z

    .line 131
    return-void
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 1
    .param p1, "n"    # Ljava/text/NumberFormat;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 126
    iput-object p1, p0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 127
    return-void
.end method

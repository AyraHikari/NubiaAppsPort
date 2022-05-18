.class public abstract Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.super Ljava/lang/Object;
.source "AbstractVCalendarBuilder.java"


# static fields
.field protected static final CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final ENCODING:Ljava/lang/String; = "QUOTED-PRINTABLE"

.field protected static ENTER:Ljava/lang/String; = null

.field protected static final PROP_PARAM_DELM:Ljava/lang/String; = ";"

.field protected static final PROP_VALUE_DELM:Ljava/lang/String; = ":"

.field public static final VERSION_VCAL10:I = 0x1

.field public static final VERSION_VCAL20:I = 0x2

.field protected static returnStr:Ljava/lang/StringBuffer;

.field protected static version:I


# instance fields
.field protected strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "\r\n"

    sput-object v0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcalversion"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    .line 19
    sput p1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->version:I

    .line 20
    return-void
.end method

.method public static enCodingQuotedPrintableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 87
    .local v1, "returnVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v2, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method public static foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isNull(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beginVAlarm()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VALARM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public beginVCalendar()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    return-object p0
.end method

.method public beginVEevent()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-object p0
.end method

.method public beginVTimezone()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VTIMEZONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    return-object p0
.end method

.method abstract createVAlarmProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.end method

.method abstract createVCalendarProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.end method

.method abstract createVEeventAtteedee(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.end method

.method abstract createVEeventProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.end method

.method abstract createVTimezoneProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.end method

.method public endVAlarm()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "END:VALARM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    return-object p0
.end method

.method public endVCalendar()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "END:VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    return-object p0
.end method

.method public endVEevent()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "END:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    return-object p0
.end method

.method public endVTimezone()Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "END:VTIMEZONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    return-object p0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

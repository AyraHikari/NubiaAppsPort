.class public Lnet/fortuna/ical4j/model/WeekDay;
.super Ljava/lang/Object;
.source "WeekDay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FR:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final MO:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final SA:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final SU:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final TH:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final TU:Lnet/fortuna/ical4j/model/WeekDay;

.field public static final WE:Lnet/fortuna/ical4j/model/WeekDay;

.field private static final serialVersionUID:J = -0x3d3a93864eef0a4dL


# instance fields
.field private day:Ljava/lang/String;

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "SU"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SU:Lnet/fortuna/ical4j/model/WeekDay;

    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "MO"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->MO:Lnet/fortuna/ical4j/model/WeekDay;

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "TU"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TU:Lnet/fortuna/ical4j/model/WeekDay;

    .line 74
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "WE"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->WE:Lnet/fortuna/ical4j/model/WeekDay;

    .line 79
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "TH"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TH:Lnet/fortuna/ical4j/model/WeekDay;

    .line 84
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "FR"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->FR:Lnet/fortuna/ical4j/model/WeekDay;

    .line 89
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const-string v1, "SA"

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SA:Lnet/fortuna/ical4j/model/WeekDay;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Numbers;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/WeekDay;->offset:I

    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/WeekDay;->validateDay()V

    .line 107
    return-void

    .line 103
    :cond_0
    iput v2, p0, Lnet/fortuna/ical4j/model/WeekDay;->offset:I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 115
    iput p2, p0, Lnet/fortuna/ical4j/model/WeekDay;->offset:I

    .line 116
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/WeekDay;I)V
    .locals 1
    .param p1, "weekDay"    # Lnet/fortuna/ical4j/model/WeekDay;
    .param p2, "offset"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 126
    iput p2, p0, Lnet/fortuna/ical4j/model/WeekDay;->offset:I

    .line 127
    return-void
.end method

.method public static getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I
    .locals 3
    .param p0, "weekday"    # Lnet/fortuna/ical4j/model/WeekDay;

    .prologue
    .line 237
    const/4 v0, -0x1

    .line 238
    .local v0, "calendarDay":I
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->SU:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const/4 v0, 0x1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->MO:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    const/4 v0, 0x2

    goto :goto_0

    .line 244
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->TU:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const/4 v0, 0x3

    goto :goto_0

    .line 247
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->WE:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    const/4 v0, 0x4

    goto :goto_0

    .line 250
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->TH:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    const/4 v0, 0x5

    goto :goto_0

    .line 253
    :cond_5
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->FR:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    const/4 v0, 0x6

    goto :goto_0

    .line 256
    :cond_6
    sget-object v1, Lnet/fortuna/ical4j/model/WeekDay;->SA:Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getDay(I)Lnet/fortuna/ical4j/model/WeekDay;
    .locals 1
    .param p0, "calDay"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "day":Lnet/fortuna/ical4j/model/WeekDay;
    packed-switch p0, :pswitch_data_0

    .line 227
    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SU:Lnet/fortuna/ical4j/model/WeekDay;

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->MO:Lnet/fortuna/ical4j/model/WeekDay;

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TU:Lnet/fortuna/ical4j/model/WeekDay;

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->WE:Lnet/fortuna/ical4j/model/WeekDay;

    .line 214
    goto :goto_0

    .line 216
    :pswitch_4
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TH:Lnet/fortuna/ical4j/model/WeekDay;

    .line 217
    goto :goto_0

    .line 219
    :pswitch_5
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->FR:Lnet/fortuna/ical4j/model/WeekDay;

    .line 220
    goto :goto_0

    .line 222
    :pswitch_6
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SA:Lnet/fortuna/ical4j/model/WeekDay;

    .line 223
    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final getMonthlyOffset(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 181
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay(I)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Lnet/fortuna/ical4j/model/WeekDay;I)V

    return-object v0
.end method

.method public static final getNegativeMonthlyOffset(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 190
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay(I)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Lnet/fortuna/ical4j/model/WeekDay;I)V

    return-object v0
.end method

.method public static final getWeekDay(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 172
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lnet/fortuna/ical4j/model/WeekDay;->getDay(I)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Lnet/fortuna/ical4j/model/WeekDay;I)V

    return-object v0
.end method

.method private validateDay()V
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SU:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->MO:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TU:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->WE:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->TH:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->FR:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/WeekDay;->SA:Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v0, v0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    instance-of v2, p1, Lnet/fortuna/ical4j/model/WeekDay;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 272
    check-cast v0, Lnet/fortuna/ical4j/model/WeekDay;

    .line 273
    .local v0, "wd":Lnet/fortuna/ical4j/model/WeekDay;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/fortuna/ical4j/model/WeekDay;->day:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/fortuna/ical4j/model/WeekDay;->offset:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 281
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDay;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

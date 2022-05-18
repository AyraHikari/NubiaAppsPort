.class final Lcom/google/android/material/picker/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/picker/Month;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/picker/Month;",
            ">;"
        }
    .end annotation
.end field

.field private static final longNameFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field final daysInMonth:I

.field final daysInWeek:I

.field private final longName:Ljava/lang/String;

.field final month:I

.field final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM, yyyy"

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/material/picker/Month;->longNameFormat:Ljava/text/SimpleDateFormat;

    .line 150
    new-instance v0, Lcom/google/android/material/picker/Month$1;

    invoke-direct {v0}, Lcom/google/android/material/picker/Month$1;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/Month;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    .line 40
    iget-object v0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/Month;->month:I

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/Month;->year:I

    .line 43
    iget-object p1, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/Month;->daysInWeek:I

    .line 44
    iget-object p1, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/Month;->daysInMonth:I

    .line 45
    sget-object p1, Lcom/google/android/material/picker/Month;->longNameFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/Month;->longName:Ljava/lang/String;

    return-void
.end method

.method static create(II)Lcom/google/android/material/picker/Month;
    .locals 2

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 60
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 61
    new-instance p0, Lcom/google/android/material/picker/Month;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/Month;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static today()Lcom/google/android/material/picker/Month;
    .locals 3

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/material/picker/Month;->create(II)Lcom/google/android/material/picker/Month;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/picker/Month;)I
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/google/android/material/picker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/Month;->compareTo(Lcom/google/android/material/picker/Month;)I

    move-result p0

    return p0
.end method

.method daysFromStartOfWeekToFirstOfMonth()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 73
    iget p0, p0, Lcom/google/android/material/picker/Month;->daysInWeek:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/picker/Month;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 100
    :cond_1
    check-cast p1, Lcom/google/android/material/picker/Month;

    .line 101
    iget v1, p0, Lcom/google/android/material/picker/Month;->month:I

    iget v3, p1, Lcom/google/android/material/picker/Month;->month:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/picker/Month;->year:I

    iget p1, p1, Lcom/google/android/material/picker/Month;->year:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method getDay(I)Ljava/util/Calendar;
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 88
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method getLongName()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/google/android/material/picker/Month;->longName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/material/picker/Month;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/android/material/picker/Month;->year:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method monthsLater(I)Lcom/google/android/material/picker/Month;
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 138
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 139
    new-instance p1, Lcom/google/android/material/picker/Month;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/Month;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method monthsUntil(Lcom/google/android/material/picker/Month;)I
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/android/material/picker/Month;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 126
    iget v0, p1, Lcom/google/android/material/picker/Month;->year:I

    iget v1, p0, Lcom/google/android/material/picker/Month;->year:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/google/android/material/picker/Month;->month:I

    iget p0, p0, Lcom/google/android/material/picker/Month;->month:I

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Gregorian calendars are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 172
    iget p2, p0, Lcom/google/android/material/picker/Month;->year:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p0, p0, Lcom/google/android/material/picker/Month;->month:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

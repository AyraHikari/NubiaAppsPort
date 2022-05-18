.class Lcom/google/android/material/picker/DaysOfWeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysOfWeekAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    .line 48
    iget-object v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 49
    iget-object v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->daysInWeek:I

    .line 50
    iget-object v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->firstDayOfWeek:I

    return-void
.end method

.method private positionToDayOfWeek(I)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->firstDayOfWeek:I

    add-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->daysInWeek:I

    if-le p1, v0, :cond_0

    .line 89
    iget p0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->daysInWeek:I

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->daysInWeek:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DaysOfWeekAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 74
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_0

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysOfWeekAdapter;->positionToDayOfWeek(I)I

    move-result p1

    const/4 p3, 0x7

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 79
    iget-object p0, p0, Lcom/google/android/material/picker/DaysOfWeekAdapter;->calendar:Ljava/util/Calendar;

    sget p1, Lcom/google/android/material/picker/DaysOfWeekAdapter;->CALENDAR_DAY_STYLE:I

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x11

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

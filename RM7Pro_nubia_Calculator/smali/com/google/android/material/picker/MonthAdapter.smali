.class Lcom/google/android/material/picker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field static final MAXIMUM_WEEKS:I


# instance fields
.field final gridSelector:Lcom/google/android/material/picker/GridSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/GridSelector<",
            "*>;"
        }
    .end annotation
.end field

.field private final month:Lcom/google/android/material/picker/Month;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/picker/MonthAdapter;->MAXIMUM_WEEKS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/GridSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/picker/Month;",
            "Lcom/google/android/material/picker/GridSelector<",
            "*>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    .line 50
    iput-object p3, p0, Lcom/google/android/material/picker/MonthAdapter;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    return-void
.end method


# virtual methods
.method dayToPosition(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->firstPositionInMonth()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method firstPositionInMonth()I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {p0}, Lcom/google/android/material/picker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    iget p0, p0, Lcom/google/android/material/picker/Month;->daysInWeek:I

    sget v0, Lcom/google/android/material/picker/MonthAdapter;->MAXIMUM_WEEKS:I

    mul-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/util/Calendar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/picker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthAdapter;->positionToDay(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/picker/Month;->getDay(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    iget p0, p0, Lcom/google/android/material/picker/Month;->daysInWeek:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/picker/MonthAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 2

    .line 88
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 91
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->firstPositionInMonth()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_2

    .line 94
    iget-object p3, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    iget p3, p3, Lcom/google/android/material/picker/Month;->daysInMonth:I

    if-lt p2, p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 98
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p2, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x4

    .line 95
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-interface {p0, v0, p1}, Lcom/google/android/material/picker/GridSelector;->drawCell(Landroid/widget/TextView;Ljava/util/Calendar;)V

    :cond_3
    return-object v0
.end method

.method lastPositionInMonth()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/picker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    iget p0, p0, Lcom/google/android/material/picker/Month;->daysInMonth:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method positionToDay(I)I
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/android/material/picker/MonthAdapter;->month:Lcom/google/android/material/picker/Month;

    invoke-virtual {p0}, Lcom/google/android/material/picker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method withinMonth(I)Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthAdapter;->lastPositionInMonth()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

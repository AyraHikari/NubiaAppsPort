.class public Lcom/google/android/material/picker/DateGridSelector;
.super Ljava/lang/Object;
.source "DateGridSelector.java"

# interfaces
.implements Lcom/google/android/material/picker/GridSelector;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/picker/GridSelector<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/picker/DateGridSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectedItem:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/google/android/material/picker/DateGridSelector$1;

    invoke-direct {v0}, Lcom/google/android/material/picker/DateGridSelector$1;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/DateGridSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/DateGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/android/material/picker/DateGridSelector;->selectedItem:Ljava/util/Calendar;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawCell(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    sget v1, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v2, Lcom/google/android/material/picker/MaterialCalendar;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v0, v1, v2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 56
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/picker/DateGridSelector;->selectedItem:Ljava/util/Calendar;

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 59
    sget p0, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 61
    sget p0, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    goto :goto_0

    .line 63
    :cond_1
    sget p0, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    .line 65
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-static {p1, p0}, Lcom/google/android/material/picker/CalendarGridSelectors;->colorCell(Landroid/widget/TextView;I)V

    return-void
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/picker/DateGridSelector;->getSelection()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getSelection()Ljava/util/Calendar;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/google/android/material/picker/DateGridSelector;->selectedItem:Ljava/util/Calendar;

    return-object p0
.end method

.method public onCalendarMonthDraw(Landroid/graphics/Canvas;Lcom/google/android/material/picker/MaterialCalendarGridView;)V
    .locals 0

    return-void
.end method

.method public select(Ljava/util/Calendar;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/android/material/picker/DateGridSelector;->selectedItem:Ljava/util/Calendar;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/android/material/picker/DateGridSelector;->selectedItem:Ljava/util/Calendar;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method

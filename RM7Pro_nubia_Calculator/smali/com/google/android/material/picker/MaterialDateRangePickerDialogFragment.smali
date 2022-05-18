.class public Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
.super Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.source "MaterialDateRangePickerDialogFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialogFragment<",
        "Landroidx/core/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->newInstance(I)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_BOUNDS:Lcom/google/android/material/picker/CalendarBounds;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 3

    .line 53
    new-instance v0, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_range_header_title:I

    invoke-static {v1, p0, p1, v2}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->addArgsToBundle(Landroid/os/Bundle;ILcom/google/android/material/picker/CalendarBounds;I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createGridSelector()Lcom/google/android/material/picker/GridSelector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/GridSelector<",
            "Landroidx/core/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;"
        }
    .end annotation

    .line 68
    new-instance p0, Lcom/google/android/material/picker/DateRangeGridSelector;

    invoke-direct {p0}, Lcom/google/android/material/picker/DateRangeGridSelector;-><init>()V

    return-object p0
.end method

.method protected getDefaultThemeAttr()I
    .locals 0

    .line 63
    sget p0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    return p0
.end method

.method public getEnd()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSelection()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSelection()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/Calendar;

    :goto_0
    return-object p0
.end method

.method protected getHeaderText(Landroidx/core/util/Pair;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_unselected:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getHeaderText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 35
    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getHeaderText(Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSelection()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialogFragment;->getSelection()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/Calendar;

    :goto_0
    return-object p0
.end method

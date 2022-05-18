.class public Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
.super Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.source "MaterialDatePickerDialogFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialogFragment<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->newInstance(I)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->DEFAULT_BOUNDS:Lcom/google/android/material/picker/CalendarBounds;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 3

    .line 49
    new-instance v0, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_date_header_title:I

    invoke-static {v1, p0, p1, v2}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->addArgsToBundle(Landroid/os/Bundle;ILcom/google/android/material/picker/CalendarBounds;I)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {v0, p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->newInstance(ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createGridSelector()Lcom/google/android/material/picker/DateGridSelector;
    .locals 0

    .line 64
    new-instance p0, Lcom/google/android/material/picker/DateGridSelector;

    invoke-direct {p0}, Lcom/google/android/material/picker/DateGridSelector;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic createGridSelector()Lcom/google/android/material/picker/GridSelector;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->createGridSelector()Lcom/google/android/material/picker/DateGridSelector;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultThemeAttr()I
    .locals 0

    .line 59
    sget p0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    return p0
.end method

.method protected bridge synthetic getHeaderText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 32
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getHeaderText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHeaderText(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$string;->mtrl_picker_date_header_unselected:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_selected:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 75
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

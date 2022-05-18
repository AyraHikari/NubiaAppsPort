.class public Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "GregorianLunarDateViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final ISGREGORIAN:Ljava/lang/String; = "isgregorian"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private final mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V
    .locals 0

    .line 96
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance p1, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$1;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$1;-><init>(Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    .line 102
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    sget p2, Lcom/zte/extres/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setTitle(I)V

    const p2, 0x104000a

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p2, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 108
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 111
    sget p2, Lcom/zte/extres/R$layout;->gregorian_lunar_date_view_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setView(Landroid/view/View;)V

    .line 113
    sget p2, Lcom/zte/extres/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .line 115
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 116
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p5}, Ljava/util/Calendar;->set(II)V

    .line 117
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p6}, Ljava/util/Calendar;->set(II)V

    .line 119
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, p3, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 121
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p1, p4, p5, p6, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 122
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setWeekVisibility(Z)V

    .line 123
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p1, p4, p5, p6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateCurrentDate(III)V

    .line 124
    invoke-direct {p0, p4, p5, p6}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->updateTitle(III)V

    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->onConfigurationChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    .line 139
    sget p0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return p0
.end method

.method private tryNotifyDateSet()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->clearFocus()V

    .line 206
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getNumberPickerYear()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getYearValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getNumberPickerMonth()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 209
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getNumberPickerDay()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 210
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 211
    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    .line 210
    invoke-interface {v3, p0, v0, v1, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .line 214
    invoke-virtual {v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v3

    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result p0

    .line 213
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 256
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->tryNotifyDateSet()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/widget/Utils;->isScreenOriatationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setGregorianLunarLayoutPadding(II)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_ic_txt_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setGregorianLunarLayoutPadding(II)V

    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V
    .locals 2

    const-string p1, "wwee"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dd onDateChanged   year:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 177
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 180
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 271
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "isgregorian"

    .line 275
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 276
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 278
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 279
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 280
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 261
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    .line 262
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    .line 263
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    .line 264
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isgregorian"

    .line 265
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 168
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setColor(I)V

    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setColor(III)V

    return-void
.end method

.method public setDisplayMonthsLunar(I)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayMonthsLunar(I)V

    return-void
.end method

.method public setGregorian(Z)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    return-void
.end method

.method public setGregorianLunarLayoutPadding(II)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setWeekLayouParams(II)V

    return-void
.end method

.method public setMaxYear(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setMaxYear(I)V

    .line 236
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 237
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    .line 238
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setMinYear(I)V

    .line 229
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 230
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    .line 231
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    return-void
.end method

.method public setSwitchShown(Z)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setSwitchShown(Z)V

    return-void
.end method

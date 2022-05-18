.class public Lcom/zte/mifavor/widget/DatePickerDialogZTE;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "DatePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private final mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private tvWeekday:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V
    .locals 0

    .line 97
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    new-instance p1, Lcom/zte/mifavor/widget/DatePickerDialogZTE$1;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE$1;-><init>(Lcom/zte/mifavor/widget/DatePickerDialogZTE;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    .line 103
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 104
    sget p2, Lcom/zte/extres/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setTitle(I)V

    const p2, 0x104000a

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p2, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setIcon(I)V

    const-string p2, "layout_inflater"

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 113
    sget p2, Lcom/zte/extres/R$layout;->date_picker_dialog_zte:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setView(Landroid/view/View;)V

    .line 115
    sget p2, Lcom/zte/extres/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zte/mifavor/widget/DatePickerZTE;

    iput-object p2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    .line 116
    iget-object p2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p2, p4, p5, p6, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 121
    sget p2, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    .line 122
    invoke-direct {p0, p4, p5, p6}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->updateTitle(III)V

    .line 125
    sget p2, Lcom/zte/extres/R$id;->pickers:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->onConfigurationChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    .line 142
    sget p0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return p0
.end method

.method private tryNotifyDateSet()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->clearFocus()V

    .line 197
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    .line 198
    invoke-virtual {v3}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v3

    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result p0

    .line 197
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 249
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 251
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    .line 252
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    .line 251
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/zte/mifavor/widget/DatePickerZTE;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tryNotifyDateSet()V

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->cancel()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/widget/Utils;->isScreenOriatationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0, v0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setDatePickerLayoutPadding(II)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_ic_txt_padding:I

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 293
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_xlarge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setDatePickerLayoutPadding(II)V

    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/zte/mifavor/widget/DatePickerZTE;III)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 171
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 270
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 272
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 273
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 274
    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 261
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    .line 262
    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    .line 263
    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    .line 264
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 215
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->setColor(I)V

    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->setColor(III)V

    return-void
.end method

.method public setDatePickerLayoutPadding(II)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePickerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 279
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 278
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    iget-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnDateSetListener(Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateDate(III)V

    return-void
.end method

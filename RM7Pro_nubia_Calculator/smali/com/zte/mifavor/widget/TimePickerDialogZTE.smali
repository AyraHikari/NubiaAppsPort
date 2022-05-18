.class public Lcom/zte/mifavor/widget/TimePickerDialogZTE;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "TimePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

.field private final mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V
    .locals 0

    .line 85
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance p1, Lcom/zte/mifavor/widget/TimePickerDialogZTE$1;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE$1;-><init>(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    .line 88
    iput p4, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialHourOfDay:I

    .line 89
    iput p5, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialMinute:I

    .line 90
    iput-boolean p6, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mIs24HourView:Z

    .line 92
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 94
    sget p3, Lcom/zte/extres/R$layout;->time_picker_dialog_zte:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    sget p3, Lcom/zte/extres/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setTitle(I)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setView(Landroid/view/View;)V

    const p3, 0x104000a

    .line 97
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p3, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 98
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButtonPanelLayoutHint(I)V

    .line 102
    sget p1, Lcom/zte/extres/R$id;->timePicker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/mifavor/widget/TimePickerZTE;

    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    .line 103
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-boolean p2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mIs24HourView:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 104
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget p2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialHourOfDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 105
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget p2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 106
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->onConfigurationChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerZTE;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    .line 121
    sget p0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return p0
.end method


# virtual methods
.method public getTimePicker()Lcom/zte/mifavor/widget/TimePickerZTE;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->clearFocus()V

    .line 169
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    iget-object p2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    .line 170
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 169
    invoke-interface {p1, p2, v0, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;->onTimeSet(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->cancel()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/widget/Utils;->isScreenOriatationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setTimePickerLayoutPadding(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$dimen;->mfvc_ic_txt_padding:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setTimePickerLayoutPadding(I)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 203
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 205
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 207
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 208
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 194
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    .line 195
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    .line 196
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is24hour"

    .line 197
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStart()V

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 222
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 223
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTimeChanged(Lcom/zte/mifavor/widget/TimePickerZTE;II)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setColor(I)V

    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->setColor(III)V

    return-void
.end method

.method public setTimePickerLayoutPadding(I)V
    .locals 2

    .line 227
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getTimePickerContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 229
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 228
    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE$2;-><init>(Lcom/zte/mifavor/widget/TimePickerDialogZTE;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 189
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

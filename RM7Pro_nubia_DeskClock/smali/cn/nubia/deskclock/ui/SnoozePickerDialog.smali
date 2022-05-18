.class public Lcn/nubia/deskclock/ui/SnoozePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "SnoozePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;,
        Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;,
        Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;
    }
.end annotation


# instance fields
.field private mCallBack:Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;

.field private mContext:Landroid/content/Context;

.field private mInitialMinute:I

.field private mInitialSecond:I

.field private mInterValStrings:[Ljava/lang/String;

.field private mOnClickListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

.field private mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

.field private final mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

.field private mTimesStrings:[Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mTimesStrings:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInterValStrings:[Ljava/lang/String;

    .line 44
    iput p4, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialMinute:I

    .line 45
    iput p5, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialSecond:I

    .line 46
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "themeContext":Landroid/content/Context;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

    if-nez v3, :cond_0

    .line 49
    new-instance v3, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;-><init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;Lcn/nubia/deskclock/ui/SnoozePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

    .line 52
    :cond_0
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    .line 55
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnClickListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnClickListener;

    .line 54
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    const-string v3, "layout_inflater"

    .line 57
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04006c

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->setView(Landroid/view/View;)V

    .line 60
    iput-object p3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;

    .line 61
    const v3, 0x7f12014e

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/SnoozePickerView;

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    .line 63
    const v3, 0x7f120071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mTitleView:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mTitleView:Landroid/widget/TextView;

    iget v4, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialMinute:I

    iget v5, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialSecond:I

    invoke-direct {p0, v4, v5}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->getTitleString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    iget v4, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 66
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    iget v4, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInitialSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 67
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/SnoozePickerView;->onTimeChanged()V

    .line 68
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    if-nez v3, :cond_1

    .line 69
    new-instance v3, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;-><init>(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V

    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    .line 72
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setOnTimeChangedListener(Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    .line 33
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;II)V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/SnoozePickerDialog;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->getTitleString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/SnoozePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private getTitleString(II)Ljava/lang/String;
    .locals 3
    .param p1, "times"    # I
    .param p2, "interVal"    # I

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mTimesStrings:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mInterValStrings:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->clearFocus()V

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mCallBack:Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    .line 102
    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentTimes()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    .line 103
    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentInterVal()I

    move-result v3

    .line 101
    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;->onSnoozeSet(Lcn/nubia/deskclock/ui/SnoozePickerView;II)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    const-string v1, "PICKER"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 118
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/SnoozePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 110
    return-void
.end method

.method public final updateTime(II)V
    .locals 2
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->mSnoozePickerView:Lcn/nubia/deskclock/ui/SnoozePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 96
    return-void
.end method

.class public Lcn/nubia/deskclock/ui/AlarmRingtonePicker;
.super Landroid/widget/LinearLayout;
.source "AlarmRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmRingtonePicker"


# instance fields
.field private mIsSilent:Z

.field private mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

.field private mRingtoneUri:Landroid/net/Uri;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mIsSilent:Z

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mIsSilent:Z

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->initView(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mIsSilent:Z

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->initView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v2, "layout_inflater"

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    const v2, 0x7f120085

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f12003f

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public clearThreadIfPossiable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->waitForCancel()V

    .line 89
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .line 91
    :cond_0
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method public getRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSlient()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mIsSilent:Z

    return v0
.end method

.method public setRingtone(Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 58
    const-string v0, "AlarmRingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingtone: uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneUri:Landroid/net/Uri;

    .line 61
    if-eqz p2, :cond_2

    .line 62
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .line 65
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    invoke-direct {v0, v1, p1, p2, v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mRingtoneThread:Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->start()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "isSilent"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mIsSilent:Z

    .line 81
    return-void
.end method

.method public setSummaryViewDefault()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    return-void
.end method

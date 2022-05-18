.class Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;
.super Ljava/lang/Thread;
.source "AlarmRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCanceled:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mValidateUri:Landroid/net/Uri;

.field private ringtoneTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mIsCanceled:Z

    .line 103
    iput-object p3, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mValidateUri:Landroid/net/Uri;

    .line 104
    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p4, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mTextView:Landroid/widget/TextView;

    .line 106
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->ringtoneTitle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 120
    const-string v2, "AlarmRingtonePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start loading default rintone, mIsCanceled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mIsCanceled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mIsCanceled:Z

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/deskclock/util/Utils;->restoreAlarmRingDefaultIfFileNotExist(Landroid/content/Context;)V

    .line 124
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mValidateUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 126
    .local v1, "r":Landroid/media/Ringtone;
    if-nez v1, :cond_1

    .line 127
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 130
    :cond_1
    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->ringtoneTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread$1;-><init>(Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public waitForCancel()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRingtonePicker$RingtoneThread;->mIsCanceled:Z

    .line 111
    return-void
.end method

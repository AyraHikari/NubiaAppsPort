.class public Lcn/nubia/touping/MainActivity;
.super Lcn/nubia/touping/AbstractActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;
    }
.end annotation


# static fields
.field public static final ACTION_MIROCAST_TOUPING_REFRESHVIEW:Ljava/lang/String; = "action.MIRACAST.NubiaWirelessTouPingForIntentBroadcastReceiver"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private myStopMediaCodecRevceiver:Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/touping/AbstractActivity;-><init>()V

    .line 165
    return-void
.end method

.method private processPc()V
    .locals 9

    .prologue
    const/16 v8, 0x67

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    const-string v6, "MainActivity"

    const-string v7, "processPc"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    iget-object v4, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, v8}, Lcn/nubia/touping/Utils/DialogManager;->showWifiDialog(I)V

    .line 128
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->isWifiConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    iget-object v4, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, v8}, Lcn/nubia/touping/Utils/DialogManager;->showWifiConnectDialog(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->is24GHz(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    iget-object v4, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, v8}, Lcn/nubia/touping/Utils/DialogManager;->showChangeWifiDialog(I)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v6, "android.permission.CAMERA"

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 111
    .local v0, "checkResult":Z
    :goto_1
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    move v1, v4

    .line 112
    .local v1, "checkResult2":Z
    :goto_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_6

    .line 113
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "android.permission.CAMERA"

    aput-object v7, v6, v5

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v6, v4

    const/16 v4, 0x16

    invoke-static {p0, v6, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    .end local v1    # "checkResult2":Z
    :cond_4
    move v0, v5

    .line 110
    goto :goto_1

    .restart local v0    # "checkResult":Z
    :cond_5
    move v1, v5

    .line 111
    goto :goto_2

    .line 116
    .restart local v1    # "checkResult2":Z
    :cond_6
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v2

    .line 117
    .local v2, "floatPermission":Z
    if-nez v2, :cond_7

    .line 118
    iget-object v4, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto :goto_0

    .line 121
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->dealWithInitSDK()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 122
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 125
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->restoreAllStatusValue()V

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v3, "intent":Landroid/content/Intent;
    const/16 v4, 0xde

    invoke-virtual {p0, v3, v4}, Lcn/nubia/touping/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private processTv()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x66

    .line 131
    const-string v4, "MainActivity"

    const-string v5, "processTv"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2, v6}, Lcn/nubia/touping/Utils/DialogManager;->showWifiDialog(I)V

    .line 160
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2, v6}, Lcn/nubia/touping/Utils/DialogManager;->showWifiConnectDialog(I)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->is24GHz(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2, v6}, Lcn/nubia/touping/Utils/DialogManager;->showChangeWifiDialog(I)V

    goto :goto_0

    .line 144
    :cond_2
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 145
    .local v0, "checkRecordAudio":Z
    :goto_1
    if-nez v0, :cond_4

    .line 146
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkRecordAudio":Z
    :cond_3
    move v0, v3

    .line 144
    goto :goto_1

    .line 149
    .restart local v0    # "checkRecordAudio":Z
    :cond_4
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v1

    .line 150
    .local v1, "floatPermission":Z
    if-nez v1, :cond_5

    .line 151
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcn/nubia/touping/Utils/DialogManager;->showFloatingPermissionDialog(I)V

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->dealWithInitSDK()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 158
    :cond_6
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcn/nubia/touping/MainActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;-><init>(Lcn/nubia/touping/MainActivity;Lcn/nubia/touping/MainActivity$1;)V

    iput-object v1, p0, Lcn/nubia/touping/MainActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;

    .line 191
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "action.MIRACAST.NubiaWirelessTouPingForIntentBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "cn.nubia.add.display.wfd.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcn/nubia/touping/MainActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/touping/MainActivity;->myStopMediaCodecRevceiver:Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->finish()V

    .line 232
    const/4 v0, 0x0

    const v1, 0x7f050018

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/MainActivity;->overridePendingTransition(II)V

    .line 233
    return-void
.end method

.method protected init()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    .line 71
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->init()V

    .line 72
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init getIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "from"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "from":I
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2, v0}, Lcn/nubia/touping/Utils/DialogManager;->showWifiDialog(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2, v0}, Lcn/nubia/touping/Utils/DialogManager;->showWifiConnectDialog(I)V

    goto :goto_0

    .line 87
    :cond_2
    if-ne v0, v5, :cond_3

    .line 88
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showChooseDeviceDialog()V

    goto :goto_0

    .line 89
    :cond_3
    const/16 v2, 0x67

    if-ne v0, v2, :cond_4

    .line 90
    invoke-direct {p0}, Lcn/nubia/touping/MainActivity;->processPc()V

    goto :goto_0

    .line 91
    :cond_4
    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcn/nubia/touping/MainActivity;->processTv()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7f080032

    const/16 v5, 0xde

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    const/16 v4, 0x68

    if-ne p1, v4, :cond_1

    .line 254
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    .line 300
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {p0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 262
    :cond_1
    const/16 v4, 0x69

    if-ne p1, v4, :cond_3

    .line 263
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->restoreAllStatusValue()V

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcn/nubia/touping/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 269
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {p0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 274
    :cond_3
    const/16 v4, 0x67

    if-ne p1, v4, :cond_7

    .line 275
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->dealWithInitSDK()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 279
    :cond_4
    const-string v4, "android.permission.CAMERA"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 280
    .local v0, "checkResult":Z
    :goto_1
    if-nez v0, :cond_6

    .line 281
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkResult":Z
    :cond_5
    move v0, v3

    .line 279
    goto :goto_1

    .line 283
    .restart local v0    # "checkResult":Z
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->restoreAllStatusValue()V

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcn/nubia/touping/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 288
    .end local v0    # "checkResult":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v2, 0x66

    if-ne p1, v2, :cond_9

    .line 289
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->dealWithInitSDK()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 293
    :cond_8
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V

    goto :goto_0

    .line 296
    :cond_9
    const/16 v2, 0x65

    if-ne p1, v2, :cond_a

    .line 297
    iget-object v2, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->showChooseDeviceDialog()V

    .line 299
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcn/nubia/touping/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v1, "MainActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 44
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MainActivity;->setContentView(I)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onDestroy()V

    .line 226
    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x65

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/touping/AbstractActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcn/nubia/touping/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 52
    iget-boolean v1, p0, Lcn/nubia/touping/MainActivity;->mHomeCancelFlag:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->init()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/touping/MainActivity;->mTvVipCancelFlag:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "from"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "from":I
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->getWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/Utils/DialogManager;->showWifiDialog(I)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p0}, Lcn/nubia/touping/Utils/UtilsWifi;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-object v1, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v1, v0}, Lcn/nubia/touping/Utils/DialogManager;->showWifiConnectDialog(I)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/DialogManager;->showChooseDeviceDialog()V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/touping/MainActivity;->mTvVipCancelFlag:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onPause()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/touping/MainActivity;->unRegisterBroadcastReceiver()V

    .line 213
    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0
    .param p1, "hasCapture"    # Z

    .prologue
    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onResume()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/MainActivity;->mHomeCancelFlag:Z

    .line 205
    invoke-direct {p0}, Lcn/nubia/touping/MainActivity;->registerBroadcastReceiver()V

    .line 206
    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcn/nubia/touping/AbstractActivity;->onStop()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/MainActivity;->mHomeCancelFlag:Z

    .line 220
    const-string v0, "MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/touping/AbstractActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 307
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected refreshViewByHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

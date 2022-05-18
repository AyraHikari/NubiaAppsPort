.class public Lcn/nubia/touping/HDMIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HDMIReceiver.java"


# static fields
.field private static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "cn.nubia.action.HDMI_PLUGGED"

.field private static final ACTION_USB_STATUS:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field private static final DELAYTIME:I = 0x258

.field private static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field private static final HandleMsgForGetDeviceNameBreakOff:I = 0x0

.field private static final HandleMsgForGetDeviceNameLink:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[HDMIReceiver]"

.field private static mHanlde:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcn/nubia/touping/HDMIReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/HDMIReceiver$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/nubia/touping/HDMIReceiver;->mHanlde:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/HDMIReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/HDMIReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/touping/HDMIReceiver;->onProjectionStart(Landroid/content/Context;)V

    return-void
.end method

.method private onProjectionEnd(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string v1, "[HDMIReceiver]"

    const-string v2, "onProjectionEnd()"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 218
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 219
    const-string v1, "[HDMIReceiver]"

    const-string v2, " -0- "

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "hdmi_for_voice=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method private onProjectionStart(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 194
    const-string v4, "[HDMIReceiver]"

    const-string v5, "onProjectionStart()"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "PRIVATE_MODE_WIRED"

    invoke-static {p1, v4, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 197
    .local v3, "privateMode":Z
    const-string v4, "PRIVATE_MODE_WIRED"

    invoke-static {v4, p1}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 198
    if-eqz v3, :cond_1

    .line 199
    const v4, 0x7f080068

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    const-string v4, "WIRED_SOUND_OUTPUT"

    invoke-static {p1, v4, v6}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 207
    .local v1, "hdmiForVoice":Z
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 208
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 209
    const-string v4, "[HDMIReceiver]"

    const-string v5, " -1- "

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "hdmi_for_voice=true"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/HDMIReceiver;->setWiredBuryingPoint()V

    .line 213
    return-void

    .line 201
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "hdmiForVoice":Z
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcn/nubia/touping/PrivateModeActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendMessageDelay(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isHDMIPlugged"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 46
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 47
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    sget-object v2, Lcn/nubia/touping/HDMIReceiver;->mHanlde:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v2, Lcn/nubia/touping/HDMIReceiver;->mHanlde:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setPrramWiredForGameCollectedData(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setWiredBuryingPoint()V
    .locals 6

    .prologue
    .line 239
    const-string v3, "[HDMIReceiver]"

    const-string v4, "setWiredBuryingPoint()"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->readNode()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "rawData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string v3, "[HDMIReceiver]"

    const-string v4, "hdmi node is null, please plug hdmi first."

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "hdmiNodes":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 247
    new-instance v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "node":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    iget v3, v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v4, v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v5, v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    invoke-static {v3, v4, v5}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->setParamWired(III)V

    goto :goto_0
.end method

.method private startLinkProcessService(ZLandroid/content/Context;)V
    .locals 4
    .param p1, "isHDMIPlugged"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/touping/LelinkProcessService;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "intentForService":Landroid/content/Intent;
    const-string v2, "FROM_KEY"

    const-string v3, "FROM_WIRE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    .end local v1    # "intentForService":Landroid/content/Intent;
    :goto_0
    return-void

    .line 231
    .restart local v1    # "intentForService":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v1    # "intentForService":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v10, "cn.nubia.action.HDMI_PLUGGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 79
    const-string v8, "state"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 80
    .local v4, "isHDMIPlugged":Z
    const-string v8, "[HDMIReceiver]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===========isHDMIPlugged=========== : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->onHdmiPluggedChanged(Z)V

    .line 83
    if-eqz v4, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/touping/HDMIReceiver;->onProjectionStart(Landroid/content/Context;)V

    .line 86
    const-string v8, "4"

    invoke-static {p1, v8}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->setTouPingType(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :goto_0
    invoke-static {p1, v4}, Lcn/nubia/touping/HDMIReceiver;->sendMessageDelay(Landroid/content/Context;Z)V

    .line 95
    invoke-direct {p0, v4, p1}, Lcn/nubia/touping/HDMIReceiver;->startLinkProcessService(ZLandroid/content/Context;)V

    .line 96
    invoke-static {}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->getInstance()Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->HdmiPluggedChanged(Landroid/content/Context;Z)V

    .line 191
    .end local v4    # "isHDMIPlugged":Z
    :cond_0
    :goto_1
    return-void

    .line 88
    .restart local v4    # "isHDMIPlugged":Z
    :cond_1
    sget-object v8, Lcn/nubia/touping/PrivateModeActivity;->sInstance:Lcn/nubia/touping/PrivateModeActivity;

    if-eqz v8, :cond_2

    .line 89
    sget-object v8, Lcn/nubia/touping/PrivateModeActivity;->sInstance:Lcn/nubia/touping/PrivateModeActivity;

    invoke-virtual {v8}, Lcn/nubia/touping/PrivateModeActivity;->finish()V

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/touping/HDMIReceiver;->onProjectionEnd(Landroid/content/Context;)V

    .line 92
    const/4 v8, 0x4

    invoke-static {v8}, Lcn/nubia/touping/Utils/MyPresentation;->crearList(I)V

    goto :goto_0

    .line 97
    .end local v4    # "isHDMIPlugged":Z
    :cond_3
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    const-string v8, "[HDMIReceiver]"

    const-string v9, "===========boot complete==========="

    invoke-static {v8, v9}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v8, Lcn/nubia/touping/HDMIReceiver$2;

    invoke-direct {v8, p0, p1}, Lcn/nubia/touping/HDMIReceiver$2;-><init>(Lcn/nubia/touping/HDMIReceiver;Landroid/content/Context;)V

    invoke-static {v8}, Lcn/nubia/touping/Utils/ThreadUtil;->postToWorkThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 169
    :cond_4
    const-string v10, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 172
    :try_start_0
    const-string v10, "connected"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    .local v1, "connected":Z
    const-string v10, "hostConnected"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 174
    .local v3, "hostConnected":Z
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "development_and_adb_switch_changed"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 176
    .local v5, "saveWiredTouPingChangedStatus":I
    if-ne v8, v5, :cond_5

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "development_settings_enabled_wiredtouping"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 178
    .local v6, "savedDevelopmentStatus":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled_wiredtouping"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 179
    .local v7, "savedUsbTexstStatus":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "development_settings_enabled"

    if-lez v6, :cond_6

    move v10, v8

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled"

    if-lez v7, :cond_7

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "development_and_adb_switch_changed"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    .end local v6    # "savedDevelopmentStatus":I
    .end local v7    # "savedUsbTexstStatus":I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hadSelectedWiredTouPingFlag"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 185
    .end local v1    # "connected":Z
    .end local v3    # "hostConnected":Z
    .end local v5    # "saveWiredTouPingChangedStatus":I
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "connected":Z
    .restart local v3    # "hostConnected":Z
    .restart local v5    # "saveWiredTouPingChangedStatus":I
    .restart local v6    # "savedDevelopmentStatus":I
    .restart local v7    # "savedUsbTexstStatus":I
    :cond_6
    move v10, v9

    .line 179
    goto :goto_2

    :cond_7
    move v8, v9

    .line 180
    goto :goto_3
.end method

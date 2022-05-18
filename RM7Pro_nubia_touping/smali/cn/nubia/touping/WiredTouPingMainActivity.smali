.class public Lcn/nubia/touping/WiredTouPingMainActivity;
.super Landroid/app/Activity;
.source "WiredTouPingMainActivity.java"


# static fields
.field public static PC_suggesetbirtate:I = 0x0

.field private static final STARTFORGETPERMISSON:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "WiredTouPingMainActivity"

.field public static bitrate:I = 0x0

.field public static height_level:I = 0x0

.field public static maxFps:I = 0x0

.field private static final permissionFlag:I = 0x1

.field public static switchForComeInExpandingSion:Z


# instance fields
.field protected mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    const/16 v0, 0x3c

    sput v0, Lcn/nubia/touping/WiredTouPingMainActivity;->maxFps:I

    .line 161
    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->height_level:I

    .line 162
    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->PC_suggesetbirtate:I

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/touping/WiredTouPingMainActivity;->switchForComeInExpandingSion:Z

    .line 344
    const/high16 v0, 0x3000000

    sput v0, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/WiredTouPingMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->hasAllPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/WiredTouPingMainActivity;)Landroid/media/projection/MediaProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/WiredTouPingMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initNubiaMirror()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/touping/WiredTouPingMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->connectNetThenTouPing()V

    return-void
.end method

.method private connectNetThenTouPing()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 207
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->hasAlertWindowPermission()Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    const v5, 0x7f0800b2

    invoke-virtual {p0, v5}, Lcn/nubia/touping/WiredTouPingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 209
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "request":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v3, v8}, Lcn/nubia/touping/WiredTouPingMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    .line 293
    .end local v3    # "request":Landroid/content/Intent;
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v2

    .line 217
    .local v2, "nubiaTouPingStatus":Z
    const-string v5, "WiredTouPingMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nubiaNubiaMirror nubiaTouPingStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    goto :goto_0

    .line 225
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v1

    .line 226
    .local v1, "isPlayMirrorStatus":Z
    if-eqz v1, :cond_2

    .line 227
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopMirrorTouPing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "isPlayMirrorStatus":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wiredToupingSwitchForTurnUSBTest"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 236
    .local v4, "switchStatus":I
    const-string v5, "WiredTouPingMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nubiaNubiaMirror switchStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-nez v4, :cond_3

    .line 238
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    goto :goto_0

    .line 229
    .end local v4    # "switchStatus":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const-string v5, "WiredTouPingMainActivity"

    const-string v6, "lebo touping close exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "switchStatus":I
    :cond_3
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->stopSocketLink()V

    .line 245
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v5

    new-instance v6, Lcn/nubia/touping/WiredTouPingMainActivity$2;

    invoke-direct {v6, p0}, Lcn/nubia/touping/WiredTouPingMainActivity$2;-><init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V

    invoke-virtual {v5, p0, v6}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V

    goto :goto_0
.end method

.method private hasAlertWindowPermission()Z
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 95
    .local v0, "alertwindowPermission":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hasAllPermission()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 113
    :try_start_0
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 114
    .local v0, "checkResult":Z
    :goto_0
    if-nez v0, :cond_1

    .line 115
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.RECORD_AUDIO"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "checkResult":Z
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 121
    goto :goto_1
.end method

.method private initNubiaMirror()V
    .locals 1

    .prologue
    .line 202
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 203
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredTouPingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/WiredTouPingMainActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/WiredTouPingMainActivity$1;-><init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public doSomethingWhenAgreen()V
    .locals 2

    .prologue
    .line 317
    :try_start_0
    new-instance v1, Lcn/nubia/touping/WiredTouPingMainActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/WiredTouPingMainActivity$3;-><init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    .line 169
    const-string v0, "WiredTouPingMainActivity"

    const-string v1, "list.size() = initData"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected initDataIntent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 175
    const-string v1, "maxFps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "maxFps"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->maxFps:I

    .line 178
    :cond_0
    const-string v1, "height_level"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "height_level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->height_level:I

    .line 180
    sget v1, Lcn/nubia/touping/WiredTouPingMainActivity;->height_level:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 181
    sput-boolean v3, Lcn/nubia/touping/WiredTouPingMainActivity;->switchForComeInExpandingSion:Z

    .line 187
    :cond_1
    :goto_0
    const-string v1, "bitrate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->PC_suggesetbirtate:I

    .line 189
    sget v1, Lcn/nubia/touping/WiredTouPingMainActivity;->PC_suggesetbirtate:I

    if-lez v1, :cond_2

    .line 190
    sget v1, Lcn/nubia/touping/WiredTouPingMainActivity;->PC_suggesetbirtate:I

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    sput v1, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I

    .line 193
    :cond_2
    const-string v1, "is_quick_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcn/nubia/touping/AbstractActivity;->isSupportDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    sput-boolean v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    .line 199
    :cond_3
    :goto_1
    return-void

    .line 183
    :cond_4
    sput-boolean v4, Lcn/nubia/touping/WiredTouPingMainActivity;->switchForComeInExpandingSion:Z

    goto :goto_0

    .line 196
    :cond_5
    sput-boolean v4, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 297
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 298
    const-string v0, "WiredTouPingMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 303
    const-string v0, "WiredTouPingMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaProjection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    .line 309
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startMediaCodec(Landroid/content/Context;Z)V

    .line 310
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f04002a

    invoke-virtual {p0, v3}, Lcn/nubia/touping/WiredTouPingMainActivity;->setContentView(I)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const-string v3, "HASAGREECTAAGREEMENT"

    invoke-static {p0, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "ctaFlag":Z
    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initData()V

    .line 72
    iget-object v3, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/DialogManager;->showCtaDialogForWiredTouPing()V

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 65
    .end local v0    # "ctaFlag":Z
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ctaFlag":Z
    :cond_1
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initView()V

    .line 77
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initNubiaMirror()V

    .line 79
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/touping/Utils/PhoneInfo;->getUsbInfo(Landroid/content/Intent;)I

    move-result v3

    sput v3, Lcn/nubia/touping/WiredTouPingMainActivity;->bitrate:I

    .line 81
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->hasAllPermission()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->hasAlertWindowPermission()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->connectNetThenTouPing()V

    goto :goto_1

    .line 83
    :cond_2
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->hasAlertWindowPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Lcn/nubia/touping/WiredTouPingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "request":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcn/nubia/touping/WiredTouPingMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 128
    :try_start_0
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 129
    .local v0, "checkResult":Z
    :goto_0
    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initData()V

    .line 131
    iget-object v4, p0, Lcn/nubia/touping/WiredTouPingMainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, p0}, Lcn/nubia/touping/Utils/DialogManager;->showJumpSettingsDialogForWired(Landroid/app/Activity;)V

    .line 151
    .end local v0    # "checkResult":Z
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    .restart local v0    # "checkResult":Z
    :cond_2
    if-ne p1, v4, :cond_0

    .line 135
    const/4 v3, 0x1

    .line 136
    .local v3, "requestResult":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, p3

    if-ge v2, v4, :cond_3

    .line 137
    aget v4, p3, v2

    if-eqz v4, :cond_4

    .line 138
    const/4 v3, 0x0

    .line 142
    :cond_3
    if-eqz v3, :cond_5

    .line 143
    invoke-direct {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->connectNetThenTouPing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v0    # "checkResult":Z
    .end local v2    # "i":I
    .end local v3    # "requestResult":Z
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkResult":Z
    .restart local v2    # "i":I
    .restart local v3    # "requestResult":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcn/nubia/touping/WiredTouPingMainActivity;->initDataIntent()V

    .line 157
    const-string v0, "WiredTouPingMainActivity"

    const-string v1, "usb start"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

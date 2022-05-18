.class public Lcom/google/zxing/activity/CaptureActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field public static final INTENT_EXTRA_KEY_QR_SCAN:Ljava/lang/String; = "qr_scan_result"

.field private static final REQUEST_CODE_SCAN_GALLERY:I = 0x64

.field public static final RESULT_CODE_QR_SCAN:I = 0xa1

.field public static final RESULT_CODE_USER_CANCLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CaptureActivity"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private back:Landroid/widget/ImageView;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private photo_path:Ljava/lang/String;

.field private playBeep:Z

.field private scanBitmap:Landroid/graphics/Bitmap;

.field private scandetalTextView:Landroid/widget/TextView;

.field private scanner_toolbar_title:Landroid/widget/TextView;

.field private vibrate:Z

.field private viewfinderView:Lcom/google/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    .line 93
    new-instance v0, Lcom/google/zxing/activity/CaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/activity/CaptureActivity$1;-><init>(Lcom/google/zxing/activity/CaptureActivity;)V

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/activity/CaptureActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/activity/CaptureActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->photo_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/zxing/activity/CaptureActivity;)Lcom/google/zxing/decoding/CaptureActivityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/activity/CaptureActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 153
    :cond_0
    return v1
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 368
    iget-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->setVolumeControlStream(I)V

    .line 370
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 371
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 372
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 376
    .local v6, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 377
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 378
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 379
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 381
    .local v7, "var3":Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    iget-object v2, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 332
    new-instance v2, Lcom/google/zxing/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "var3":Ljava/io/IOException;
    goto :goto_0

    .line 327
    .end local v0    # "var3":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "var4":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 388
    iget-boolean v1, p0, Lcom/google/zxing/activity/CaptureActivity;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 392
    :cond_0
    iget-boolean v1, p0, Lcom/google/zxing/activity/CaptureActivity;->vibrate:Z

    if-eqz v1, :cond_1

    .line 393
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 394
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 397
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method

.method private shwoDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v1, "TELL_DOWNLOAD_PC_LEBO"

    invoke-static {p0, v1, v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "tellFlag":I
    if-nez v0, :cond_0

    .line 161
    new-instance v1, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    .line 162
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->setCancelable(Z)V

    .line 163
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->show()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/view/ViewfinderView;->drawViewfinder()V

    .line 365
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/google/zxing/view/ViewfinderView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    invoke-virtual {v3}, Lcom/google/zxing/decoding/InactivityTimer;->onActivity()V

    .line 306
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 307
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "resultString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const-string v3, "Scan failed!"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 319
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    .line 320
    return-void

    .line 311
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v1, "resultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "qr_scan_result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v3, "CaptureActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 316
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 179
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    return-void

    .line 182
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->photo_path:Ljava/lang/String;

    .line 187
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 189
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u626b\u63cf..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/zxing/activity/CaptureActivity$5;

    invoke-direct {v1, p0}, Lcom/google/zxing/activity/CaptureActivity$5;-><init>(Lcom/google/zxing/activity/CaptureActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/zxing/activity/CaptureActivity;->setResult(I)V

    .line 290
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onBackPressed()V

    .line 291
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e00af

    const/4 v5, 0x0

    .line 104
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 107
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    invoke-virtual {v2, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 111
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    const v3, 0x7f040024

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->setContentView(I)V

    .line 112
    const v3, 0x7f0e0117

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 113
    .local v1, "toolbar":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->getStatusBarHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 115
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0, v6}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/view/ViewfinderView;

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    .line 118
    const v3, 0x7f0e0118

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->back:Landroid/widget/ImageView;

    .line 119
    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->back:Landroid/widget/ImageView;

    new-instance v4, Lcom/google/zxing/activity/CaptureActivity$2;

    invoke-direct {v4, p0}, Lcom/google/zxing/activity/CaptureActivity$2;-><init>(Lcom/google/zxing/activity/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f0e0119

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->scanner_toolbar_title:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->scanner_toolbar_title:Landroid/widget/TextView;

    new-instance v4, Lcom/google/zxing/activity/CaptureActivity$3;

    invoke-direct {v4, p0}, Lcom/google/zxing/activity/CaptureActivity$3;-><init>(Lcom/google/zxing/activity/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/view/ViewfinderView;

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    .line 133
    iput-boolean v5, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    .line 134
    new-instance v3, Lcom/google/zxing/decoding/InactivityTimer;

    invoke-direct {v3, p0}, Lcom/google/zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    .line 136
    const v3, 0x7f0e00b0

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->scandetalTextView:Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->scandetalTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/google/zxing/activity/CaptureActivity$4;

    invoke-direct {v4, p0}, Lcom/google/zxing/activity/CaptureActivity$4;-><init>(Lcom/google/zxing/activity/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->shwoDialog()V

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/InactivityTimer;->shutdown()V

    .line 296
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onDestroy()V

    .line 297
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;->dismiss()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mTellUser2DownloadPCLebo:Lcn/nubia/touping/Dialog/TellUser2DownloadPCLebo;

    .line 300
    const-string v0, "TELL_DOWNLOAD_PC_LEBO"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 302
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onPause()V

    .line 279
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    .line 284
    :cond_0
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->closeDriver()V

    .line 285
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 253
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 254
    const v3, 0x7f0e00ae

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 255
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 256
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v3, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    if-eqz v3, :cond_1

    .line 257
    invoke-direct {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 263
    :goto_0
    iput-object v4, p0, Lcom/google/zxing/activity/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 264
    iput-object v4, p0, Lcom/google/zxing/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 265
    iput-boolean v5, p0, Lcom/google/zxing/activity/CaptureActivity;->playBeep:Z

    .line 266
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/google/zxing/activity/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 268
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 269
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/zxing/activity/CaptureActivity;->playBeep:Z

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->initBeepSound()V

    .line 273
    iput-boolean v5, p0, Lcom/google/zxing/activity/CaptureActivity;->vibrate:Z

    .line 274
    return-void

    .line 259
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 260
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public scanningImage(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 247
    :goto_0
    return-object v9

    .line 220
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 221
    .local v1, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/String;>;"
    sget-object v10, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v11, "UTF8"

    invoke-virtual {v1, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/activity/CaptureActivity;->scanBitmap:Landroid/graphics/Bitmap;

    .line 225
    const/4 v10, 0x0

    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 226
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x43480000    # 200.0f

    div-float/2addr v10, v11

    float-to-int v4, v10

    .line 227
    .local v4, "sampleSize":I
    if-gtz v4, :cond_1

    .line 228
    const/4 v4, 0x1

    .line 231
    :cond_1
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 232
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/activity/CaptureActivity;->scanBitmap:Landroid/graphics/Bitmap;

    .line 233
    new-instance v5, Lcom/google/zxing/decoding/RGBLuminanceSource;

    iget-object v10, p0, Lcom/google/zxing/activity/CaptureActivity;->scanBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v10}, Lcom/google/zxing/decoding/RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v5, "source":Lcom/google/zxing/decoding/RGBLuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v10, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v10, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 235
    .local v0, "bitmap1":Lcom/google/zxing/BinaryBitmap;
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 238
    .local v3, "reader":Lcom/google/zxing/qrcode/QRCodeReader;
    :try_start_0
    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    goto :goto_0

    .line 239
    :catch_0
    move-exception v8

    .line 240
    .local v8, "var9":Lcom/google/zxing/NotFoundException;
    invoke-virtual {v8}, Lcom/google/zxing/NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v8    # "var9":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v6

    .line 242
    .local v6, "var10":Lcom/google/zxing/ChecksumException;
    invoke-virtual {v6}, Lcom/google/zxing/ChecksumException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v6    # "var10":Lcom/google/zxing/ChecksumException;
    :catch_2
    move-exception v7

    .line 244
    .local v7, "var11":Lcom/google/zxing/FormatException;
    invoke-virtual {v7}, Lcom/google/zxing/FormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 339
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    .line 345
    invoke-direct {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 348
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    .line 353
    return-void
.end method

.class public final Lcom/google/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/activity/CaptureActivity;

.field private final decodeThread:Lcom/google/zxing/decoding/DecodeThread;

.field private state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/zxing/activity/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/activity/CaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    .line 32
    new-instance v0, Lcom/google/zxing/decoding/DecodeThread;

    new-instance v1, Lcom/google/zxing/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/google/zxing/activity/CaptureActivity;->getViewfinderView()Lcom/google/zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/decoding/DecodeThread;-><init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    .line 33
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/DecodeThread;->start()V

    .line 34
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 35
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->startPreview()V

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 37
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 90
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 91
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, p0, v1}, Lcom/google/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 92
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/activity/CaptureActivity;->drawViewfinder()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f0e0004

    .line 41
    iget v4, p1, Landroid/os/Message;->what:I

    .line 42
    .local v4, "what":I
    if-ne v4, v7, :cond_1

    .line 43
    iget-object v5, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    sget-object v6, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    if-ne v5, v6, :cond_0

    .line 44
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5, p0, v7}, Lcom/google/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const v5, 0x7f0e0014

    if-ne v4, v5, :cond_2

    .line 47
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v6, "Got restart preview message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 49
    :cond_2
    const v5, 0x7f0e0007

    if-ne v4, v5, :cond_4

    .line 50
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v6, "Got decode succeeded message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v5, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 53
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 54
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v6, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/zxing/Result;

    invoke-virtual {v6, v5, v0}, Lcom/google/zxing/activity/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 53
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_3
    const-string v5, "barcode_bitmap"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v0, v5

    goto :goto_1

    .line 55
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    const v5, 0x7f0e0006

    if-ne v4, v5, :cond_5

    .line 56
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v5, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 57
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v6}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const v7, 0x7f0e0005

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 58
    :cond_5
    const v5, 0x7f0e0015

    if-ne v4, v5, :cond_6

    .line 59
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v6, "Got return scan result message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v6, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    const/4 v7, -0x1

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v6, v7, v5}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    iget-object v5, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v5}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_6
    const v5, 0x7f0e000d

    if-ne v4, v5, :cond_0

    .line 63
    sget-object v5, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v6, "Got product query message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v5, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v5, v2}, Lcom/google/zxing/activity/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 74
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraManager;->stopPreview()V

    .line 75
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0e0013

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const v1, 0x7f0e0007

    invoke-virtual {p0, v1}, Lcom/google/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 84
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/google/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.class final Lcom/google/zxing/decoding/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"


# instance fields
.field private final activity:Lcom/google/zxing/activity/CaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/zxing/activity/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/activity/CaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/zxing/decoding/DecodeThread;->activity:Lcom/google/zxing/activity/CaptureActivity;

    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    new-instance p2, Ljava/util/Vector;

    .end local p2    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 31
    .restart local p2    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 32
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 33
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    if-eqz p3, :cond_2

    .line 38
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 55
    new-instance v0, Lcom/google/zxing/decoding/DecodeHandler;

    iget-object v1, p0, Lcom/google/zxing/decoding/DecodeThread;->activity:Lcom/google/zxing/activity/CaptureActivity;

    iget-object v2, p0, Lcom/google/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/decoding/DecodeHandler;-><init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->handler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcom/google/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 57
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 58
    return-void
.end method

.class public Lcom/android/captureCamera/CaptureCameraService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/captureCamera/CaptureCameraService$a;
    }
.end annotation


# static fields
.field private static final M:Landroid/util/Size;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Landroid/content/SharedPreferences;

.field private D:Z

.field private E:Lcom/android/captureCamera/l;

.field private final F:Ljava/lang/Object;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Landroid/media/ImageReader$OnImageAvailableListener;

.field private I:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private J:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private K:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private L:Landroid/os/Handler;

.field private N:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private O:Landroid/os/IBinder;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/hardware/camera2/CameraManager;

.field private e:Landroid/hardware/camera2/CameraDevice;

.field private f:Landroid/hardware/camera2/CameraCaptureSession;

.field private g:Landroid/util/Size;

.field private h:J

.field private i:I

.field private j:Lcom/android/captureCamera/d;

.field private k:Landroid/hardware/camera2/CameraCharacteristics;

.field private l:Z

.field private m:Lcom/android/captureCamera/a;

.field private n:Landroid/os/Vibrator;

.field private o:Lcom/android/captureCamera/b;

.field private p:Lcom/android/captureCamera/e;

.field private q:Lcom/android/captureCamera/i;

.field private r:Lcom/android/captureCamera/CaptureCameraService$a;

.field private s:I

.field private volatile t:Z

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 573
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1f40

    const/16 v2, 0x1770

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/captureCamera/CaptureCameraService;->M:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->b:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->c:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    .line 72
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->e:Landroid/hardware/camera2/CameraDevice;

    .line 73
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;

    .line 74
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    const-wide/16 v1, 0x0

    .line 75
    iput-wide v1, p0, Lcom/android/captureCamera/CaptureCameraService;->h:J

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/android/captureCamera/CaptureCameraService;->i:I

    .line 77
    sget-object v2, Lcom/android/captureCamera/d;->a:Lcom/android/captureCamera/d;

    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    .line 78
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    .line 79
    iput-boolean v1, p0, Lcom/android/captureCamera/CaptureCameraService;->l:Z

    .line 80
    new-instance v2, Lcom/android/captureCamera/a;

    invoke-direct {v2}, Lcom/android/captureCamera/a;-><init>()V

    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    .line 81
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->n:Landroid/os/Vibrator;

    .line 82
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->o:Lcom/android/captureCamera/b;

    .line 83
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->p:Lcom/android/captureCamera/e;

    .line 84
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->q:Lcom/android/captureCamera/i;

    .line 85
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->r:Lcom/android/captureCamera/CaptureCameraService$a;

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Lcom/android/captureCamera/CaptureCameraService;->s:I

    const/4 v2, 0x1

    .line 88
    iput-boolean v2, p0, Lcom/android/captureCamera/CaptureCameraService;->t:Z

    const-string v3, "pref_water_mark_key"

    .line 89
    iput-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->u:Ljava/lang/String;

    const-string v3, "pref_water_mark_time_key"

    .line 90
    iput-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->v:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/android/captureCamera/CaptureCameraService;->w:I

    .line 92
    iput v2, p0, Lcom/android/captureCamera/CaptureCameraService;->x:I

    const/4 v2, 0x2

    .line 93
    iput v2, p0, Lcom/android/captureCamera/CaptureCameraService;->y:I

    const/4 v2, 0x3

    .line 94
    iput v2, p0, Lcom/android/captureCamera/CaptureCameraService;->z:I

    const-string v2, "channel_id"

    .line 96
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->A:Ljava/lang/String;

    const/16 v2, 0x3e9

    .line 97
    iput v2, p0, Lcom/android/captureCamera/CaptureCameraService;->B:I

    .line 101
    iput-boolean v1, p0, Lcom/android/captureCamera/CaptureCameraService;->D:Z

    .line 102
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->F:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$1;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$1;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->G:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$2;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$2;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->H:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 172
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$3;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$3;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->I:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 231
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$4;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$4;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->J:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 254
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$5;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$5;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->K:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 451
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$6;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$6;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->L:Landroid/os/Handler;

    .line 659
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$7;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$7;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->N:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 681
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$8;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/CaptureCameraService$8;-><init>(Lcom/android/captureCamera/CaptureCameraService;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->O:Landroid/os/IBinder;

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;I)I
    .locals 2

    .line 396
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-nez v0, :cond_0

    sub-int/2addr p1, p2

    add-int/lit16 p1, p1, 0x168

    .line 401
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    .line 403
    rem-int/lit16 p1, p1, 0x168

    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/captureCamera/CaptureCameraService;->s:I

    return p1
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->c:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method private a(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 602
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CaptureCameraService"

    const-string v0, "getCameraCharacteristics failed!"

    .line 604
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->e:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private a([Landroid/util/Size;DD)Landroid/util/Size;
    .locals 12

    move-object v0, p1

    .line 373
    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    .line 374
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    if-nez v2, :cond_1

    move-object v2, v6

    move-wide v3, v7

    :cond_1
    sub-double v9, v7, p2

    .line 382
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p4

    if-lez v9, :cond_2

    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lt v9, v10, :cond_3

    sub-double v9, v3, p2

    .line 384
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p4

    if-lez v9, :cond_4

    :cond_3
    move-object v2, v6

    move-wide v3, v7

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Lcom/android/captureCamera/b;)Lcom/android/captureCamera/b;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->o:Lcom/android/captureCamera/b;

    return-object p1
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Lcom/android/captureCamera/d;)Lcom/android/captureCamera/d;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/d;->c:Lcom/android/captureCamera/d;

    if-ne v0, v1, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->i()Z

    move-result v0

    const-string v1, "CaptureCameraService"

    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->c()V

    .line 213
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->d()V

    const-string v0, "takePicture failed. It is screen on!"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_2
    sget-object v0, Lcom/android/captureCamera/d;->c:Lcom/android/captureCamera/d;

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/captureCamera/CaptureCameraService;->h:J

    .line 219
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->b()V

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/android/captureCamera/CaptureCameraService;->i:I

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    iget v2, p0, Lcom/android/captureCamera/CaptureCameraService;->s:I

    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v4, p0, Lcom/android/captureCamera/CaptureCameraService;->p:Lcom/android/captureCamera/e;

    invoke-virtual {v4}, Lcom/android/captureCamera/e;->a()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/captureCamera/CaptureCameraService;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/captureCamera/l;->a(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "takePicture failed!"

    .line 225
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->L:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->L:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "notification"

    .line 691
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 692
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 694
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 696
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "camera_more_setting"

    const/4 v2, 0x1

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.camera"

    .line 698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    .line 699
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 701
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/captureCamera/CaptureCameraService;->A:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v2, Lcn/nubia/camera/e/a$a;->a:I

    .line 703
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->a:Ljava/lang/String;

    .line 704
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 706
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 707
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 709
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->B:I

    invoke-virtual {p0, v0, p1}, Lcom/android/captureCamera/CaptureCameraService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 193
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    if-eq v0, p1, :cond_0

    .line 194
    iget-wide v0, p0, Lcom/android/captureCamera/CaptureCameraService;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/captureCamera/CaptureCameraService;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->a()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/captureCamera/CaptureCameraService;->a(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraManager;)Z
    .locals 7

    const/4 v0, 0x0

    .line 531
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 533
    array-length v3, v1

    if-lez v3, :cond_0

    .line 534
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v1, Lcom/android/captureCamera/g$a;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    const-string p1, "HALWaterMark"

    .line 537
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3a

    .line 539
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x3b

    .line 540
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 541
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CaptureCameraService"

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/android/captureCamera/CaptureCameraService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/captureCamera/CaptureCameraService;->l:Z

    return p1
.end method

.method private b(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .locals 7

    const-string v0, "CaptureCameraService"

    const/4 v1, 0x0

    .line 555
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 556
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 557
    aget-object v4, v2, v3

    .line 558
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 559
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "initCameraID failed!"

    .line 566
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraID : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "android.permission.CAMERA"

    .line 275
    invoke-static {p0, v0}, Landroidx/core/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->K:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->L:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 286
    sget-object v0, Lcom/android/captureCamera/d;->b:Lcom/android/captureCamera/d;

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CaptureCameraService"

    const-string v1, "openCamera: failed.."

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/android/captureCamera/CaptureCameraService;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/captureCamera/CaptureCameraService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/captureCamera/CaptureCameraService;->t:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->o:Lcom/android/captureCamera/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 297
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->o:Lcom/android/captureCamera/b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 299
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Lcom/android/captureCamera/b;->b()V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->r:Lcom/android/captureCamera/CaptureCameraService$a;

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {v0}, Lcom/android/captureCamera/CaptureCameraService$a;->disable()V

    .line 307
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->l:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->l:Z

    .line 309
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->g()V

    .line 310
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->e:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 312
    iput-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->e:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "CaptureCameraService"

    const-string v1, "closeCamera"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "CaptureCameraService"

    const-string v1, "closeCamera failed"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 299
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/android/captureCamera/CaptureCameraService;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->i()Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    invoke-virtual {v0}, Lcom/android/captureCamera/l;->a()V

    return-void
.end method

.method static synthetic d(Lcom/android/captureCamera/CaptureCameraService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/captureCamera/CaptureCameraService;->l:Z

    return p0
.end method

.method static synthetic e(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    return-object p0
.end method

.method private e()V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "startCapture"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->j:Lcom/android/captureCamera/d;

    sget-object v1, Lcom/android/captureCamera/d;->a:Lcom/android/captureCamera/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    .line 328
    invoke-virtual {v0}, Lcom/android/captureCamera/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/captureCamera/CaptureCameraService;->h:J

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->m:Lcom/android/captureCamera/a;

    invoke-virtual {v0}, Lcom/android/captureCamera/a;->a()V

    return-void
.end method

.method private f()V
    .locals 5

    const-string v0, "CaptureCameraService"

    const-string v1, "startPreview"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->h()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->I:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "startPreview failed!"

    .line 339
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->b()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 347
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->f:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->e()V

    return-void
.end method

.method static synthetic h(Lcom/android/captureCamera/CaptureCameraService;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/captureCamera/CaptureCameraService;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/captureCamera/CaptureCameraService;->i:I

    return v0
.end method

.method private h()Landroid/hardware/camera2/CaptureRequest;
    .locals 8

    const/4 v0, 0x0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->e:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 359
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/util/Size;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    .line 361
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    iget-object v4, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v1, v4

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v2, p0

    .line 360
    invoke-direct/range {v2 .. v7}, Lcom/android/captureCamera/CaptureCameraService;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v1

    .line 362
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    invoke-virtual {v1}, Lcom/android/captureCamera/l;->b()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CaptureCameraService"

    const-string v3, "getPreviewRequestList failed"

    .line 365
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/captureCamera/CaptureCameraService;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/captureCamera/CaptureCameraService;->i:I

    return p0
.end method

.method private i()Z
    .locals 1

    const-string v0, "power"

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 414
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/android/captureCamera/CaptureCameraService;)Landroid/os/Vibrator;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->n:Landroid/os/Vibrator;

    return-object p0
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CaptureCameraService"

    const-string v3, "Setting not found"

    .line 429
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic k(Lcom/android/captureCamera/CaptureCameraService;)Ljava/lang/Object;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->F:Ljava/lang/Object;

    return-object p0
.end method

.method private k()Z
    .locals 4

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->c:Landroid/content/Context;

    const-string v2, "phone"

    .line 438
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 439
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CaptureCameraService"

    const-string v3, "isPhoneCalled failed!"

    .line 446
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method static synthetic l(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->o:Lcom/android/captureCamera/b;

    return-object p0
.end method

.method private l()V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "register"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nubia_bt.capture"

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.captureCamera.CaptureCameraService"

    .line 493
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/captureCamera/CaptureCameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic m(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/e;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->p:Lcom/android/captureCamera/e;

    return-object p0
.end method

.method private m()V
    .locals 7

    const-string v0, "camera"

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    .line 499
    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->C:Landroid/content/SharedPreferences;

    const-string v1, "key_hal_water_mark_supported"

    .line 500
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "CaptureCameraService"

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->C:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->D:Z

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 504
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->a(Landroid/hardware/camera2/CameraManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->D:Z

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: takes "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->C:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/captureCamera/CaptureCameraService;->D:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->b(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->b:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v1, v0}, Lcom/android/captureCamera/CaptureCameraService;->a(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    .line 511
    new-instance v0, Lcom/android/captureCamera/e;

    invoke-direct {v0}, Lcom/android/captureCamera/e;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->p:Lcom/android/captureCamera/e;

    .line 512
    new-instance v0, Lcom/android/captureCamera/c;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->q:Lcom/android/captureCamera/i;

    const-string v0, "vibrator"

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->n:Landroid/os/Vibrator;

    .line 514
    new-instance v0, Lcom/android/captureCamera/CaptureCameraService$a;

    invoke-virtual {p0}, Lcom/android/captureCamera/CaptureCameraService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/captureCamera/CaptureCameraService$a;-><init>(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->r:Lcom/android/captureCamera/CaptureCameraService$a;

    .line 516
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->n()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; getHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->p()I

    move-result v0

    iput v0, p0, Lcom/android/captureCamera/CaptureCameraService;->s:I

    .line 519
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->N:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 521
    iget-boolean v0, p0, Lcom/android/captureCamera/CaptureCameraService;->D:Z

    if-eqz v0, :cond_1

    .line 522
    new-instance v0, Lcom/android/captureCamera/h;

    invoke-direct {v0}, Lcom/android/captureCamera/h;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    goto :goto_1

    .line 524
    :cond_1
    new-instance v0, Lcom/android/captureCamera/k;

    invoke-direct {v0}, Lcom/android/captureCamera/k;-><init>()V

    iput-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    iget-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->H:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/android/captureCamera/CaptureCameraService;->g:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/captureCamera/l;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/util/Size;)V

    return-void
.end method

.method private n()Landroid/util/Size;
    .locals 10

    .line 575
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->k:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x100

    .line 576
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 577
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 581
    array-length v4, v0

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v0, v5

    .line 582
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    if-le v8, v6, :cond_0

    .line 583
    sget-object v9, Lcom/android/captureCamera/CaptureCameraService;->M:Landroid/util/Size;

    invoke-virtual {v7, v9}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v3, v7

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v6, v1

    .line 589
    :cond_2
    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v4, v2, v1

    .line 590
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v5, v7

    if-le v5, v6, :cond_3

    .line 591
    sget-object v7, Lcom/android/captureCamera/CaptureCameraService;->M:Landroid/util/Size;

    invoke-virtual {v4, v7}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v3, v4

    move v6, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method static synthetic n(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/i;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->q:Lcom/android/captureCamera/i;

    return-object p0
.end method

.method static synthetic o(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/CaptureCameraService$a;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->r:Lcom/android/captureCamera/CaptureCameraService$a;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->G:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/captureCamera/CaptureCameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    iput-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->G:Landroid/content/BroadcastReceiver;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/captureCamera/CaptureCameraService;->N:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 626
    iput-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->N:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 627
    iput-object v1, p0, Lcom/android/captureCamera/CaptureCameraService;->d:Landroid/hardware/camera2/CameraManager;

    :cond_1
    return-void
.end method

.method private p()I
    .locals 5

    .line 646
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_water_mark_key"

    const-string v2, "off"

    .line 647
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "pref_water_mark_time_key"

    .line 648
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic p(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/l;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->E:Lcom/android/captureCamera/l;

    return-object p0
.end method

.method static synthetic q(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->f()V

    return-void
.end method

.method static synthetic r(Lcom/android/captureCamera/CaptureCameraService;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->J:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static synthetic s(Lcom/android/captureCamera/CaptureCameraService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->c()V

    return-void
.end method

.method static synthetic t(Lcom/android/captureCamera/CaptureCameraService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/captureCamera/CaptureCameraService;->t:Z

    return p0
.end method

.method static synthetic u(Lcom/android/captureCamera/CaptureCameraService;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/captureCamera/CaptureCameraService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lcom/android/captureCamera/CaptureCameraService;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/captureCamera/CaptureCameraService;->s:I

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->O:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "onCreate"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 484
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->m()V

    .line 485
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->l()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CaptureCameraService"

    const-string v1, "onDestroy"

    .line 611
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 613
    iget-object v0, p0, Lcom/android/captureCamera/CaptureCameraService;->L:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->c()V

    .line 615
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->d()V

    .line 616
    invoke-direct {p0}, Lcom/android/captureCamera/CaptureCameraService;->o()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 467
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x19

    if-le p2, p3, :cond_0

    const-string p2, "notification_title"

    .line 468
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/captureCamera/CaptureCameraService;->a:Ljava/lang/String;

    .line 469
    invoke-direct {p0, p0}, Lcom/android/captureCamera/CaptureCameraService;->a(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

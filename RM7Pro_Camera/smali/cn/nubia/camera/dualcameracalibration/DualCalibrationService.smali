.class public Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;,
        Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

.field private c:Landroid/os/Message;

.field private g:Landroid/hardware/camera2/CameraManager;

.field private h:Ljava/lang/String;

.field private i:Landroid/util/Size;

.field private j:Landroid/hardware/camera2/CameraDevice;

.field private k:Landroid/media/ImageReader;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private q:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ArcSoftDualCalibration/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "DualCameraCalibration"

    .line 59
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c:Landroid/os/Message;

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k:Landroid/media/ImageReader;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->l:Z

    .line 96
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->m:Z

    .line 296
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->p:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 322
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$2;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->q:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const-string v0, "channel_id"

    .line 456
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->r:Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 457
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->s:I

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v1, "service oncreate"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const v0, 0x7f0f002d

    .line 460
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 461
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 462
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->r:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 464
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 470
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->r:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 471
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/high16 v1, 0x7f0d0000

    .line 472
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 478
    iget v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->s:I

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 483
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->m:Z

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->t:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->t:Landroid/widget/Toast;

    .line 490
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".txt"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->l:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "targetPath("

    const/4 v1, 0x0

    .line 230
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    invoke-static {v2, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mounted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") existence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canWrite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 238
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canRead = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canExecute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-static {v4, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sourceFile1("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") exist"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 244
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 245
    iget-object v6, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byteRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 249
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 250
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 p1, 0x1

    .line 251
    invoke-virtual {v3, p1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 252
    invoke-virtual {v3, p1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 253
    invoke-virtual {v3, p1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 254
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") file generated successfully..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 257
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v0, "sourcePath not exist!!!"

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate targetPath("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") file..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic b()Z
    .locals 1

    .line 57
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->l:Z

    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WriteSuccess.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WriteFail.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NoEepromFile.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/media/ImageReader;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k:Landroid/media/ImageReader;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v2, "OK"

    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 206
    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-array v2, v2, [B

    .line 208
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 209
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    const-string v1, "read result failed"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "IOException when read file "

    :goto_0
    return-object v1
.end method

.method static synthetic f(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->q:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method private f()V
    .locals 6

    const-string v0, "android.permission.CAMERA"

    .line 268
    invoke-static {p0, v0}, Landroidx/core/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->l:Z

    return-void

    :cond_0
    const-string v0, "camera"

    .line 272
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g:Landroid/hardware/camera2/CameraManager;

    .line 274
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 275
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v2, 0x100

    .line 276
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->i:Landroid/util/Size;

    .line 277
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->i:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v0, v3, v2, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k:Landroid/media/ImageReader;

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->p:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    iput-boolean v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->l:Z

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v1, "sendRewriteSuccessBroadcast"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.calibrationdone"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    const-string v2, "ok"

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->n:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v1, "releaseCameraResources"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 411
    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->k:Landroid/media/ImageReader;

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 415
    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j:Landroid/hardware/camera2/CameraDevice;

    .line 417
    :cond_1
    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    return-object p0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    .line 421
    invoke-static {}, Lcn/nubia/camera/ba/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-static {}, Lcn/nubia/camera/ba/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data/vendor/camera/Result.txt"

    return-object v0

    :cond_0
    const-string v0, "sys/kernel/camera/eeprom_calibration"

    return-object v0

    :cond_1
    const-string v0, "/data/misc/camera/Result.txt"

    return-object v0
.end method

.method static synthetic j(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->g()V

    return-void
.end method

.method private static j()Z
    .locals 1

    .line 433
    invoke-static {}, Lcn/nubia/camera/ba/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    .line 437
    invoke-static {}, Lcn/nubia/camera/ba/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-static {}, Lcn/nubia/camera/ba/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data/nubiaeffect/new_eeprom_data.dat"

    return-object v0

    :cond_0
    const-string v0, "sys/kernel/camera/eeprom_calibration"

    return-object v0

    :cond_1
    const-string v0, "/data/misc/camera/new_eeprom_data.dat"

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 449
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "2"

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 143
    invoke-direct {p0, p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->h()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "forSale"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->m:Z

    const-string v0, "caliDIR"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->e:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EEPROM.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->n:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->d()V

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u65b0EEPROM\u4fe1\u606f\u4e0d\u5b58\u5728\uff01\uff01\u8bf7\u91cd\u65b0\u6821\u51c6\uff01"

    .line 113
    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/CharSequence;)V

    const-string v0, "NoEepromFile"

    .line 114
    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.calibrationdone"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    const-string v2, "fail"

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c:Landroid/os/Message;

    const/4 v1, 0x2

    .line 121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c:Landroid/os/Message;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->n:Ljava/lang/String;

    sget-object v1, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u62f7\u8d1d\u65b0EEPROM\u6587\u4ef6\u81f3/data/misc/camera\u5931\u8d25\uff01"

    .line 132
    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->stopSelf()V

    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->f()V

    const-string v0, "\u6b63\u5728\u5199EEPROM\u4fe1\u606f\uff0c\u970015\u79d2\uff0c\u8bf7\u52ff\u505a\u5176\u4ed6\u64cd\u4f5c\uff01\uff01"

    .line 126
    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c:Landroid/os/Message;

    const/4 v1, 0x1

    .line 128
    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->b:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->c:Landroid/os/Message;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;->a:Ljava/lang/String;

    const-string v1, "sendMessageDelayed"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

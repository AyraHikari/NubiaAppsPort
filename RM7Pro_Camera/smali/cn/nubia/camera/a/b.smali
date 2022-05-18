.class public Lcn/nubia/camera/a/b;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcn/nubia/camera/d;

.field private i:Z

.field private j:Lcn/nubia/camera/am/b;

.field private k:I

.field private l:Z

.field private m:Lcn/nubia/camera/am/c;

.field private final n:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private o:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->a:Z

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->b:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->c:Z

    .line 46
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->d:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->e:Z

    .line 50
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->f:Z

    const/4 v2, -0x1

    .line 65
    iput v2, p0, Lcn/nubia/camera/a/b;->g:I

    .line 67
    new-instance v3, Lcn/nubia/camera/e;

    invoke-direct {v3, p0}, Lcn/nubia/camera/e;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcn/nubia/camera/a/b;->h:Lcn/nubia/camera/d;

    .line 69
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->i:Z

    .line 76
    iput v2, p0, Lcn/nubia/camera/a/b;->k:I

    .line 77
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->l:Z

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcn/nubia/camera/a/b;->m:Lcn/nubia/camera/am/c;

    .line 80
    new-instance v1, Lcn/nubia/camera/a/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/b$1;-><init>(Lcn/nubia/camera/a/b;)V

    iput-object v1, p0, Lcn/nubia/camera/a/b;->n:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 351
    new-instance v1, Lcn/nubia/camera/a/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/b$2;-><init>(Lcn/nubia/camera/a/b;)V

    iput-object v1, p0, Lcn/nubia/camera/a/b;->o:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 456
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->p:Z

    .line 457
    new-instance v0, Lcn/nubia/camera/a/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a/b$3;-><init>(Lcn/nubia/camera/a/b;)V

    iput-object v0, p0, Lcn/nubia/camera/a/b;->q:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcn/nubia/camera/a/b$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a/b$4;-><init>(Lcn/nubia/camera/a/b;)V

    iput-object v0, p0, Lcn/nubia/camera/a/b;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 5

    const-string v0, "BaseActivity"

    const-string v1, "verifyCameraInfo"

    .line 290
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "camera"

    .line 291
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    .line 292
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->a:Z

    const/4 v2, 0x1

    .line 294
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 296
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/e;->j()I

    move-result v4

    array-length v3, v3

    if-ne v4, v3, :cond_0

    .line 297
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ak/a;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    :cond_0
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/CameraApplication;->a(Landroid/content/Context;)V

    .line 300
    :cond_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->j()I

    move-result v3

    if-nez v3, :cond_2

    .line 301
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->a:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 304
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 305
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->a:Z

    .line 307
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/camera/a/b;->a:Z

    if-eqz v3, :cond_3

    .line 308
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->p:Z

    .line 309
    iget-object v1, p0, Lcn/nubia/camera/a/b;->o:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/a/b;->q:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 401
    invoke-static {p1, p0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    .line 402
    iget v0, p0, Lcn/nubia/camera/a/b;->k:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/camera/a/b;->setShowWhenLocked(Z)V

    .line 407
    :cond_2
    iput p1, p0, Lcn/nubia/camera/a/b;->k:I

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWhenLockedState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/a/b;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseActivity"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 410
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->l:Z

    if-nez v0, :cond_3

    .line 415
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/a/b;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/a/b;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->l:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 428
    iget-boolean p1, p0, Lcn/nubia/camera/a/b;->l:Z

    if-eqz p1, :cond_4

    .line 429
    iget-object p1, p0, Lcn/nubia/camera/a/b;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/a/b;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lcn/nubia/camera/a/b;->l:Z

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->b()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a/b;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/a/b;->a:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/b;->n:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->a()Z

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->b()Z

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->i:Z

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/a/b;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcn/nubia/camera/a/b;->p:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/a/b;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/camera/a/b;->p:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/a/b;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/camera/a/b;->g:I

    return p0
.end method

.method private c()Z
    .locals 3

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    .line 328
    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->i:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0}, Lcn/nubia/camera/am/b;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->i:Z

    .line 334
    iget-object v1, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v1}, Lcn/nubia/camera/am/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BaseActivity"

    const-string v2, "CriticalPermission miss, return"

    .line 335
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcn/nubia/camera/a/b;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/a/b;->o:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 374
    iget v0, p0, Lcn/nubia/camera/a/b;->g:I

    if-ltz v0, :cond_3

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 375
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->b:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const v0, 0x7f0c0031

    .line 376
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->a(I)V

    .line 377
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->b:Z

    .line 378
    iget v0, p0, Lcn/nubia/camera/a/b;->g:I

    if-lt v0, v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->Q()V

    .line 380
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->b:Z

    .line 382
    :cond_0
    iget v0, p0, Lcn/nubia/camera/a/b;->g:I

    if-lt v0, v1, :cond_3

    .line 383
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->p()V

    .line 384
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->c:Z

    goto :goto_0

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->d:Z

    if-nez v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->Q()V

    .line 388
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->d:Z

    .line 389
    iget v0, p0, Lcn/nubia/camera/a/b;->g:I

    if-lt v0, v1, :cond_3

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->p()V

    .line 391
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->c:Z

    goto :goto_0

    .line 393
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->c:Z

    if-nez v0, :cond_3

    .line 394
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->p()V

    .line 395
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->c:Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/a/b;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/a/b;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/a/b;)Lcn/nubia/camera/d;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/a/b;->h:Lcn/nubia/camera/d;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->d()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/a/b;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/camera/a/b;->k:I

    return p0
.end method


# virtual methods
.method protected Q()V
    .locals 0

    return-void
.end method

.method protected R()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->a:Z

    return v0
.end method

.method protected S()Lcn/nubia/camera/d;
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/nubia/camera/a/b;->h:Lcn/nubia/camera/d;

    return-object v0
.end method

.method public T()V
    .locals 3

    .line 435
    iget v0, p0, Lcn/nubia/camera/a/b;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 436
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->c(Landroid/content/Context;)Z

    move-result v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseActivity"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/16 v0, 0x2711

    .line 441
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->finishActivity(I)V

    .line 442
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->U()V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "exitShowWhenLocked"

    .line 448
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2711

    .line 449
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->finishActivity(I)V

    .line 450
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->finish()V

    const/4 v0, -0x1

    .line 451
    iput v0, p0, Lcn/nubia/camera/a/b;->k:I

    return-void
.end method

.method public V()Z
    .locals 4

    .line 484
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/a/b;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "firstapp"

    const/4 v3, 0x1

    .line 485
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 487
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Lcn/nubia/camera/c/b;->a(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Lcn/nubia/camera/c/a;->a(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcn/nubia/camera/ba/a;->G()V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/a/b;->a(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcn/nubia/camera/a/b;->g:I

    .line 108
    new-instance p1, Lcn/nubia/camera/am/c;

    invoke-direct {p1, p0}, Lcn/nubia/camera/am/c;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcn/nubia/camera/a/b;->m:Lcn/nubia/camera/am/c;

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->V()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/a/b;->m:Lcn/nubia/camera/am/c;

    invoke-virtual {p1}, Lcn/nubia/camera/am/c;->a()V

    .line 112
    :cond_0
    new-instance p1, Lcn/nubia/camera/am/b;

    invoke-direct {p1, p0}, Lcn/nubia/camera/am/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    .line 113
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->b()V

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {p1}, Lcn/nubia/camera/am/b;->c()Z

    move-result p1

    const-string v0, "BaseActivity"

    if-nez p1, :cond_1

    const-string p1, "onCreate, no Critical Permission found..."

    .line 116
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->a()V

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onCreate, no camera found. Waiting..."

    .line 122
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onCreate"

    .line 124
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->d()V

    :goto_0
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "onDestroy"

    .line 231
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 232
    iput v0, p0, Lcn/nubia/camera/a/b;->g:I

    .line 234
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->s()V

    .line 236
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->b:Z

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->l:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/a/b;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->l:Z

    .line 243
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 266
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "onPause"

    .line 195
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 196
    iput v0, p0, Lcn/nubia/camera/a/b;->g:I

    .line 198
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->c:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->q()V

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->c:Z

    :cond_0
    const-string v0, "camera"

    .line 203
    invoke-virtual {p0, v0}, Lcn/nubia/camera/a/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 204
    iget-object v1, p0, Lcn/nubia/camera/a/b;->o:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/a/b;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/a/b;->h:Lcn/nubia/camera/d;

    invoke-interface {v0}, Lcn/nubia/camera/d;->a()V

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->T()V

    .line 211
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/b;->n:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/am/b;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "BaseActivity"

    const-string v1, "onRestart"

    .line 93
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    .line 166
    iput v0, p0, Lcn/nubia/camera/a/b;->g:I

    .line 168
    invoke-static {p0}, Lcn/nubia/camera/c/b;->a(Landroid/content/Context;)V

    .line 169
    invoke-static {p0}, Lcn/nubia/camera/c/a;->a(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lcn/nubia/camera/ba/a;->G()V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/a/b;->a(Landroid/content/Intent;)V

    .line 174
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BaseActivity"

    if-nez v0, :cond_0

    const-string v0, "onResume, no Critical Permission found..."

    .line 175
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->f:Z

    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->f:Z

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->a()V

    .line 183
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/camera/a/b;->f:Z

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onResume, no camera found. Waiting..."

    .line 185
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "onResume"

    .line 188
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->d()V

    return-void
.end method

.method protected final onStart()V
    .locals 4

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lcn/nubia/camera/a/b;->g:I

    .line 134
    invoke-static {p0}, Lcn/nubia/camera/c/b;->a(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcn/nubia/camera/c/a;->a(Landroid/content/Context;)V

    .line 137
    iget-boolean v1, p0, Lcn/nubia/camera/a/b;->e:Z

    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->b()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/a/b;->j:Lcn/nubia/camera/am/b;

    invoke-virtual {v1}, Lcn/nubia/camera/am/b;->c()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BaseActivity"

    if-nez v1, :cond_1

    const-string v1, "onStart, no Critical Permission found..."

    .line 142
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->e:Z

    .line 144
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->f:Z

    return-void

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/a/b;->e:Z

    if-nez v1, :cond_2

    .line 149
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->a()V

    .line 152
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/camera/a/b;->e:Z

    .line 153
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->f:Z

    .line 155
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onStart, no camera found. Waiting..."

    .line 156
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "onStart"

    .line 158
    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/a/b;->d()V

    :goto_0
    return-void
.end method

.method protected final onStop()V
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "onStop"

    .line 217
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 218
    iput v0, p0, Lcn/nubia/camera/a/b;->g:I

    .line 220
    iget-boolean v0, p0, Lcn/nubia/camera/a/b;->d:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->r()V

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcn/nubia/camera/a/b;->d:Z

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/a/b;->T()V

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method protected s()V
    .locals 0

    return-void
.end method

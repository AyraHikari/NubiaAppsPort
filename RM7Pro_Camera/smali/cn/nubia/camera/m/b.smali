.class public Lcn/nubia/camera/m/b;
.super Landroid/app/Presentation;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/m/c;

.field private d:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    :try_start_0
    const-class v0, Landroid/app/Presentation;

    const-string v1, "setNubiaDoubleDisplay"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/m/b;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 118
    new-instance p2, Lcn/nubia/camera/m/b$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcn/nubia/camera/m/b$1;-><init>(Lcn/nubia/camera/m/b;Landroid/os/Handler;)V

    iput-object p2, p0, Lcn/nubia/camera/m/b;->d:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/m/b;->a:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method private a(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x10

    add-int/lit16 p1, p1, 0x1000

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/m/b;Lcn/nubia/camera/m/c;)Lcn/nubia/camera/m/c;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/m/b;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/m/b;->c()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/m/b;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SecondDisplayDialog"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackScreenBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_set_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/m/c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_process_bar"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xff

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ge v1, v0, :cond_1

    move v0, v1

    .line 135
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/m/b;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/m/b;->b(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SecondDisplayDialog"

    const-string v1, "get screen_brightness fail"

    .line 137
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private d()V
    .locals 2

    const v0, 0x7f0902aa

    .line 153
    invoke-virtual {p0, v0}, Lcn/nubia/camera/m/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 154
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/m/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/m/b$2;-><init>(Lcn/nubia/camera/m/b;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcn/nubia/camera/m/c;->d()V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/m/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/c;->a(Z)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/c;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcn/nubia/camera/m/c;->a(Z)V

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/m/b;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/m/b;->b:Lcn/nubia/camera/m/c;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcn/nubia/camera/m/c;->e()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/app/Presentation;->onBackPressed()V

    const-string v0, "SecondDisplayDialog"

    const-string v1, "onBackPressed"

    .line 79
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SecondDisplayDialog"

    const-string v0, "onCreate"

    .line 51
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c009b

    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/camera/m/b;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/m/b;->d()V

    return-void
.end method

.method public onDisplayChanged()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    const-string v0, "SecondDisplayDialog"

    const-string v1, "onDisplayChanged"

    .line 85
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayRemoved()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    const-string v0, "SecondDisplayDialog"

    const-string v1, "onDisplayRemoved"

    .line 91
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 58
    invoke-super {p0}, Landroid/app/Presentation;->onStart()V

    const-string v0, "SecondDisplayDialog"

    const-string v1, "onStart"

    .line 59
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcn/nubia/camera/m/b;->c()V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_process_bar"

    .line 63
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/m/b;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    const-string v0, "SecondDisplayDialog"

    const-string v1, "onStop"

    .line 69
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/m/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/m/b;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcn/nubia/camera/m/b;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/m/b;->b(I)V

    return-void
.end method

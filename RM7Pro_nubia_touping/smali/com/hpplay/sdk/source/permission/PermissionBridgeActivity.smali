.class public Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "mirror_info"

.field public static final b:Ljava/lang/String; = "permission_type"

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:Ljava/lang/String; = "key_has_window_permiss"

.field private static final g:Ljava/lang/String; = "PermissionBridgeActivity"

.field private static final i:I = 0xa

.field private static final m:I = 0x1

.field private static final n:I = 0x4d2


# instance fields
.field private h:Z

.field private j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

.field private k:Z

.field private l:I

.field private o:Z

.field private p:J

.field private q:Landroid/os/Handler;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->h:Z

    .line 50
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->k:Z

    .line 51
    iput v1, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    .line 71
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v1, 0x15

    const/4 v3, 0x0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 85
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 87
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const/16 v0, 0x700

    .line 95
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "change status bar style to trans"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    return-void

    .line 92
    :cond_3
    const/16 v0, 0x304

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 231
    :try_start_0
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 232
    const-string v1, "PermissionBridgeActivity"

    const-string v2, "registerMediaProjectionPermission "

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "PermissionBridgeActivity"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/process/c;->i:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x33838

    const v2, 0x33839

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iput-boolean v3, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->k:Z

    .line 183
    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 184
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "start get scard read permission"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Lcom/hpplay/sdk/source/permission/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    if-ne v0, v3, :cond_1

    .line 188
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "start get phone state permission"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Lcom/hpplay/sdk/source/permission/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    :cond_1
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "start get phone state audio"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/hpplay/sdk/source/permission/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 261
    const-string v0, "PermissionBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish bridge act"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->a()V

    .line 263
    const-string v0, "ptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->p:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 115
    const-string v4, "PermissionBridgeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setNavigationBarContrastEnforced"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "PermissionBridgeActivity"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(I)V

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    const-string v0, "PermissionBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 204
    if-ne p1, v3, :cond_0

    .line 206
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0, p0, p3, v1}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 216
    :cond_0
    :goto_0
    const/16 v0, 0x4d2

    if-ne v0, p1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity$1;-><init>(Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :goto_1
    return-void

    .line 209
    :cond_1
    if-ne p1, v3, :cond_0

    .line 212
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hpplay/sdk/source/process/c;->i:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x33838

    const v2, 0x3383a

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->q:Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->b()V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->p:J

    .line 65
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/process/c;->a(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permission_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    .line 67
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "PermissionBridgeActivity  onCreate"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    :try_start_0
    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->k:Z

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    if-ne v0, v4, :cond_0

    .line 132
    const-string v0, "PermissionBridgeActivity"

    const-string v1, "send local media"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/process/c;->c:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/process/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v3

    iget v3, v3, Lcom/hpplay/sdk/source/process/c;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;I)V

    .line 135
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(I)V

    .line 179
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->l:I

    if-ne v0, v2, :cond_4

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a()V

    .line 173
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "PermissionBridgeActivity"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0, v4}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(I)V

    goto :goto_0

    .line 140
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->r:Z

    if-nez v0, :cond_3

    .line 141
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->k:Z

    if-nez v0, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mirror_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    iput-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 144
    if-nez v0, :cond_6

    .line 145
    const-string v1, "PermissionBridgeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->k:Z

    if-nez v0, :cond_7

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/permission/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 153
    const-string v0, "PermissionBridgeActivity"

    const-string v1, " not audio permission "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a()V

    goto :goto_0

    .line 147
    :cond_6
    const-string v1, "PermissionBridgeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 158
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_has_window_permiss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->o:Z

    .line 159
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->o:Z

    if-nez v0, :cond_9

    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->r:Z

    .line 161
    const-string v0, "PermissionBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------------- > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 167
    :cond_8
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "key_has_window_permiss"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Z)V

    .line 171
    :cond_9
    invoke-direct {p0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->j:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->r:Z

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/permission/PermissionBridgeActivity;->a(I)V

    .line 258
    :cond_0
    return-void
.end method

.class public Lcn/nubia/camera/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Landroid/view/Display;

.field private d:Lcn/nubia/camera/m/b;

.field private e:Ljava/lang/reflect/Method;

.field private f:Landroid/hardware/display/DisplayManager;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/reflect/Method;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->i:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->k:Z

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcn/nubia/camera/m/a;->l:Z

    .line 302
    new-instance v2, Lcn/nubia/camera/m/a$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/m/a$2;-><init>(Lcn/nubia/camera/m/a;)V

    iput-object v2, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/m/a;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    .line 49
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aH()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/m/a;->a:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcn/nubia/camera/m/a;->f:Landroid/hardware/display/DisplayManager;

    .line 51
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    .line 52
    array-length p1, p1

    if-le p1, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->j:Z

    goto :goto_0

    .line 54
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->j:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/m/a;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->e()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/m/a;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 268
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/m/a;->g:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/a;->g:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/m/a;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DoubleDisplayControl"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecondDisplay.getDisplayId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/m/a;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/camera/m/a;->f:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    invoke-virtual {p0}, Lcn/nubia/camera/m/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/m/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->f()V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->a()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->g()V

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 152
    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->k:Z

    if-eqz v0, :cond_1

    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    if-nez v0, :cond_2

    .line 161
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->k()V

    .line 164
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    const-string v1, "DoubleDisplayControl"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->i:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "openSecondDisplay"

    .line 169
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->i()V

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-nez v0, :cond_4

    .line 172
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->h()V

    .line 174
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->show()V

    .line 175
    iput-boolean v2, p0, Lcn/nubia/camera/m/a;->i:Z

    return-void

    :cond_5
    :goto_0
    const-string v0, "Open second display fail. Current screen is second screen or second display is already on"

    .line 165
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DoubleDisplayControl"

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->i:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "closeSecondDisplay"

    .line 186
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->j()V

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->dismiss()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    :cond_2
    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->i:Z

    return-void

    :cond_3
    :goto_0
    const-string v0, "Open second display fail. Current screen is second display or second display is already off"

    .line 183
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 4

    .line 196
    new-instance v0, Lcn/nubia/camera/m/b;

    iget-object v1, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/m/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/m/b;-><init>(Lcn/nubia/camera/ad/a;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    .line 197
    new-instance v1, Lcn/nubia/camera/m/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/m/a$1;-><init>(Lcn/nubia/camera/m/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/m/a;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, v1}, Lcn/nubia/camera/m/a;->c(Z)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/camera/m/a;->d(Z)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/m/a;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, v1}, Lcn/nubia/camera/m/a;->c(Z)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/camera/m/a;->c(Z)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 6

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/m/a;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcn/nubia/camera/m/a;->f:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "nubia.os.screenswitch.ScreenSwitchManager"

    .line 236
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "switchScreen"

    new-array v4, v1, [Ljava/lang/Class;

    .line 237
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/m/a;->h:Ljava/lang/reflect/Method;

    .line 238
    iget-object v3, p0, Lcn/nubia/camera/m/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/m/a;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 240
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 245
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/m/a;->h:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 247
    :try_start_1
    iget-object v2, p0, Lcn/nubia/camera/m/a;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayPowerMode"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/m/a;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 253
    :cond_0
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/m/a;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 254
    array-length v3, v2

    if-le v3, v1, :cond_2

    .line 255
    array-length v1, v2

    :goto_2
    if-ge v0, v1, :cond_2

    aget-object v3, v2, v0

    .line 256
    iget-object v4, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->G()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    iput-object v3, p0, Lcn/nubia/camera/m/a;->c:Landroid/view/Display;

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void
.end method

.method private l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/m/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/b;->a(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/b;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 5

    .line 74
    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/m/a;->a()V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-boolean v0, p0, Lcn/nubia/camera/m/a;->i:Z

    invoke-virtual {p0}, Lcn/nubia/camera/m/a;->d()Z

    move-result v2

    if-ne v0, v2, :cond_1

    return-void

    .line 84
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_2

    cmp-long v0, p1, v3

    if-gtz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->e()V

    goto :goto_0

    :cond_2
    cmp-long v0, p1, v3

    if-gtz v0, :cond_3

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iput-boolean p1, p0, Lcn/nubia/camera/m/a;->l:Z

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->a()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/m/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->k:Z

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcn/nubia/camera/m/a;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/m/a;->d:Lcn/nubia/camera/m/b;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcn/nubia/camera/m/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcn/nubia/camera/m/a;->k:Z

    .line 115
    iget-object v1, p0, Lcn/nubia/camera/m/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcn/nubia/camera/m/a;->a(Z)V

    .line 117
    invoke-direct {p0}, Lcn/nubia/camera/m/a;->g()V

    return-void
.end method

.method public d()Z
    .locals 4

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    .line 146
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    .line 147
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_second_display_show_key"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/m/a;->b:Lcn/nubia/camera/ad/a;

    .line 148
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

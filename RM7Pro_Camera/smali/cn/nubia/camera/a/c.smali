.class public Lcn/nubia/camera/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/a/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Z

.field private d:Lcn/nubia/camera/a/c$a;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/a/c$a;Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/camera/a/c;->c:Z

    .line 183
    new-instance v0, Lcn/nubia/camera/a/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a/c$3;-><init>(Lcn/nubia/camera/a/c;)V

    iput-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    .line 39
    iput-object p3, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    .line 41
    iput-object p2, p0, Lcn/nubia/camera/a/c;->d:Lcn/nubia/camera/a/c$a;

    if-eqz p3, :cond_0

    .line 43
    new-instance p1, Lcn/nubia/camera/a/c$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/a/c$1;-><init>(Lcn/nubia/camera/a/c;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->i()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a/c;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/camera/a/c;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->h()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/a/c;)Landroid/view/Window;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 105
    iget-boolean v0, p0, Lcn/nubia/camera/a/c;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    .line 109
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0243

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_intelligent_power_saving"

    .line 108
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/aw/a;->p()Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 111
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->j()V

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->f()V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/a/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/a/c$2;-><init>(Lcn/nubia/camera/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/a/c$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/a/c;->d:Lcn/nubia/camera/a/c$a;

    return-object p0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcn/nubia/camera/a/c;->c:Z

    .line 131
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->j()V

    .line 132
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->j()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->k()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->j()V

    .line 153
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->f()V

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "CameraKeepScreenHelper"

    const-string v1, "wake up camera"

    .line 167
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcn/nubia/camera/a/c;->b(Z)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/a/c;->d:Lcn/nubia/camera/a/c$a;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcn/nubia/camera/a/c$a;->g()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private k()Landroid/view/Window;
    .locals 1

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->d()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/a/c;->c()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcn/nubia/camera/a/c;->c()V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/a/c;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableKeepScreenOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraKeepScreenHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-boolean p1, p0, Lcn/nubia/camera/a/c;->c:Z

    if-eqz p1, :cond_1

    .line 97
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->j()V

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->f()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->d()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->e()V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcn/nubia/camera/a/c;->b(Z)V

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/a/c;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/a/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/a/c;->d()V

    :cond_0
    return-void
.end method

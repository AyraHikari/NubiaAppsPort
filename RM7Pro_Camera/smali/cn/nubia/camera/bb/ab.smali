.class public Lcn/nubia/camera/bb/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field a:Lcn/nubia/camera/bb/f;

.field private b:Lcn/nubia/camera/bb/d;

.field private c:Lcn/nubia/camera/bb/ac;

.field private d:Z

.field private e:Lcn/nubia/camera/ad/a;

.field private f:Z

.field private g:Lcn/nubia/camera/bb/e;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/d;Lcn/nubia/camera/bb/ac;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcn/nubia/camera/bb/ab;->f:Z

    .line 41
    new-instance v1, Lcn/nubia/camera/bb/ab$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/ab$1;-><init>(Lcn/nubia/camera/bb/ab;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/ab;->h:Landroid/os/Handler;

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/bb/ab;->a:Lcn/nubia/camera/bb/f;

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    .line 59
    iput-object p2, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    .line 60
    iput-object p3, p0, Lcn/nubia/camera/bb/ab;->c:Lcn/nubia/camera/bb/ac;

    return-void
.end method

.method private a(J)V
    .locals 2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/ab;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/bb/ab;->a(J)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/ab;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/camera/bb/ab;->f:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/ab;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/camera/bb/ab;->d:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bb/ab;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/bb/ab;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/bb/ab;)Lcn/nubia/camera/bb/d;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    const-string v0, "VideoShutterButtonClickManager"

    const-string v1, "start recording"

    .line 185
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->g:Lcn/nubia/camera/bb/e;

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Lcn/nubia/camera/bb/e;->s_()V

    .line 189
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    new-instance v1, Lcn/nubia/camera/bb/ab$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/ab$4;-><init>(Lcn/nubia/camera/bb/ab;)V

    invoke-interface {v0, v1}, Lcn/nubia/camera/bb/d;->a(Lcn/nubia/camera/bb/d$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->f:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/e;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/camera/bb/ab;->g:Lcn/nubia/camera/bb/e;

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/f;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/bb/ab;->a:Lcn/nubia/camera/bb/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    .line 128
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    .line 129
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    .line 130
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->c:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->l()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const-string v2, "VideoShutterButtonClickManager"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v1}, Lcn/nubia/camera/bb/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "onShutterButtonClick stopVideo"

    .line 149
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/ab;->b(Z)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->a:Lcn/nubia/camera/bb/f;

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v0}, Lcn/nubia/camera/bb/f;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    .line 140
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_motion_detection_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->a:Lcn/nubia/camera/bb/f;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/f;->b()V

    return-void

    .line 144
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/bb/ab;->k()V

    :cond_5
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop recording: State("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v1}, Lcn/nubia/camera/bb/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoShutterButtonClickManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->l()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->a()V

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {p1}, Lcn/nubia/camera/bb/d;->b()V

    .line 207
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/bb/ab;->g:Lcn/nubia/camera/bb/e;

    if-eqz p1, :cond_2

    .line 208
    invoke-interface {p1}, Lcn/nubia/camera/bb/e;->t_()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcn/nubia/camera/bb/ab;->b()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/nubia/camera/bb/ab;->f:Z

    const-string v1, "VideoShutterButtonClickManager"

    const-string v2, "pause...stop video"

    .line 71
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/ab;->b(Z)V

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;
    .locals 0

    return-object p0
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 1

    .line 81
    new-instance v0, Lcn/nubia/camera/bb/ab$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/ab$2;-><init>(Lcn/nubia/camera/bb/ab;)V

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/bb/ab;->b:Lcn/nubia/camera/bb/d;

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->i()V

    :cond_1
    return-void
.end method

.method public h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 102
    new-instance v0, Lcn/nubia/camera/bb/ab$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/ab$3;-><init>(Lcn/nubia/camera/bb/ab;)V

    return-object v0
.end method

.method public i()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 220
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/bb/ab;->a(J)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcn/nubia/camera/bb/ab;->d:Z

    return v0
.end method

.class public Lcn/nubia/camera/pretty/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/b/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/pretty/b/d;

.field private c:Lcn/nubia/camera/g/e;

.field private d:Lcn/nubia/camera/g/h;

.field private e:Lcn/nubia/camera/pretty/b/b;

.field private f:Z

.field private g:Z

.field private h:Lcn/nubia/camera/pretty/b$a;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/b/d;Z)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/c;->g:Z

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/c;->i:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/c;->j:Ljava/lang/String;

    const-string v1, "DumpSingleBokeh"

    const/4 v2, 0x3

    .line 189
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/c;->k:Z

    .line 276
    new-instance v1, Lcn/nubia/camera/pretty/b/c$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/b/c$5;-><init>(Lcn/nubia/camera/pretty/b/c;)V

    iput-object v1, p0, Lcn/nubia/camera/pretty/b/c;->l:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    .line 58
    iput-object p2, p0, Lcn/nubia/camera/pretty/b/c;->b:Lcn/nubia/camera/pretty/b/d;

    .line 59
    iput-boolean p3, p0, Lcn/nubia/camera/pretty/b/c;->f:Z

    .line 60
    new-instance p2, Lcn/nubia/camera/g/e;

    iget-object p3, p0, Lcn/nubia/camera/pretty/b/c;->b:Lcn/nubia/camera/pretty/b/d;

    new-instance v1, Lcn/nubia/camera/pretty/b/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/b/c$1;-><init>(Lcn/nubia/camera/pretty/b/c;)V

    invoke-direct {p2, p1, p3, v0, v1}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/pretty/b/c;->c:Lcn/nubia/camera/g/e;

    .line 77
    new-instance p2, Lcn/nubia/camera/pretty/b/c$2;

    iget-object p3, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcn/nubia/camera/pretty/b/c$2;-><init>(Lcn/nubia/camera/pretty/b/c;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/pretty/b/c;->d:Lcn/nubia/camera/g/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/b/c;Z)F
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/b/c;->b(Z)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Z)F
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/b/c;->f:Z

    if-eqz v0, :cond_1

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    .line 253
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    .line 254
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f01b2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_bokeh_level_adjustable"

    .line 253
    invoke-virtual {p1, v1, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {}, Lcn/nubia/camera/aq/e;->a()F

    move-result v0

    const-string v1, "pref_faceplus_focus_length_value"

    invoke-virtual {p1, v1, v0}, Lcom/android/preference/c;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 258
    :cond_0
    invoke-static {}, Lcn/nubia/camera/aq/e;->a()F

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x3f2147ae    # 0.63f

    return p1

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/b/c;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/b/c;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/pretty/b/c;->g()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/pretty/b/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 170
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/b/c;->g:Z

    if-nez v0, :cond_0

    const-string v0, "SingleBokehShutterButtonClickListener"

    const-string v1, "Fragment is not resume"

    .line 171
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/c;->i:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/c;->b:Lcn/nubia/camera/pretty/b/d;

    iget-object v2, p0, Lcn/nubia/camera/pretty/b/c;->d:Lcn/nubia/camera/g/h;

    iget-object v3, p0, Lcn/nubia/camera/pretty/b/c;->c:Lcn/nubia/camera/g/e;

    invoke-virtual {v3}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/pretty/b/c$a;

    invoke-direct {v4, p0, v0}, Lcn/nubia/camera/pretty/b/c$a;-><init>(Lcn/nubia/camera/pretty/b/c;Lcn/nubia/camera/pretty/b/c$1;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcn/nubia/camera/pretty/b/d;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/ac$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->l:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/b/c;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/b/c;->k:Z

    return p0
.end method

.method private g()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->h:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/c;->g:Z

    .line 113
    new-instance v1, Lcn/nubia/camera/pretty/h;

    iget-object v2, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/pretty/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 114
    invoke-virtual {v1}, Lcn/nubia/camera/pretty/h;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v1

    .line 115
    new-instance v2, Lcn/nubia/camera/pretty/b/b;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/b/c;->b(Z)F

    move-result v0

    invoke-direct {v2, v3, v1, v0}, Lcn/nubia/camera/pretty/b/b;-><init>(IIF)V

    iput-object v2, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 119
    invoke-static {}, Lcn/nubia/camera/pretty/b/a;->a()Lcn/nubia/camera/pretty/b/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/pretty/b/c$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/b/c$3;-><init>(Lcn/nubia/camera/pretty/b/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/b/a;->a(Lcn/nubia/camera/pretty/b/a$a;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->b:Lcn/nubia/camera/pretty/b/d;

    new-instance v1, Lcn/nubia/camera/pretty/b/c$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/b/c$4;-><init>(Lcn/nubia/camera/pretty/b/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/b/d;->a(Lcn/nubia/camera/k/o;)V

    .line 145
    invoke-direct {p0}, Lcn/nubia/camera/pretty/b/c;->g()V

    return-void
.end method

.method public a(Lcn/nubia/camera/pretty/b$a;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c;->h:Lcn/nubia/camera/pretty/b$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->l:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->h:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->a()V

    .line 105
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/pretty/b/c;->f()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "SingleBokehShutterButtonClickListener"

    const-string v1, "Preview bokeh is not running, ignore picture taking..."

    .line 96
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/c;->g:Z

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->b:Lcn/nubia/camera/pretty/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/b/d;->a(Lcn/nubia/camera/k/o;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/b/b;->a()V

    .line 153
    iput-object v1, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    return-void
.end method

.method public e()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c;->e:Lcn/nubia/camera/pretty/b/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 165
    invoke-direct {p0, v1}, Lcn/nubia/camera/pretty/b/c;->b(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/b/b;->a(F)V

    :cond_0
    return-void
.end method

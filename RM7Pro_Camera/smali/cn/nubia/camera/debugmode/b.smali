.class public Lcn/nubia/camera/debugmode/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcn/nubia/camera/debugmode/a;

.field private b:Z

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/k/ah;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    .line 33
    iput-object v1, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    .line 34
    iput-object v1, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    .line 37
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aA()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v1, :cond_0

    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    .line 42
    iput-object p2, p0, Lcn/nubia/camera/debugmode/b;->d:Lcn/nubia/camera/k/ah;

    .line 43
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    const v1, 0x7f090375

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0900da

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    const-string p1, "pref_nubia_debug_mode_key"

    const-string p2, "off"

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/debugmode/b;->g()V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/camera/debugmode/b;->d()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/debugmode/b;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/debugmode/b;->d:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/debugmode/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/debugmode/b;)Landroid/widget/Button;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/debugmode/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/debugmode/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/debugmode/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    .line 118
    new-instance v1, Lcn/nubia/camera/debugmode/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/debugmode/b$1;-><init>(Lcn/nubia/camera/debugmode/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "key_12M_to_48M"

    const-string v1, "12M"

    .line 132
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    const-string v1, "48M"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "key_debug_12M_to_48M_switch"

    const-string v1, "off"

    .line 138
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private h()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/camera/debugmode/a$b;

    const/4 v1, 0x0

    .line 149
    new-instance v2, Lcn/nubia/camera/debugmode/a$b;

    const-string v3, "key_debug_12M_to_48M_switch"

    const-string v4, "12M To 48M"

    const-string v5, "off"

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/camera/debugmode/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcn/nubia/camera/debugmode/a$b;

    const-string v3, "key_show_hdr_switch"

    const-string v4, "show HDR tip"

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/camera/debugmode/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 153
    new-instance v1, Lcn/nubia/camera/debugmode/a;

    iget-object v2, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/debugmode/a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/nubia/camera/debugmode/b;->c:Lcn/nubia/camera/ad/a;

    .line 154
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/debugmode/a;->a(Lcom/android/preference/c;)Lcn/nubia/camera/debugmode/a;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcn/nubia/camera/debugmode/a;->a([Lcn/nubia/camera/debugmode/a$b;)Lcn/nubia/camera/debugmode/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/debugmode/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/debugmode/b$2;-><init>(Lcn/nubia/camera/debugmode/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/debugmode/a;->a(Lcn/nubia/camera/debugmode/NubiaDebugItem$a;)Lcn/nubia/camera/debugmode/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    const v1, 0x7f0f0085

    .line 167
    invoke-virtual {v0, v1}, Lcn/nubia/camera/debugmode/a;->setTitle(I)V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    new-instance v1, Lcn/nubia/camera/debugmode/b$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/debugmode/b$3;-><init>(Lcn/nubia/camera/debugmode/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/debugmode/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_nubia_debug_mode_key"

    const-string v1, "off"

    .line 63
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/debugmode/b;->h()V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/a;->show()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/a;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public c()V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_nubia_debug_mode_key"

    const-string v1, "off"

    .line 93
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/debugmode/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcn/nubia/camera/debugmode/b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/a;->dismiss()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcn/nubia/camera/debugmode/b;->a:Lcn/nubia/camera/debugmode/a;

    :cond_1
    return-void
.end method

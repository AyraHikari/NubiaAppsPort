.class public Lcn/nubia/camera/ao/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/aj/a/a;

.field private c:Lcn/nubia/camera/ao/m;

.field private d:Lcn/nubia/camera/z/b;

.field private e:Lcn/nubia/camera/g/h;

.field private f:Lcn/nubia/camera/g/e;

.field private g:Lcn/nubia/camera/ao/c;

.field private h:Lcn/nubia/camera/aj/i;

.field private i:Lcn/nubia/camera/ao/e;

.field private j:Lcn/nubia/camera/ao/g;

.field private k:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ao/m;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 37
    iput-object v4, v0, Lcn/nubia/camera/ao/k;->h:Lcn/nubia/camera/aj/i;

    .line 38
    iput-object v4, v0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    .line 39
    iput-object v4, v0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    const/4 v4, 0x1

    .line 119
    iput-boolean v4, v0, Lcn/nubia/camera/ao/k;->k:Z

    .line 45
    iput-object v1, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    .line 46
    iput-object v2, v0, Lcn/nubia/camera/ao/k;->b:Lcn/nubia/camera/aj/a/a;

    move-object/from16 v4, p2

    .line 47
    iput-object v4, v0, Lcn/nubia/camera/ao/k;->c:Lcn/nubia/camera/ao/m;

    .line 48
    iput-object v3, v0, Lcn/nubia/camera/ao/k;->d:Lcn/nubia/camera/z/b;

    .line 50
    new-instance v4, Lcn/nubia/camera/ao/k$1;

    iget-object v5, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    .line 51
    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcn/nubia/camera/ao/k$1;-><init>(Lcn/nubia/camera/ao/k;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object v4, v0, Lcn/nubia/camera/ao/k;->e:Lcn/nubia/camera/g/h;

    .line 58
    new-instance v4, Lcn/nubia/camera/g/e;

    iget-object v5, v0, Lcn/nubia/camera/ao/k;->c:Lcn/nubia/camera/ao/m;

    new-instance v6, Lcn/nubia/camera/ao/k$2;

    invoke-direct {v6, v0}, Lcn/nubia/camera/ao/k$2;-><init>(Lcn/nubia/camera/ao/k;)V

    invoke-direct {v4, v1, v5, v3, v6}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object v4, v0, Lcn/nubia/camera/ao/k;->f:Lcn/nubia/camera/g/e;

    .line 74
    iput-object v2, v0, Lcn/nubia/camera/ao/k;->b:Lcn/nubia/camera/aj/a/a;

    .line 76
    new-instance v1, Lcn/nubia/camera/ao/c;

    iget-object v2, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    iget-object v3, v0, Lcn/nubia/camera/ao/k;->f:Lcn/nubia/camera/g/e;

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/ao/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/g/e;)V

    iput-object v1, v0, Lcn/nubia/camera/ao/k;->g:Lcn/nubia/camera/ao/c;

    .line 78
    new-instance v1, Lcn/nubia/camera/ao/e;

    iget-object v5, v0, Lcn/nubia/camera/ao/k;->c:Lcn/nubia/camera/ao/m;

    iget-object v6, v0, Lcn/nubia/camera/ao/k;->e:Lcn/nubia/camera/g/h;

    iget-object v7, v0, Lcn/nubia/camera/ao/k;->f:Lcn/nubia/camera/g/e;

    iget-object v8, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    iget-object v9, v0, Lcn/nubia/camera/ao/k;->d:Lcn/nubia/camera/z/b;

    iget-object v10, v0, Lcn/nubia/camera/ao/k;->h:Lcn/nubia/camera/aj/i;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcn/nubia/camera/ao/e;-><init>(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/g/h;Lcn/nubia/camera/g/e;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/z/b;Lcn/nubia/camera/aj/i;)V

    iput-object v1, v0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    .line 79
    new-instance v1, Lcn/nubia/camera/ao/g;

    iget-object v12, v0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    iget-object v13, v0, Lcn/nubia/camera/ao/k;->c:Lcn/nubia/camera/ao/m;

    iget-object v14, v0, Lcn/nubia/camera/ao/k;->e:Lcn/nubia/camera/g/h;

    iget-object v15, v0, Lcn/nubia/camera/ao/k;->f:Lcn/nubia/camera/g/e;

    iget-object v2, v0, Lcn/nubia/camera/ao/k;->g:Lcn/nubia/camera/ao/c;

    iget-object v3, v0, Lcn/nubia/camera/ao/k;->h:Lcn/nubia/camera/aj/i;

    move-object v11, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/camera/ao/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ao/m;Lcn/nubia/camera/g/h;Lcn/nubia/camera/g/e;Lcn/nubia/camera/ao/c;Lcn/nubia/camera/aj/i;)V

    iput-object v1, v0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/k;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ao/e;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ao/g;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcn/nubia/camera/ao/k;->k:Z

    if-nez v0, :cond_0

    const-string v0, "ProOnShutterButtonListener"

    const-string v1, "Fragment is not resume"

    .line 146
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->h()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->g()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/g;->b()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcn/nubia/camera/ao/e;->d()V

    :cond_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    .line 168
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0267

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_normal_effect_key"

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcn/nubia/camera/ao/k;->k:Z

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcn/nubia/camera/ao/g;->a()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcn/nubia/camera/ao/e;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcn/nubia/camera/ao/k;->h:Lcn/nubia/camera/aj/i;

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/aj/i;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->h:Lcn/nubia/camera/aj/i;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ao/g;->a(Lcn/nubia/camera/aj/i;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProOnShutterButtonListener"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/ao/k;->b:Lcn/nubia/camera/aj/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/a/a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ProOnShutterButtonListener"

    const-string v1, "onShutterButtonClick"

    .line 93
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->f()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "ProOnShutterButtonListener"

    const-string v1, "onShutterButtonLongClick"

    .line 104
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->b:Lcn/nubia/camera/aj/a/a;

    invoke-direct {p0}, Lcn/nubia/camera/ao/k;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/aj/a/a;->a(ZZ)Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcn/nubia/camera/ao/k;->k:Z

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->i:Lcn/nubia/camera/ao/e;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcn/nubia/camera/ao/e;->b()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/k;->j:Lcn/nubia/camera/ao/g;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcn/nubia/camera/ao/g;->a()V

    :cond_1
    return-void
.end method

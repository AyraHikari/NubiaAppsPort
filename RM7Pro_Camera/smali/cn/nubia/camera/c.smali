.class public Lcn/nubia/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/a/a;

.field private b:Lcn/nubia/camera/ae/a;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/i;

.field private e:Lcn/nubia/camera/al/c$a;

.field private f:Lcn/nubia/a/g;

.field private g:Lcn/nubia/a/e;

.field private h:Lcn/nubia/camera/ae/b;


# direct methods
.method public constructor <init>(Lcn/nubia/a/a;Lcn/nubia/camera/ae/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/i;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/camera/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/c$1;-><init>(Lcn/nubia/camera/c;)V

    iput-object v0, p0, Lcn/nubia/camera/c;->e:Lcn/nubia/camera/al/c$a;

    .line 97
    new-instance v0, Lcn/nubia/camera/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/c$2;-><init>(Lcn/nubia/camera/c;)V

    iput-object v0, p0, Lcn/nubia/camera/c;->f:Lcn/nubia/a/g;

    .line 124
    new-instance v0, Lcn/nubia/camera/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/c$3;-><init>(Lcn/nubia/camera/c;)V

    iput-object v0, p0, Lcn/nubia/camera/c;->g:Lcn/nubia/a/e;

    .line 158
    new-instance v0, Lcn/nubia/camera/c$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/c$4;-><init>(Lcn/nubia/camera/c;)V

    iput-object v0, p0, Lcn/nubia/camera/c;->h:Lcn/nubia/camera/ae/b;

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    .line 55
    iput-object p2, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    .line 56
    iput-object p3, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 57
    iput-object p4, p0, Lcn/nubia/camera/c;->d:Lcn/nubia/camera/i;

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/c;->d()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pref_family_page_select_member_key"

    .line 288
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/c;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/camera/c;->a(I)V

    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;)Z
    .locals 5

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-virtual {v0}, Lcn/nubia/a/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcn/nubia/camera/c;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    if-nez v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcn/nubia/camera/c;->h()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    .line 241
    invoke-virtual {v3}, Lcn/nubia/a/a;->b()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 242
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    sget-object v3, Lcn/nubia/camera/af/a;->L:Lcn/nubia/camera/af/a;

    if-ne p1, v3, :cond_3

    .line 248
    iget-object p1, p0, Lcn/nubia/camera/c;->d:Lcn/nubia/camera/i;

    invoke-virtual {p1}, Lcn/nubia/camera/i;->c()V

    return v1

    .line 253
    :cond_3
    sget-object v3, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->G()I

    move-result v3

    if-ne v3, v1, :cond_4

    return v1

    .line 257
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->a()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/camera/c;->a(I)V

    .line 259
    iget-object v3, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 260
    iget-object p1, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-virtual {p1, v2}, Lcn/nubia/a/a;->a(Z)V

    .line 265
    iget-object p1, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ae/a;->b()V

    .line 266
    iget-object p1, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/aw/a;->a(I)V

    goto :goto_0

    .line 268
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-virtual {v0, v2, v2}, Lcn/nubia/a/a;->a(ZZ)V

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 272
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object v2

    .line 271
    invoke-virtual {v0, p1, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 276
    iget-object p1, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/a;->a(I)V

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    const-string p1, "CameraMemberSwitcherControls"

    const-string v0, "return onCameraFamilyItemClick"

    .line 243
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic a(Lcn/nubia/camera/c;Lcn/nubia/camera/af/a;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/af/a;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/c;)Lcn/nubia/camera/ae/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/c;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/c;->i()I

    move-result p0

    return p0
.end method

.method private d()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/c;->f()V

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/c;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    iget-object v1, p0, Lcn/nubia/camera/c;->g:Lcn/nubia/a/e;

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->a(Lcn/nubia/a/e;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    iget-object v1, p0, Lcn/nubia/camera/c;->f:Lcn/nubia/a/g;

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->a(Lcn/nubia/a/g;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nubia.camera.family"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ae/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemberType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraMemberSwitcherControls"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v2, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcn/nubia/camera/c;->a(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->b(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-direct {p0}, Lcn/nubia/camera/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->a(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->b(Z)V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    iget-object v1, p0, Lcn/nubia/camera/c;->h:Lcn/nubia/camera/ae/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/b;)V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 225
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 226
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    .line 232
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()I
    .locals 3

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    sget v1, Lcn/nubia/camera/aq/e;->e:I

    const-string v2, "pref_family_page_select_member_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 298
    :cond_0
    sget v0, Lcn/nubia/camera/aq/e;->e:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-direct {p0}, Lcn/nubia/camera/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/a/a;->a(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/c;->e:Lcn/nubia/camera/al/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    iget-object v1, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ae/a;->j()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcn/nubia/a/a;->a(ZZ)V

    if-ne p1, p2, :cond_1

    .line 311
    iget-object p1, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aw/a;->a(I)V

    .line 314
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/c;->b:Lcn/nubia/camera/ae/a;

    invoke-virtual {p1, v4}, Lcn/nubia/camera/ae/a;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/c;->e:Lcn/nubia/camera/al/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/c;->a:Lcn/nubia/a/a;

    invoke-virtual {v0}, Lcn/nubia/a/a;->c()V

    return-void
.end method

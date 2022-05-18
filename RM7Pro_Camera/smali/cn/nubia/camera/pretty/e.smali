.class public Lcn/nubia/camera/pretty/e;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/n/b$e;


# instance fields
.field a:Lcn/nubia/camera/s/a$d;

.field private b:Lcom/android/common/ui/RotateImageView;

.field private c:Lcn/nubia/camera/k/ah;

.field private i:Lcn/nubia/camera/pretty/b;

.field private j:Lcn/nubia/camera/s/a;

.field private k:Lcn/nubia/camera/s/a$b;

.field private l:Lcn/nubia/camera/pretty/a;

.field private m:Lcn/nubia/camera/n/b;

.field private n:Z

.field private o:Lcn/nubia/camera/k/ab$a;

.field private p:Lcn/nubia/camera/k/ab$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->b:Lcom/android/common/ui/RotateImageView;

    .line 60
    sget-object v1, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object v1, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    .line 190
    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    .line 403
    new-instance v0, Lcn/nubia/camera/pretty/e$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/e$4;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->a:Lcn/nubia/camera/s/a$d;

    .line 483
    new-instance v0, Lcn/nubia/camera/pretty/e$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/e$5;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->o:Lcn/nubia/camera/k/ab$a;

    .line 523
    new-instance v0, Lcn/nubia/camera/pretty/e$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/e$6;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->p:Lcn/nubia/camera/k/ab$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/k/ah;Lcn/nubia/camera/pretty/b;Lcom/android/common/ui/RotateImageView;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->b:Lcom/android/common/ui/RotateImageView;

    .line 60
    sget-object v0, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    .line 190
    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    .line 403
    new-instance p1, Lcn/nubia/camera/pretty/e$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/pretty/e$4;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->a:Lcn/nubia/camera/s/a$d;

    .line 483
    new-instance p1, Lcn/nubia/camera/pretty/e$5;

    invoke-direct {p1, p0}, Lcn/nubia/camera/pretty/e$5;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->o:Lcn/nubia/camera/k/ab$a;

    .line 523
    new-instance p1, Lcn/nubia/camera/pretty/e$6;

    invoke-direct {p1, p0}, Lcn/nubia/camera/pretty/e$6;-><init>(Lcn/nubia/camera/pretty/e;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->p:Lcn/nubia/camera/k/ab$a;

    .line 69
    iput-object p2, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    .line 70
    iput-object p3, p0, Lcn/nubia/camera/pretty/e;->i:Lcn/nubia/camera/pretty/b;

    .line 71
    iput-object p4, p0, Lcn/nubia/camera/pretty/e;->b:Lcom/android/common/ui/RotateImageView;

    return-void
.end method

.method private J()Z
    .locals 3

    const v0, 0x7f0f01b2

    .line 559
    invoke-virtual {p0, v0}, Lcn/nubia/camera/pretty/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_bokeh_level_adjustable"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/pretty/b;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/pretty/e;
    .locals 2

    .line 287
    new-instance v0, Lcn/nubia/camera/pretty/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcn/nubia/camera/pretty/e;-><init>(ILcn/nubia/camera/k/ah;Lcn/nubia/camera/pretty/b;Lcom/android/common/ui/RotateImageView;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 398
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    .line 399
    invoke-virtual {v0}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v0

    const-string v1, "pref_gender_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 400
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->m()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/e;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/e;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/e;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/e;->n:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/b;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->i:Lcn/nubia/camera/pretty/b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/e;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 4

    .line 193
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    const-string v3, "pref_gender_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    .line 195
    sget-object v2, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 202
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 203
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    new-instance v1, Lcn/nubia/camera/pretty/d;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcn/nubia/camera/pretty/d;-><init>(Lcn/nubia/camera/ad/a;ZI)V

    iput-object v1, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    goto :goto_1

    .line 206
    :cond_2
    new-instance v1, Lcn/nubia/camera/pretty/c;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcn/nubia/camera/pretty/c;-><init>(Lcn/nubia/camera/ad/a;Lcom/android/preference/c;I)V

    iput-object v1, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    .line 209
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    new-instance v1, Lcn/nubia/camera/pretty/e$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/e$2;-><init>(Lcn/nubia/camera/pretty/e;)V

    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Lcn/nubia/camera/pretty/a$b;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 9

    .line 236
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->av()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->b:Lcom/android/common/ui/RotateImageView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    sget-object v0, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    if-ne v0, v1, :cond_2

    .line 244
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_female_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_male_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_pretty_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 253
    :goto_0
    new-instance v8, Lcn/nubia/camera/n/b;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    const v6, 0x7f090160

    iget-object v7, p0, Lcn/nubia/camera/pretty/e;->b:Lcom/android/common/ui/RotateImageView;

    move-object v1, v8

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/n/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;)V

    iput-object v8, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    .line 255
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/n/b;)V

    .line 256
    iget-object p1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$e;)V

    .line 257
    iget-object p1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    new-instance v1, Lcn/nubia/camera/pretty/e$3;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/pretty/e$3;-><init>(Lcn/nubia/camera/pretty/e;Lcom/android/preference/ListPreference;)V

    invoke-virtual {p1, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b$a;)V

    .line 274
    iget-object p1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    invoke-virtual {p1}, Lcn/nubia/camera/n/b;->b()V

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/e;->n:Z

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/e;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/pretty/e;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->n()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .locals 1

    const-string v0, "ui_change_effect"

    .line 283
    invoke-virtual {p0, v0}, Lcn/nubia/camera/pretty/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/pretty/e;)Lcom/android/preference/c;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private j()Z
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_slimming"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_smooth"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_pretty_toning"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic k(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a$b;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    return-object p0
.end method

.method private l()Z
    .locals 2

    .line 358
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 360
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/e;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    if-nez v0, :cond_2

    .line 369
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_gender_key"

    invoke-virtual {v0, v1}, Lcom/android/preference/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->u()Lcom/android/preference/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v2}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/s/a$b;->a(I)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->k:Lcn/nubia/camera/s/a$b;

    return-void

    :cond_1
    const-string v0, "PrettyFragment"

    const-string v1, "initGenderEffectControl"

    .line 378
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcn/nubia/camera/s/a;

    invoke-direct {v0}, Lcn/nubia/camera/s/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/ad/a;)V

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/pretty/e;->a(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->a:Lcn/nubia/camera/s/a$d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/s/a;->a(Lcn/nubia/camera/s/a$d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    if-eqz v0, :cond_0

    const-string v0, "PrettyFragment"

    const-string v1, "releaseGenderEffectControl"

    .line 389
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 391
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    invoke-virtual {v0}, Lcn/nubia/camera/s/a;->a()V

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/pretty/e;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcn/nubia/camera/pretty/e;->j:Lcn/nubia/camera/s/a;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/pretty/e;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/e;->n:Z

    return p0
.end method

.method static synthetic o(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/a;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    return-object p0
.end method

.method private o()Z
    .locals 5

    .line 477
    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    .line 478
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 479
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method static synthetic p(Lcn/nubia/camera/pretty/e;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/n/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 140
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 141
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance p2, Lcn/nubia/camera/pretty/e$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/pretty/e$1;-><init>(Lcn/nubia/camera/pretty/e;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "PrettyFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 177
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->v()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/n/b;->a(F)V

    .line 181
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1}, Lcn/nubia/camera/pretty/a;->c()V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 161
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 319
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_1
    return-void
.end method

.method protected i_()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/e;->f(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    :cond_1
    return-void

    .line 129
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferenceGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrettyFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 78
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/e;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/e;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 111
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->n()V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/pretty/e;->n:Z

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->c()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/e;->n:Z

    .line 119
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->o:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->p:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 89
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/pretty/e;->n:Z

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->b()V

    .line 94
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->i()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/e;->n:Z

    .line 97
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Lcn/nubia/camera/pretty/a;->a()V

    .line 100
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->m()V

    .line 101
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->o:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->c:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/pretty/e;->p:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_1

    .line 309
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(Z)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->m:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/pretty/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/g;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->J()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 542
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_2
    return-void
.end method

.method public s()V
    .locals 3

    .line 548
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/pretty/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/g;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_pretty_switch_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/pretty/e;->J()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/e;->l:Lcn/nubia/camera/pretty/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 554
    invoke-interface {v0, v1}, Lcn/nubia/camera/pretty/a;->a(I)V

    :cond_2
    return-void
.end method

.class public Lcn/nubia/camera/bb/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/d;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/nubia/camera/bb/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/bb/ac;

.field private e:Lcn/nubia/camera/bb/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/bb/ac;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/bb/aa;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 40
    iput-object p3, p0, Lcn/nubia/camera/bb/aa;->d:Lcn/nubia/camera/bb/ac;

    .line 41
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private declared-synchronized h()Lcn/nubia/camera/bb/d;
    .locals 6

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->j()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/d;

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Lcn/nubia/camera/bb/r;

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->p()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/aa;->d:Lcn/nubia/camera/bb/ac;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/bb/r;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Lcn/nubia/camera/bb/o;

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->p()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/aa;->d:Lcn/nubia/camera/bb/ac;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/bb/o;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    goto :goto_0

    .line 120
    :cond_2
    new-instance v1, Lcn/nubia/camera/bb/c;

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->p()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/aa;->d:Lcn/nubia/camera/bb/ac;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/bb/c;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    goto :goto_0

    .line 117
    :cond_3
    new-instance v1, Lcn/nubia/camera/bb/i;

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->p()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/aa;->d:Lcn/nubia/camera/bb/ac;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/nubia/camera/bb/i;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    .line 129
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->e:Lcn/nubia/camera/bb/z;

    invoke-interface {v1, v2}, Lcn/nubia/camera/bb/d;->a(Lcn/nubia/camera/bb/z;)V

    .line 130
    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->o()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .locals 4

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f030b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 150
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 151
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f025d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_movie_mode_key"

    .line 150
    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 154
    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->f(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n()Z
    .locals 4

    .line 159
    invoke-static {}, Lcn/nubia/camera/ba/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 160
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 161
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 162
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    .line 161
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_normal_effect_key"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 171
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_pretty_effect_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 172
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_female_effect_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    .line 173
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_male_effect_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private p()Lcn/nubia/k/a/a;
    .locals 1

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/bb/aa;->c:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->a()V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/d$a;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/d;->a(Lcn/nubia/camera/bb/d$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/l;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    .line 195
    instance-of v1, v0, Lcn/nubia/camera/bb/o;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcn/nubia/camera/bb/o;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/bb/z;)V
    .locals 2

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/bb/aa;->e:Lcn/nubia/camera/bb/z;

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/d;

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1, p1}, Lcn/nubia/camera/bb/d;->a(Lcn/nubia/camera/bb/z;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->d()V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 185
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    .line 186
    instance-of v1, v0, Lcn/nubia/camera/bb/o;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lcn/nubia/camera/bb/o;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/o;->D()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->g()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->i()V

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcn/nubia/camera/bb/aa;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/d;

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Lcn/nubia/camera/bb/d;->k()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcn/nubia/camera/bb/aa;->h()Lcn/nubia/camera/bb/d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/d;->l()I

    move-result v0

    return v0
.end method

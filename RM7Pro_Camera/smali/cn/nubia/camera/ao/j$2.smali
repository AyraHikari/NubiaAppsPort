.class Lcn/nubia/camera/ao/j$2;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/j;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/j;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 277
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->b(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v1}, Lcn/nubia/camera/ao/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    const-string v1, "pref_moresetting_picturesize_key"

    if-eqz v0, :cond_3

    .line 280
    iget-object v2, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v2, v1}, Lcn/nubia/camera/ao/j;->a(Lcn/nubia/camera/ao/j;Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v3, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v3}, Lcn/nubia/camera/ao/j;->c(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v4}, Lcn/nubia/camera/ao/j;->d(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/ba/b;->e(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 283
    sget-object v4, Lcn/nubia/camera/aq/f;->b:Ljava/lang/String;

    .line 284
    invoke-static {v3}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    sget-object v4, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    .line 287
    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 288
    invoke-virtual {v2, v4}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v3, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v3}, Lcn/nubia/camera/ao/j;->e(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->c()V

    .line 294
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v1}, Lcn/nubia/camera/ao/j;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->b()V

    .line 295
    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v1}, Lcn/nubia/camera/ao/j;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v2}, Lcn/nubia/camera/ao/j;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v3}, Lcn/nubia/camera/ao/j;->f(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/camera/zoom/c;->a(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/y;->a(F)V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v2, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v2, v1}, Lcn/nubia/camera/ao/j;->b(Lcn/nubia/camera/ao/j;Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 299
    iget-object v3, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v3}, Lcn/nubia/camera/ao/j;->g(Lcn/nubia/camera/ao/j;)Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->c()V

    .line 303
    :cond_4
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v1}, Lcn/nubia/camera/ao/j;->a(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ao/m;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->a()Z

    .line 304
    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v1}, Lcn/nubia/camera/ao/j;->a(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ao/m;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v2}, Lcn/nubia/camera/ao/j;->h(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcn/nubia/camera/an/a;->a(F)V

    .line 306
    iget-object v1, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v1}, Lcn/nubia/camera/ao/j;->i(Lcn/nubia/camera/ao/j;)V

    if-eqz v0, :cond_5

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    const v1, 0x7f0f01a3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    const v1, 0x7f0f019f

    :goto_2
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ao/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    const v3, 0x7f0f028e

    invoke-virtual {v2, v3}, Lcn/nubia/camera/ao/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->j(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ao/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ao/h;->e()V

    .line 312
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/ao/j$2;->a:Lcn/nubia/camera/ao/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/j;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->b()V

    :cond_6
    return-void
.end method

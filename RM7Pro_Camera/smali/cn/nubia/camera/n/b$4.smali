.class Lcn/nubia/camera/n/b$4;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    .line 381
    invoke-static {v0}, Lcn/nubia/camera/n/b;->j(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "EffectPageManager"

    const-string v1, "debug, execute click effect button"

    .line 384
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->m(Lcn/nubia/camera/n/b;)V

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_female_effect_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "pref_male_effect_key"

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    .line 393
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->l(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->l(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->n()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/n/b$4;->a:Lcn/nubia/camera/n/b;

    invoke-static {v2}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/n/b$a;->a(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

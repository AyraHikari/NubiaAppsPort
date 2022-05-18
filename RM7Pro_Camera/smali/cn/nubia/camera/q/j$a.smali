.class Lcn/nubia/camera/q/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/setting/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/q/j;Lcn/nubia/camera/q/j$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/j$a;-><init>(Lcn/nubia/camera/q/j;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/setting/c;
    .locals 1

    .line 319
    invoke-static {p1}, Lcn/nubia/camera/q/j;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object p1, Lcom/android/setting/c;->d:Lcom/android/setting/c;

    return-object p1

    .line 321
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/q/j;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    sget-object p1, Lcom/android/setting/c;->e:Lcom/android/setting/c;

    return-object p1

    .line 323
    :cond_1
    invoke-static {p1}, Lcn/nubia/camera/q/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    sget-object p1, Lcom/android/setting/c;->b:Lcom/android/setting/c;

    return-object p1

    .line 325
    :cond_2
    invoke-static {p1}, Lcn/nubia/camera/q/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    sget-object p1, Lcom/android/setting/c;->c:Lcom/android/setting/c;

    return-object p1

    .line 327
    :cond_3
    invoke-static {p1}, Lcn/nubia/camera/q/j;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 328
    sget-object p1, Lcom/android/setting/c;->a:Lcom/android/setting/c;

    return-object p1

    .line 330
    :cond_4
    sget-object p1, Lcom/android/setting/c;->d:Lcom/android/setting/c;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/q/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 370
    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 374
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_water_mark_custom_key"

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const-string v2, "pref_logo_water_mark_update_key"

    .line 379
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    iget-object p2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 384
    iget-object p2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->c()V

    .line 386
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 387
    iget-object p2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/setting/e;->c()V

    .line 390
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 391
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->f(Lcn/nubia/camera/q/j;)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/j;->b(Z)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "pref_key_capture_camera"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->H()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "pref_storage_path"

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f02a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 346
    invoke-static {v2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f02ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 345
    invoke-virtual {v1, v0}, Lcn/nubia/k/a/a;->a(Z)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "pref_water_mark_time_key"

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pref_water_mark_logo_key"

    if-nez v0, :cond_4

    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "pref_intelligent_power_saving"

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    goto :goto_1

    :cond_3
    const-string v0, "pref_moresetting_picturesize_key"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setting/e;->c()V

    goto :goto_1

    .line 350
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    iget-object v2, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v3}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->b(I)V

    .line 351
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->e()V

    .line 361
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->e(Lcn/nubia/camera/q/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/j$b;

    .line 362
    invoke-interface {v1, p1}, Lcn/nubia/camera/q/j$b;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_back_video_quality_key"

    .line 418
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 420
    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02c7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02c9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xbb9

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1

    .line 421
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "pref_video_encoder_key"

    .line 427
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 428
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f02b8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 429
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "pref_moresetting_picturesize_key"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 399
    invoke-static {v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v3}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "pref_multi_focus_key"

    .line 401
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 402
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 403
    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    .line 404
    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 405
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    sget-object v0, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->g(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/zoom/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .line 408
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/b;->c(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    const-string v0, "pref_peaking_focus_key"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 411
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/b;->k()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    move v2, v3

    :cond_5
    return v2

    :cond_6
    return v3
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/q/j$a;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->c(Lcn/nubia/camera/q/j;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

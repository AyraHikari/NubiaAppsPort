.class Lcn/nubia/camera/bb/y$7;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    iput-object p4, p0, Lcn/nubia/camera/bb/y$7;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 522
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    const v2, 0x7f0f030b

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 524
    iget-object v1, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    if-eqz v0, :cond_0

    const v2, 0x7f0f01a3

    goto :goto_0

    :cond_0
    const v2, 0x7f0f019f

    :goto_0
    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    const v4, 0x7f0f02bb

    .line 525
    invoke-virtual {v3, v4}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 524
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->n(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    const-string v1, "pref_camera_video_anti_shake"

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/y;->b(Lcn/nubia/camera/bb/y;Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    const v2, 0x7f0f0309

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->n(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-static {v1}, Lcn/nubia/camera/bb/y;->o(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/PreferenceGroup;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/y;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/y;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->b()V

    .line 538
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/y;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/y;->a(F)Z

    .line 541
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->p(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_3

    .line 542
    iget-object v0, p0, Lcn/nubia/camera/bb/y$7;->b:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->m(Lcn/nubia/camera/bb/y;)V

    :cond_3
    return-void
.end method

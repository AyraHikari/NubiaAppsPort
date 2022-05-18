.class Lcn/nubia/camera/w/a$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->j(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 534
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->q(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    iget-object v3, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v3}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_interval_switch_key"

    const-string v2, "off"

    .line 540
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_interval_time_key"

    const-string v2, "-1"

    .line 541
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/b;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->q(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/w/c;->a(Lcn/nubia/camera/w/b;)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    invoke-static {v0, v1, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 553
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_camera_electronic_aperture_key"

    .line 552
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 553
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    iget-object p1, p0, Lcn/nubia/camera/w/a$21;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->r(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method

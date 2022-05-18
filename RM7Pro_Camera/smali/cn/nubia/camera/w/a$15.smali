.class Lcn/nubia/camera/w/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->d(Landroid/view/View;)V
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

    .line 360
    iput-object p1, p0, Lcn/nubia/camera/w/a$15;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/w/a$15;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->e(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object p2, p0, Lcn/nubia/camera/w/a$15;->a:Lcn/nubia/camera/w/a;

    invoke-static {p2}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/w/d;->P(Lcn/nubia/camera/ad/a;)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 365
    iget-object p2, p0, Lcn/nubia/camera/w/a$15;->a:Lcn/nubia/camera/w/a;

    invoke-static {p2}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_camera_metering_mode_key"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    iget-object p1, p0, Lcn/nubia/camera/w/a$15;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->g(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    :cond_0
    return-void
.end method

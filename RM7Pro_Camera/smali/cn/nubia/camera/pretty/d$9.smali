.class Lcn/nubia/camera/pretty/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/WaterDropSeekbar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/d$b;->a(I)F

    move-result v0

    .line 456
    iget-object v1, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_bigaperture_focus_length"

    .line 457
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->o(Lcn/nubia/camera/pretty/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/d$b;->b(I)F

    move-result p1

    const-string v0, "pref_faceplus_focus_length_value"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 461
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->l(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$9;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->l(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/pretty/a$b;->a()V

    :cond_1
    return-void
.end method

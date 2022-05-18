.class Lcn/nubia/camera/pretty/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/WaterDropSeekbar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/c;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/c;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/c;->h(Lcn/nubia/camera/pretty/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRETTY_ADJUST_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {v2}, Lcn/nubia/camera/pretty/c;->i(Lcn/nubia/camera/pretty/c;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.camera"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/c;->c(Lcn/nubia/camera/pretty/c;Z)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/c;->f(Lcn/nubia/camera/pretty/c;)Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_slimming"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_smooth"

    .line 222
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_pretty_toning"

    .line 223
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->g(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$3;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->g(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/pretty/a$b;->a()V

    :cond_0
    return-void
.end method

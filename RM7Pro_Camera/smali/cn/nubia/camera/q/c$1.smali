.class Lcn/nubia/camera/q/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/c;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/camera/q/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/c;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    iput-object p2, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 164
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_3

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    iget-object v0, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 166
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_back_video_quality_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 169
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_video_encoder_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/camera/w/d;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/w/d;->a(Ljava/util/List;Lcn/nubia/camera/w/b;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_camera_exposure_time_nanosec_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_camera_exposure_time_min_key"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/q/c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 176
    iget-object p1, p0, Lcn/nubia/camera/q/c$1;->b:Lcn/nubia/camera/q/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, v1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;ZZZZ)V

    :cond_4
    return-void
.end method

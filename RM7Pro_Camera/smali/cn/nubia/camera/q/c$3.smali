.class Lcn/nubia/camera/q/c$3;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/camera/q/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    iput-object p2, p0, Lcn/nubia/camera/q/c$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/camera/q/c$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 197
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/q/c$3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 201
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    iget-object v0, p0, Lcn/nubia/camera/q/c$3;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

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

    .line 205
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->b:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

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

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_3

    .line 211
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_moresetting_picturesize_key"

    invoke-virtual {p1, v0, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    .line 213
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 214
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f00eb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {v0}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0f03c2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void

    .line 220
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v4, p0, Lcn/nubia/camera/q/c$3;->a:Ljava/lang/String;

    invoke-direct {v0, v4, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 221
    iget-object p1, p0, Lcn/nubia/camera/q/c$3;->c:Lcn/nubia/camera/q/c;

    invoke-static {p1, v3, v3, v1, v3}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;ZZZZ)V

    :cond_4
    return-void
.end method

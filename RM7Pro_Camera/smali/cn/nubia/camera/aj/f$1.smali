.class Lcn/nubia/camera/aj/f$1;
.super Lcn/nubia/camera/g/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;Landroid/content/Context;Lcn/nubia/j/a;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 145
    iget-object v2, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v2}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_live_photo_key"

    invoke-virtual {v2, v3, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/aj/f$1;->b:Lcn/nubia/j/a;

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/aj/f$1;->d:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v2}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    iget-object v2, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v2, v1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;Z)Z

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ad/a;->a(Landroid/graphics/Bitmap;)V

    .line 155
    monitor-exit v0

    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;Z)Z

    .line 158
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->g(Lcn/nubia/camera/aj/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    .line 159
    invoke-static {v1}, Lcn/nubia/camera/aj/f;->h(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/g/e;->b()Lcn/nubia/camera/aj/k;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "NormalOnShutterButtonListener"

    const-string v2, "advance go to gallery"

    .line 160
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->h(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/g/e;->b()Lcn/nubia/camera/aj/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/aj/k;->b()V

    .line 162
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->j:Lcn/nubia/camera/d/c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->i(Lcn/nubia/camera/aj/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->k(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/f$1;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v2}, Lcn/nubia/camera/aj/f;->j(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 166
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcn/nubia/camera/n/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/ZtemtFunEffectSlider$a;


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

    .line 205
    iput-object p1, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EffectPageManager"

    const-string v1, "onScrollStart"

    .line 229
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;Z)Z

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/n/f;->e()V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    .line 210
    invoke-static {v0}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Lcn/nubia/camera/n/b$b;

    iget-object v1, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-direct {v0, v1, p1}, Lcn/nubia/camera/n/b$b;-><init>(Lcn/nubia/camera/n/b;I)V

    .line 214
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "EffectPageManager"

    const-string v1, "onScrollEnd"

    .line 246
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;Z)Z

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/n/f;->f()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    .line 221
    invoke-static {p1}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->g(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/f;->a(Z)V

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->h(Lcn/nubia/camera/n/b;)Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/n/f;->b(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/f;->a(Z)V

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->h(Lcn/nubia/camera/n/b;)Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->h()V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/n/b$3;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/n/f;->c(I)V

    :cond_0
    return-void
.end method

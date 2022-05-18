.class Lcn/nubia/camera/n/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/n/b;->a(Landroid/view/View;Landroid/view/View;)V
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

    .line 152
    iput-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result p1

    const-string v0, "EffectPageManager"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    .line 157
    invoke-static {p1}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    .line 158
    invoke-static {p1}, Lcn/nubia/camera/n/b;->c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/d/e;->e:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    invoke-static {p1}, Lcn/nubia/camera/n/b;->d(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    .line 165
    invoke-static {p1}, Lcn/nubia/camera/n/b;->d(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/n/b$c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "click intercepted"

    .line 166
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_1
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->e(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    return-void

    .line 159
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Has Effect Render: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; isClickable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/n/b$1;->a:Lcn/nubia/camera/n/b;

    .line 160
    invoke-static {v1}, Lcn/nubia/camera/n/b;->b(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

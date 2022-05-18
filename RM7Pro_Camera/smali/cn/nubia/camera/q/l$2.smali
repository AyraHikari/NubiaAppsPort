.class Lcn/nubia/camera/q/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/l;->a(Landroid/view/View;Lcn/nubia/camera/q/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/l;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {p1}, Lcn/nubia/camera/q/l;->a(Lcn/nubia/camera/q/l;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {v0}, Lcn/nubia/camera/q/l;->a(Lcn/nubia/camera/q/l;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->i(Z)V

    .line 67
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {p1}, Lcn/nubia/camera/q/l;->a(Lcn/nubia/camera/q/l;)Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/h;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {p1}, Lcn/nubia/camera/q/l;->d(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const v0, 0x7f08005e

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 69
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    const v0, 0x7f0f03be

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/q/l;->a(Lcn/nubia/camera/q/l;II)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {p1}, Lcn/nubia/camera/q/l;->d(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/q/l$2;->a:Lcn/nubia/camera/q/l;

    invoke-static {p1}, Lcn/nubia/camera/q/l;->c(Lcn/nubia/camera/q/l;)V

    :goto_0
    return-void
.end method

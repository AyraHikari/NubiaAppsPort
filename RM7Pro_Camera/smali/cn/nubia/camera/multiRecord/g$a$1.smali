.class Lcn/nubia/camera/multiRecord/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g$a;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 208
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    const-string v2, "ui_change_recording"

    invoke-static {v0, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->d(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 218
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 219
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->e(Lcn/nubia/camera/multiRecord/g;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->f(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a$1;->a:Lcn/nubia/camera/multiRecord/g$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->g(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.class Lcn/nubia/camera/x/a$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a$5;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a$5;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcn/nubia/camera/x/a$5$1;->a:Lcn/nubia/camera/x/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/x/a$5$1;->a:Lcn/nubia/camera/x/a$5;

    iget-object v0, v0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->d(Lcn/nubia/camera/x/a;)Lcom/android/common/ui/RotateTextImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setEnabled(Z)V

    .line 488
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/x/a$5$1;->a:Lcn/nubia/camera/x/a$5;

    iget-object v0, v0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->e(Lcn/nubia/camera/x/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcn/nubia/camera/x/a$5$1;->a:Lcn/nubia/camera/x/a$5;

    iget-object v0, v0, Lcn/nubia/camera/x/a$5;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->f(Lcn/nubia/camera/x/a;)V

    :cond_0
    return-void
.end method

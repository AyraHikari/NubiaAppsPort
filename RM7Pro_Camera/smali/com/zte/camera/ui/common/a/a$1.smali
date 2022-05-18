.class Lcom/zte/camera/ui/common/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/a/a;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/a/a;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    iget-boolean v0, v0, Lcom/zte/camera/ui/common/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/camera/ui/common/a/a;->f:Z

    .line 110
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    iget-object v1, v0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-static {v0, v1}, Lcom/zte/camera/ui/common/a/a;->a(Lcom/zte/camera/ui/common/a/a;Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    iget-object v0, v0, Lcom/zte/camera/ui/common/a/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    iget-object v1, v1, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/zte/camera/ui/common/a/a$1;->a:Lcom/zte/camera/ui/common/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/camera/ui/common/a/a;->c:Lcom/zte/camera/ui/common/RotateLinearLayout;

    :cond_0
    return-void
.end method

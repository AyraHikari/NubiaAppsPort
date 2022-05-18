.class Lcn/nubia/camera/bb/y$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcn/nubia/camera/bb/y$10;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcn/nubia/camera/bb/y$10;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->u(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/bb/y$10;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->v(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/f;->a(Z)V

    .line 776
    iget-object v0, p0, Lcn/nubia/camera/bb/y$10;->a:Lcn/nubia/camera/bb/y;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/y;->d_()Z

    .line 777
    iget-object v0, p0, Lcn/nubia/camera/bb/y$10;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->v(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/f;->a(Z)V

    return-void
.end method

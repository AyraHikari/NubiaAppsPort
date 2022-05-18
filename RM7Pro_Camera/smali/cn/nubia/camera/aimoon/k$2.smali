.class Lcn/nubia/camera/aimoon/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/k;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/k;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcn/nubia/camera/aimoon/k$2;->a:Lcn/nubia/camera/aimoon/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k$2;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/k;->f(Lcn/nubia/camera/aimoon/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k$2;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/k;->g(Lcn/nubia/camera/aimoon/k;)V

    .line 308
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k$2;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/k;->h(Lcn/nubia/camera/aimoon/k;)V

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/aimoon/k$2;->a:Lcn/nubia/camera/aimoon/k;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/k;->i(Lcn/nubia/camera/aimoon/k;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

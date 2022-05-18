.class Lcn/nubia/camera/selfieflash/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/selfieflash/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/selfieflash/c$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/selfieflash/c$a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c$a$1;->a:Lcn/nubia/camera/selfieflash/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a$1;->a:Lcn/nubia/camera/selfieflash/c$a;

    iget-object v0, v0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->f(Lcn/nubia/camera/selfieflash/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a$1;->a:Lcn/nubia/camera/selfieflash/c$a;

    iget-object v0, v0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->e(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a$1;->a:Lcn/nubia/camera/selfieflash/c$a;

    iget-object v0, v0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->e(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

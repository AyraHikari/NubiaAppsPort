.class Lcn/nubia/camera/aimoon/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aimoon/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/e;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e$2;->a:Lcn/nubia/camera/aimoon/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e$2;->a:Lcn/nubia/camera/aimoon/e;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/e;->b(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/e$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/e$2$1;-><init>(Lcn/nubia/camera/aimoon/e$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

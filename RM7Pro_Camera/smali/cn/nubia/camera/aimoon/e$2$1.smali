.class Lcn/nubia/camera/aimoon/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/e$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/e$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/e$2;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e$2$1;->a:Lcn/nubia/camera/aimoon/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e$2$1;->a:Lcn/nubia/camera/aimoon/e$2;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/e$2;->a:Lcn/nubia/camera/aimoon/e;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/e;->a(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e$2$1;->a:Lcn/nubia/camera/aimoon/e$2;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/e$2;->a:Lcn/nubia/camera/aimoon/e;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/e;->b(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

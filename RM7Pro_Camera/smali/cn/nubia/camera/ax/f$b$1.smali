.class Lcn/nubia/camera/ax/f$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ax/f$b;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ax/f$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ax/f$b;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcn/nubia/camera/ax/f$b$1;->a:Lcn/nubia/camera/ax/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/ax/f$b$1;->a:Lcn/nubia/camera/ax/f$b;

    iget-object v0, v0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    iget-object v1, p0, Lcn/nubia/camera/ax/f$b$1;->a:Lcn/nubia/camera/ax/f$b;

    iget-object v1, v1, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {v1}, Lcn/nubia/camera/ax/f;->b(Lcn/nubia/camera/ax/f;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/f;F)F

    return-void
.end method

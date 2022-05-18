.class Lcn/nubia/camera/q/b$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/b$1;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/b$1;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcn/nubia/camera/q/b$1$2;->a:Lcn/nubia/camera/q/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 958
    iget-object v0, p0, Lcn/nubia/camera/q/b$1$2;->a:Lcn/nubia/camera/q/b$1;

    iget-object v0, v0, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Lcn/nubia/camera/q/b$1$2;->a:Lcn/nubia/camera/q/b$1;

    invoke-static {v0}, Lcn/nubia/camera/q/b$1;->a(Lcn/nubia/camera/q/b$1;)V

    :cond_0
    return-void
.end method

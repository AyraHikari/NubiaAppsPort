.class Lcn/nubia/camera/q/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcn/nubia/camera/q/j$3;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcn/nubia/camera/q/j$3;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/q/j$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/j$3$1;-><init>(Lcn/nubia/camera/q/j$3;)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method

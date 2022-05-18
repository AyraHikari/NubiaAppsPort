.class Lcn/nubia/camera/q/j$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/j$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j$3;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/j$3;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcn/nubia/camera/q/j$3$1;->a:Lcn/nubia/camera/q/j$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcn/nubia/camera/q/j$3$1;->a:Lcn/nubia/camera/q/j$3;

    iget-object v0, v0, Lcn/nubia/camera/q/j$3;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->E()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 883
    iget-object v0, p0, Lcn/nubia/camera/q/j$3$1;->a:Lcn/nubia/camera/q/j$3;

    iget-object v0, v0, Lcn/nubia/camera/q/j$3;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/m/a;->b(Z)V

    return-void
.end method

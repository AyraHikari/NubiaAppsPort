.class Lcn/nubia/camera/three_a/ui/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/three_a/ui/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/three_a/ui/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/b;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/b$1;->a:Lcn/nubia/camera/three_a/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/b$1;->a:Lcn/nubia/camera/three_a/ui/b;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/b;->e:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/h$g;->a(F)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/i;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b$1;->a:Lcn/nubia/camera/three_a/ui/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/b;->e(Z)V

    const-string p1, "ExposureViewManager"

    const-string v0, "onStartTrackingTouch true"

    .line 93
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lcn/nubia/camera/three_a/ui/i;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/b$1;->a:Lcn/nubia/camera/three_a/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/b;->e(Z)V

    const-string p1, "ExposureViewManager"

    const-string v0, "onStopTrackingTouch false"

    .line 99
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

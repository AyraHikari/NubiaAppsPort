.class Lcn/nubia/camera/aj/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/a$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a$2;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 3

    const-string p1, "OpticalZoomCameraSwitcher"

    const-string v0, "onConfigSuccess"

    .line 138
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object p1, p1, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {p1}, Lcn/nubia/camera/aj/a;->d(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object v0, v0, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->c(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/zoom/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object v1, v1, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v1}, Lcn/nubia/camera/aj/a;->b(Lcn/nubia/camera/aj/a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object v2, v2, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v2}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/d;->a(FLjava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(F)V

    .line 140
    iget-object p1, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object p1, p1, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {p1}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object v0, v0, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    iget-object v0, v0, Lcn/nubia/camera/aj/a;->a:Lcom/android/common/c/a$a;

    invoke-virtual {p1, v0}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/aj/a$2$1;->a:Lcn/nubia/camera/aj/a$2;

    iget-object p1, p1, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {p1}, Lcn/nubia/camera/aj/a;->d(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

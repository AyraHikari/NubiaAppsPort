.class Lcn/nubia/camera/ao/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/k;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ao/m;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/k;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->a(Lcn/nubia/camera/ao/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->b(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ao/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->b(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ao/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ao/e;->c()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->c(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ao/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ao/g;->c()V

    .line 67
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->d(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->o()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    .line 68
    invoke-static {p1}, Lcn/nubia/camera/ao/k;->d(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ao/k$2;->a:Lcn/nubia/camera/ao/k;

    invoke-static {p1}, Lcn/nubia/camera/ao/k;->d(Lcn/nubia/camera/ao/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->n()V

    :cond_2
    return-void
.end method

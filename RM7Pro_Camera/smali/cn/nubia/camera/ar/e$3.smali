.class Lcn/nubia/camera/ar/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/ar/e$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/q;

.field final synthetic b:Lcn/nubia/camera/k/o;

.field final synthetic c:Lcn/nubia/camera/k/u;

.field final synthetic d:Lcn/nubia/camera/ar/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    iput-object p2, p0, Lcn/nubia/camera/ar/e$3;->a:Lcn/nubia/camera/k/q;

    iput-object p3, p0, Lcn/nubia/camera/ar/e$3;->b:Lcn/nubia/camera/k/o;

    iput-object p4, p0, Lcn/nubia/camera/ar/e$3;->c:Lcn/nubia/camera/k/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 7

    .line 139
    iget-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-virtual {p1}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ar/d;

    iget-object v0, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {v0}, Lcn/nubia/camera/ar/e;->c(Lcn/nubia/camera/ar/e;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {v1}, Lcn/nubia/camera/ar/e;->d(Lcn/nubia/camera/ar/e;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ar/d;->a(II)V

    .line 140
    iget-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-virtual {p1}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->i(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/k/p;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ar/e$3;->a:Lcn/nubia/camera/k/q;

    iget-object v3, p0, Lcn/nubia/camera/ar/e$3;->b:Lcn/nubia/camera/k/o;

    new-instance v4, Lcn/nubia/camera/ar/e$3$1;

    invoke-direct {v4, p0}, Lcn/nubia/camera/ar/e$3$1;-><init>(Lcn/nubia/camera/ar/e$3;)V

    iget-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    .line 200
    invoke-static {p1}, Lcn/nubia/camera/ar/e;->h(Lcn/nubia/camera/ar/e;)Lcn/nubia/b/k;

    move-result-object v5

    const/4 p1, 0x0

    new-array v6, p1, [Lcn/nubia/b/m;

    const/4 v1, 0x2

    .line 141
    invoke-interface/range {v0 .. v6}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    .line 201
    iget-object p1, p0, Lcn/nubia/camera/ar/e$3;->d:Lcn/nubia/camera/ar/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

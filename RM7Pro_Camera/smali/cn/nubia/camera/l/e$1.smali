.class Lcn/nubia/camera/l/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/u;

.field final synthetic b:Lcn/nubia/camera/k/q;

.field final synthetic c:Lcn/nubia/camera/k/o;

.field final synthetic d:Lcn/nubia/camera/l/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/e;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    iput-object p2, p0, Lcn/nubia/camera/l/e$1;->a:Lcn/nubia/camera/k/u;

    iput-object p3, p0, Lcn/nubia/camera/l/e$1;->b:Lcn/nubia/camera/k/q;

    iput-object p4, p0, Lcn/nubia/camera/l/e$1;->c:Lcn/nubia/camera/k/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaking(Z)V
    .locals 8

    .line 145
    new-instance v4, Lcn/nubia/camera/l/e$1$1;

    invoke-direct {v4, p0}, Lcn/nubia/camera/l/e$1$1;-><init>(Lcn/nubia/camera/l/e$1;)V

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-virtual {p1}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/l/d;

    const/16 v0, 0x64

    invoke-virtual {p1, v0, v0}, Lcn/nubia/camera/l/d;->a(II)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-virtual {p1}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 180
    iget-object p1, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {p1}, Lcn/nubia/camera/l/e;->e(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/k/p;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/nubia/camera/l/e$1;->b:Lcn/nubia/camera/k/q;

    iget-object v3, p0, Lcn/nubia/camera/l/e$1;->c:Lcn/nubia/camera/k/o;

    iget-object p1, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    .line 181
    invoke-static {p1}, Lcn/nubia/camera/l/e;->c(Lcn/nubia/camera/l/e;)Lcn/nubia/b/k;

    move-result-object v5

    const/4 p1, 0x1

    new-array v6, p1, [Lcn/nubia/b/m;

    const/4 p1, 0x0

    iget-object v7, p0, Lcn/nubia/camera/l/e$1;->d:Lcn/nubia/camera/l/e;

    invoke-static {v7}, Lcn/nubia/camera/l/e;->d(Lcn/nubia/camera/l/e;)Lcn/nubia/b/k;

    move-result-object v7

    aput-object v7, v6, p1

    .line 180
    invoke-interface/range {v0 .. v6}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    return-void
.end method

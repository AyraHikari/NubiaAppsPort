.class Lcn/nubia/camera/at/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/i;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/u;

.field final synthetic b:Lcn/nubia/camera/k/q;

.field final synthetic c:Lcn/nubia/camera/k/o;

.field final synthetic d:Lcn/nubia/camera/at/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/i;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    iput-object p2, p0, Lcn/nubia/camera/at/i$1;->a:Lcn/nubia/camera/k/u;

    iput-object p3, p0, Lcn/nubia/camera/at/i$1;->b:Lcn/nubia/camera/k/q;

    iput-object p4, p0, Lcn/nubia/camera/at/i$1;->c:Lcn/nubia/camera/k/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaking(Z)V
    .locals 7

    .line 106
    new-instance v4, Lcn/nubia/camera/at/i$1$1;

    invoke-direct {v4, p0}, Lcn/nubia/camera/at/i$1$1;-><init>(Lcn/nubia/camera/at/i$1;)V

    .line 134
    iget-object p1, p0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-virtual {p1}, Lcn/nubia/camera/at/i;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 135
    iget-object p1, p0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-static {p1}, Lcn/nubia/camera/at/i;->d(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/k/p;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/at/i$1;->b:Lcn/nubia/camera/k/q;

    iget-object v3, p0, Lcn/nubia/camera/at/i$1;->c:Lcn/nubia/camera/k/o;

    iget-object p1, p0, Lcn/nubia/camera/at/i$1;->d:Lcn/nubia/camera/at/i;

    invoke-static {p1}, Lcn/nubia/camera/at/i;->c(Lcn/nubia/camera/at/i;)Lcn/nubia/b/k;

    move-result-object v5

    const/4 p1, 0x0

    new-array v6, p1, [Lcn/nubia/b/m;

    const/4 v1, 0x2

    invoke-interface/range {v0 .. v6}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    return-void
.end method

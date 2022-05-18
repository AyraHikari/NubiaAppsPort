.class Lcn/nubia/camera/prisma/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$11;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 746
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$11;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->k(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, 0x64

    const-wide/16 v5, -0x1

    const-string v7, "prisma"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$11;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->l(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    return-void
.end method

.method public b()V
    .locals 8

    .line 752
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$11;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->m(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    const-wide/16 v5, -0x1

    const-string v7, "prisma"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$11;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->n(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    return-void
.end method

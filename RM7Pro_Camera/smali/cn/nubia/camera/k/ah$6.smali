.class Lcn/nubia/camera/k/ah$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/k/q;

.field final synthetic c:Lcn/nubia/camera/k/u;

.field final synthetic d:[Lcn/nubia/b/m;

.field final synthetic e:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcn/nubia/camera/k/ah$6;->e:Lcn/nubia/camera/k/ah;

    iput p2, p0, Lcn/nubia/camera/k/ah$6;->a:I

    iput-object p3, p0, Lcn/nubia/camera/k/ah$6;->b:Lcn/nubia/camera/k/q;

    iput-object p4, p0, Lcn/nubia/camera/k/ah$6;->c:Lcn/nubia/camera/k/u;

    iput-object p5, p0, Lcn/nubia/camera/k/ah$6;->d:[Lcn/nubia/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcn/nubia/camera/k/ah$6;->e:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;)Lcom/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v1, Lcn/nubia/camera/k/ah$6$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/k/ah$6$1;-><init>(Lcn/nubia/camera/k/ah$6;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    return-void
.end method

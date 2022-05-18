.class Lb/a/c/a/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e;


# direct methods
.method constructor <init>(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$e;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/c/a/e$e;->a:Lb/a/c/a/e;

    iget-object v0, p1, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    iget-object p1, p1, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    invoke-interface {p1}, Lcn/nubia/modules/videoRender/b;->getProduceSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->E(Landroid/view/Surface;)V

    .line 2
    iget-object p1, p0, Lb/a/c/a/e$e;->a:Lb/a/c/a/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/a/c/a/e;->u(Lb/a/c/a/e;Z)Z

    .line 3
    iget-object p1, p0, Lb/a/c/a/e$e;->a:Lb/a/c/a/e;

    iget-object p1, p1, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/a;->H()V

    .line 4
    iget-object p1, p0, Lb/a/c/a/e$e;->a:Lb/a/c/a/e;

    invoke-static {p1}, Lb/a/c/a/e;->z(Lb/a/c/a/e;)V

    return-void
.end method

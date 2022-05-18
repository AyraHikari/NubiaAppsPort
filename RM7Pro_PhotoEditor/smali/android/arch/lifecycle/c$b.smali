.class Landroid/arch/lifecycle/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/a$b;

.field b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# virtual methods
.method a(Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V
    .locals 2

    invoke-static {p2}, Landroid/arch/lifecycle/c;->d(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/c;->h(Landroid/arch/lifecycle/a$b;Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$b;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    iget-object v1, p0, Landroid/arch/lifecycle/c$b;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    iput-object v0, p0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    return-void
.end method

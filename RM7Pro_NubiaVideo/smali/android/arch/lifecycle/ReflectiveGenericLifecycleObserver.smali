.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/arch/lifecycle/a$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 3
    sget-object v0, Landroid/arch/lifecycle/a;->c:Landroid/arch/lifecycle/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/a;->c(Ljava/lang/Class;)Landroid/arch/lifecycle/a$a;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroid/arch/lifecycle/a$a;

    return-void
.end method


# virtual methods
.method public g(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroid/arch/lifecycle/a$a;

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Landroid/arch/lifecycle/a$a;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;Ljava/lang/Object;)V

    return-void
.end method

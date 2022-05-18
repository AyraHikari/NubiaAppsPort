.class Lcn/nubia/camera/ai/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/c;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->a(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->m()V

    .line 75
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ai/a;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->c(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->n()V

    .line 77
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ai/a;->b(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->d(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->o()V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {p1}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ai/a;->b(I)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-virtual {p1}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-virtual {p1}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const/16 p2, 0x8

    const-string v0, "night"

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->e(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ai/a;->e()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/ai/c$1;->a:Lcn/nubia/camera/ai/c;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "night"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

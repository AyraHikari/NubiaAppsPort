.class Lcn/nubia/camera/pretty/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/e;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e$1;->a:Lcn/nubia/camera/pretty/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 2

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/e$1;->a:Lcn/nubia/camera/pretty/a/e;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/e;->a(Lcn/nubia/camera/pretty/a/e;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 115
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e$1;->a:Lcn/nubia/camera/pretty/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/a/e;->a(Lcn/nubia/camera/pretty/a/e;Lcn/nubia/b/a/f;)Lcn/nubia/b/a/f;

    .line 116
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/e$1;->a:Lcn/nubia/camera/pretty/a/e;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/e;->b(Lcn/nubia/camera/pretty/a/e;)Lcn/nubia/camera/pretty/a/e$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/e$1;->a:Lcn/nubia/camera/pretty/a/e;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/e;->b(Lcn/nubia/camera/pretty/a/e;)Lcn/nubia/camera/pretty/a/e$a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcn/nubia/camera/pretty/a/e$a;->a([B)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 111
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/e$1;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method

.class Lcn/nubia/camera/pretty/a/f$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$12;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    const-string p2, "PrettyBokehShutterButtonClickListener"

    const-string v0, "onYuvReceived"

    .line 277
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$12;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/f;->d(Lcn/nubia/camera/pretty/a/f;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 279
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$12;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->e(Lcn/nubia/camera/pretty/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$12;->a:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->f(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/a/e;->a(Lcn/nubia/b/a/f;)V

    .line 282
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 274
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$12;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

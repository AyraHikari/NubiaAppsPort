.class Lcn/nubia/camera/pretty/a/f$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$11;->b:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$11;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 1

    const-string p2, "PrettyBokehShutterButtonClickListener"

    const-string v0, "onJpeg, bokeh jpeg"

    .line 267
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$11;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/f;->d(Lcn/nubia/camera/pretty/a/f;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 269
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$11;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->e(Lcn/nubia/camera/pretty/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$11;->a:Lcn/nubia/camera/pretty/a/b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/a/b;->a([B)V

    .line 272
    :cond_1
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

    .line 264
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$11;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method

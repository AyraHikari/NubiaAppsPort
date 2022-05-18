.class Lcn/nubia/camera/pretty/a/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/a;

.field final synthetic c:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;Lcn/nubia/camera/pretty/a/a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$6;->c:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$6;->a:Lcn/nubia/camera/pretty/a/b;

    iput-object p3, p0, Lcn/nubia/camera/pretty/a/f$6;->b:Lcn/nubia/camera/pretty/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 2

    const-string p2, "PrettyBokehShutterButtonClickListener"

    const-string v0, "jpeg onPictureTaken"

    .line 164
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 167
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 168
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$6;->c:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p2}, Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$6;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/pretty/a/b;->b([B)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$6;->a:Lcn/nubia/camera/pretty/a/b;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/nubia/camera/pretty/a/b;->b([B)V

    .line 174
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$6;->b:Lcn/nubia/camera/pretty/a/a;

    monitor-enter p2

    .line 175
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f$6;->b:Lcn/nubia/camera/pretty/a/a;

    iput-object v0, v1, Lcn/nubia/camera/pretty/a/a;->a:[B

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$6;->b:Lcn/nubia/camera/pretty/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 177
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 161
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$6;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

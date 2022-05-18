.class Lcn/nubia/l/a/b$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcn/nubia/l/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/l/a/b;


# direct methods
.method public constructor <init>(Lcn/nubia/l/a/b;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcn/nubia/l/a/a;
    .locals 6

    .line 358
    invoke-virtual {p0}, Lcn/nubia/l/a/b$b;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 361
    :cond_0
    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->c(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/b$c;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$c;)V

    const/4 p1, 0x1

    new-array v1, p1, [Lcn/nubia/l/a/a;

    .line 364
    iget-object v2, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    .line 365
    invoke-static {v2}, Lcn/nubia/l/a/b;->d(Lcn/nubia/l/a/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {v3}, Lcn/nubia/l/a/b;->e(Lcn/nubia/l/a/b;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {v4}, Lcn/nubia/l/a/b;->f(Lcn/nubia/l/a/b;)J

    move-result-wide v4

    .line 364
    invoke-static {v2, v1, v3, v4, v5}, Lcn/nubia/l/a/a;->a(Landroid/content/Context;[Lcn/nubia/l/a/a;IJ)I

    move-result v2

    if-eq v2, p1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    return-object v0

    .line 376
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/l/a/b$b;->cancel(Z)Z

    return-object v0

    .line 368
    :cond_2
    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->g(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->g(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->g(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object p1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ThumbnailManager"

    const-string v0, "thumbnail equal"

    .line 369
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->g(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/a;

    move-result-object p1

    return-object p1

    .line 372
    :cond_3
    aget-object p1, v1, v0

    return-object p1
.end method

.method protected a(Lcn/nubia/l/a/a;)V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcn/nubia/l/a/b$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    invoke-static {v0, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/a;)V

    .line 388
    iget-object p1, p0, Lcn/nubia/l/a/b$b;->a:Lcn/nubia/l/a/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$b;)Lcn/nubia/l/a/b$b;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/l/a/b$b;->a([Ljava/lang/Void;)Lcn/nubia/l/a/a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 349
    check-cast p1, Lcn/nubia/l/a/a;

    invoke-virtual {p0, p1}, Lcn/nubia/l/a/b$b;->a(Lcn/nubia/l/a/a;)V

    return-void
.end method

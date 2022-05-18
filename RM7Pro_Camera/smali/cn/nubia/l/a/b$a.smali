.class Lcn/nubia/l/a/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcn/nubia/l/b/d;",
        "Ljava/lang/Void;",
        "Lcn/nubia/l/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/l/a/b;


# direct methods
.method private constructor <init>(Lcn/nubia/l/a/b;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$1;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcn/nubia/l/a/b$a;-><init>(Lcn/nubia/l/a/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcn/nubia/l/b/d;)Lcn/nubia/l/a/a;
    .locals 1

    .line 327
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 328
    invoke-interface {p1}, Lcn/nubia/l/b/d;->a()Lcn/nubia/l/a/a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcn/nubia/l/a/a;)V
    .locals 4

    .line 333
    iget-object v0, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-static {v0, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/a;)V

    .line 334
    iget-object p1, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-static {p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    monitor-enter p1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-static {v0}, Lcn/nubia/l/a/b;->b(Lcn/nubia/l/a/b;)Lcn/nubia/l/b/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lcn/nubia/l/a/b$a;

    iget-object v2, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-direct {v0, v2}, Lcn/nubia/l/a/b$a;-><init>(Lcn/nubia/l/a/b;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/nubia/l/b/d;

    iget-object v3, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    invoke-static {v3}, Lcn/nubia/l/a/b;->b(Lcn/nubia/l/a/b;)Lcn/nubia/l/b/d;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcn/nubia/l/a/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    iget-object v0, p0, Lcn/nubia/l/a/b$a;->a:Lcn/nubia/l/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/b;Lcn/nubia/l/b/d;)Lcn/nubia/l/b/d;

    .line 341
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 323
    check-cast p1, [Lcn/nubia/l/b/d;

    invoke-virtual {p0, p1}, Lcn/nubia/l/a/b$a;->a([Lcn/nubia/l/b/d;)Lcn/nubia/l/a/a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 323
    check-cast p1, Lcn/nubia/l/a/a;

    invoke-virtual {p0, p1}, Lcn/nubia/l/a/b$a;->a(Lcn/nubia/l/a/a;)V

    return-void
.end method

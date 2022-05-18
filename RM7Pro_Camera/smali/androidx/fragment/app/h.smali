.class public abstract Landroidx/fragment/app/h;
.super Landroidx/fragment/app/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/e;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroidx/fragment/app/j;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    .line 49
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 64
    invoke-static {p2, p1}, Landroidx/core/e/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 65
    invoke-static {p3, p1}, Landroidx/core/e/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 66
    iput p4, p0, Landroidx/fragment/app/h;->e:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/h;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroidx/fragment/app/c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method b(Landroidx/fragment/app/c;)V
    .locals 0

    return-void
.end method

.method public e()Landroid/view/LayoutInflater;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    .line 179
    iget v0, p0, Landroidx/fragment/app/h;->e:I

    return v0
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method k()Landroid/app/Activity;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method l()Landroid/content/Context;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method m()Landroid/os/Handler;
    .locals 1

    .line 205
    iget-object v0, p0, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    return-object v0
.end method

.class Lc/c/a/f/a/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/f/a/b$a;->a(Lc/c/a/f/a/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/f/a/h/b;

.field final synthetic b:Lc/c/a/f/a/b$a;


# direct methods
.method constructor <init>(Lc/c/a/f/a/b$a;Lc/c/a/f/a/h/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/b$a$a;->b:Lc/c/a/f/a/b$a;

    iput-object p2, p0, Lc/c/a/f/a/b$a$a;->a:Lc/c/a/f/a/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b$a$a;->b:Lc/c/a/f/a/b$a;

    iget-object v0, v0, Lc/c/a/f/a/b$a;->a:Lc/c/a/f/a/b;

    invoke-static {v0}, Lc/c/a/f/a/b;->g(Lc/c/a/f/a/b;)Lc/c/a/f/a/h/f$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/b$a$a;->b:Lc/c/a/f/a/b$a;

    iget-object v0, v0, Lc/c/a/f/a/b$a;->a:Lc/c/a/f/a/b;

    invoke-static {v0}, Lc/c/a/f/a/b;->g(Lc/c/a/f/a/b;)Lc/c/a/f/a/h/f$m;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/f/a/b$a$a;->a:Lc/c/a/f/a/h/b;

    invoke-interface {v0, v1}, Lc/c/a/f/a/h/f$m;->a(Lc/c/a/f/a/h/b;)V

    :cond_0
    return-void
.end method

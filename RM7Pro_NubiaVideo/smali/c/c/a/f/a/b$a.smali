.class Lc/c/a/f/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/h/f$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/f/a/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/f/a/b;


# direct methods
.method constructor <init>(Lc/c/a/f/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/b$a;->a:Lc/c/a/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/f/a/h/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b$a;->a:Lc/c/a/f/a/b;

    new-instance v1, Lc/c/a/f/a/b$a$a;

    invoke-direct {v1, p0, p1}, Lc/c/a/f/a/b$a$a;-><init>(Lc/c/a/f/a/b$a;Lc/c/a/f/a/h/b;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

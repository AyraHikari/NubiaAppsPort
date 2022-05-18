.class Lb/a/b/c/b/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/b;-><init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/c/b/b;


# direct methods
.method constructor <init>(Lb/a/b/c/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lb/a/b/d/e;->c(Z)V

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lb/a/b/c/b/b;->b(Lb/a/b/c/b/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    invoke-static {p1}, Lb/a/b/c/b/b;->c(Lb/a/b/c/b/b;)Lb/a/b/c/b/b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    invoke-static {p1}, Lb/a/b/c/b/b;->d(Lb/a/b/c/b/b;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    invoke-static {p1}, Lb/a/b/c/b/b;->c(Lb/a/b/c/b/b;)Lb/a/b/c/b/b$c;

    move-result-object p1

    iget-object v0, p0, Lb/a/b/c/b/b$a;->a:Lb/a/b/c/b/b;

    invoke-static {v0}, Lb/a/b/c/b/b;->a(Lb/a/b/c/b/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/a/b/c/b/b$c;->r(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

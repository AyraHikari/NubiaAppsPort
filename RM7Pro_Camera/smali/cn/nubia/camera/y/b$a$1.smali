.class Lcn/nubia/camera/y/b$a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/y/b$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/nubia/camera/y/b$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    iput-object p2, p0, Lcn/nubia/camera/y/b$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/camera/y/b$a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/camera/y/b$a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    iget-object v1, v0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    iget-object v0, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    iget-object v0, v0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->l(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/y/b$a$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/camera/y/b$a$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/camera/y/b$a$1;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    iget-object v2, p0, Lcn/nubia/camera/y/b$a$1;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/y/b$a;->a(Lcn/nubia/camera/y/b$a;Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    iget-object v1, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    invoke-static {v1, v0}, Lcn/nubia/camera/y/b$a;->a(Lcn/nubia/camera/y/b$a;Landroid/net/Uri;)V

    .line 539
    iget-object v1, p0, Lcn/nubia/camera/y/b$a$1;->d:Lcn/nubia/camera/y/b$a;

    iget-object v1, v1, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/y/b$a$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/y/b$a$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

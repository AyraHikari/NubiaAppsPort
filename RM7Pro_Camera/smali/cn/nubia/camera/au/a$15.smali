.class Lcn/nubia/camera/au/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcn/nubia/camera/au/a$15;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 4

    .line 517
    iget-object p2, p0, Lcn/nubia/camera/au/a$15;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->p(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcn/nubia/camera/au/a$15$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/a$15$1;-><init>(Lcn/nubia/camera/au/a$15;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result p2

    .line 526
    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v0

    .line 527
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->a(Lcn/nubia/b/a/f;)[B

    move-result-object v1

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StarTrackFragment"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v2, p0, Lcn/nubia/camera/au/a$15;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v0}, Lcn/nubia/camera/au/a/a;->a([BII)V

    .line 530
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 514
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/au/a$15;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

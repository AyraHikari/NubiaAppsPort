.class Lcn/nubia/camera/r/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcn/nubia/camera/r/e$1;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopRecordAnimationEnd VideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e$1;->a:Lcn/nubia/camera/r/e;

    invoke-static {v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeVideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/r/e$1;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    return-void
.end method

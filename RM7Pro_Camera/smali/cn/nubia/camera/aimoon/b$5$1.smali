.class Lcn/nubia/camera/aimoon/b$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b$5;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b$5;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b$5;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$5$1;->a:Lcn/nubia/camera/aimoon/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AIMoonFragment"

    const-string v1, "Video reopen camera end, firstFrameAvailable"

    .line 234
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5$1;->a:Lcn/nubia/camera/aimoon/b$5;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->n(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 236
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->d()V

    return-void
.end method

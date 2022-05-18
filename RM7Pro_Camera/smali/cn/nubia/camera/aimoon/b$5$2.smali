.class Lcn/nubia/camera/aimoon/b$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/h$a;


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

    .line 240
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$5$2;->a:Lcn/nubia/camera/aimoon/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5$2;->a:Lcn/nubia/camera/aimoon/b$5;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->r(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/b$5$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/b$5$2$1;-><init>(Lcn/nubia/camera/aimoon/b$5$2;)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method

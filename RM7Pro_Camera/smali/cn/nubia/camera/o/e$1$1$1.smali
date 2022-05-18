.class Lcn/nubia/camera/o/e$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/e$1$1;->onConfingSuccess(Lcn/nubia/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/e$1$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/e$1$1;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/nubia/camera/o/e$1$1$1;->a:Lcn/nubia/camera/o/e$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/o/e$1$1$1;->a:Lcn/nubia/camera/o/e$1$1;

    iget-object v0, v0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object v0, v0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {v0}, Lcn/nubia/camera/o/e;->h(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 160
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    return-void
.end method

.class Lcn/nubia/camera/r/e$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/e$8;->onConfingSuccess(Lcn/nubia/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e$8;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e$8;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcn/nubia/camera/r/e$8$1;->a:Lcn/nubia/camera/r/e$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 806
    iget-object v0, p0, Lcn/nubia/camera/r/e$8$1;->a:Lcn/nubia/camera/r/e$8;

    iget-object v0, v0, Lcn/nubia/camera/r/e$8;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->s(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 808
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    return-void
.end method

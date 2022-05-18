.class Lcn/nubia/camera/r/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/j$a;


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

    .line 819
    iput-object p1, p0, Lcn/nubia/camera/r/e$9;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/algorithm/utils/a;III)V
    .locals 2

    .line 822
    iget-object v0, p0, Lcn/nubia/camera/r/e$9;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->u(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/d;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/r/d$a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcn/nubia/camera/r/d$a;-><init>(Lcn/nubia/algorithm/utils/a;III)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/d;->a(Lcn/nubia/camera/r/d$a;)V

    const/16 p1, 0x2c

    if-ne p4, p1, :cond_0

    .line 825
    iget-object p1, p0, Lcn/nubia/camera/r/e$9;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

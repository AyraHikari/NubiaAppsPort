.class Lcn/nubia/camera/r/e$10;
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

    .line 831
    iput-object p1, p0, Lcn/nubia/camera/r/e$10;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/algorithm/utils/a;III)V
    .locals 3

    .line 834
    iget-object v0, p0, Lcn/nubia/camera/r/e$10;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->v(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/nubia/camera/r/n$a;

    new-instance v2, Lcn/nubia/camera/r/n$a;

    invoke-direct {v2, p1, p2, p3, p4}, Lcn/nubia/camera/r/n$a;-><init>(Lcn/nubia/algorithm/utils/a;III)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/n;->a([Lcn/nubia/camera/r/n$a;)V

    return-void
.end method

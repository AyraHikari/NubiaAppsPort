.class Lcn/nubia/camera/multiRecord/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/e;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/e$1;->a:Lcn/nubia/camera/multiRecord/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/e$1;->a:Lcn/nubia/camera/multiRecord/e;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/e;->a(Lcn/nubia/camera/multiRecord/e;)Lcn/nubia/camera/g/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/e$1;->a:Lcn/nubia/camera/multiRecord/e;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/e;->a(Lcn/nubia/camera/multiRecord/e;)Lcn/nubia/camera/g/c;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/e$1;->a:Lcn/nubia/camera/multiRecord/e;

    invoke-static {p2}, Lcn/nubia/camera/multiRecord/e;->b(Lcn/nubia/camera/multiRecord/e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/nubia/camera/g/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

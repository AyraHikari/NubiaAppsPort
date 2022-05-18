.class Lcn/nubia/camera/aj/k$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/k$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/k$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/k$a;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/camera/aj/k$a$1;->a:Lcn/nubia/camera/aj/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V
    .locals 0

    const-string p1, "HDRSnapshotStorageRequest"

    const-string p2, "onStorageFinish"

    .line 147
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/aj/k$a$1;->a:Lcn/nubia/camera/aj/k$a;

    iget-object p1, p1, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {p1}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/aj/k$a$1;->a:Lcn/nubia/camera/aj/k$a;

    iget-object p1, p1, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {p1}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    :cond_0
    return-void
.end method

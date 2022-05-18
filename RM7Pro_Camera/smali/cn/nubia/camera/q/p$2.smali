.class Lcn/nubia/camera/q/p$2;
.super Lcn/nubia/camera/k/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/p;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/p;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/q/p$2;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Lcn/nubia/camera/k/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/h;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/a/h;)V

    .line 157
    invoke-interface {p1}, Lcn/nubia/b/a/h;->e()Lcn/nubia/b/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    :cond_0
    return-void
.end method

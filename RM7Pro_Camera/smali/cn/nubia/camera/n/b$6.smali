.class Lcn/nubia/camera/n/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/n/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcn/nubia/camera/n/b$6;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/n/b$6;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->p(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$d;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b$d;->removeMessages(I)V

    .line 457
    iget-object v0, p0, Lcn/nubia/camera/n/b$6;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->p(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b$d;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EffectPageManager"

    const-string v1, "onFunEffectHided: "

    .line 462
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/n/b$6;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->p(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$d;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b$d;->removeMessages(I)V

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/n/b$6;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->p(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b$d;->sendEmptyMessage(I)Z

    return-void
.end method

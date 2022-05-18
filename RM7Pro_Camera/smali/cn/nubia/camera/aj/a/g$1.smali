.class Lcn/nubia/camera/aj/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a/g;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/aj/a/g$1;->a:Lcn/nubia/camera/aj/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g$1;->a:Lcn/nubia/camera/aj/a/g;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/aj/a/g;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g$1;->a:Lcn/nubia/camera/aj/a/g;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/aj/a/g;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/a/g$1;->a:Lcn/nubia/camera/aj/a/g;

    invoke-static {v1}, Lcn/nubia/camera/aj/a/g;->b(Lcn/nubia/camera/aj/a/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/a/b;->a(I)V

    :cond_0
    return-void
.end method

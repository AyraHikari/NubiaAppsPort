.class Lcn/nubia/camera/aj/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/a/h;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a/h;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/aj/a/h$1;->a:Lcn/nubia/camera/aj/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h$1;->a:Lcn/nubia/camera/aj/a/h;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/h;->a(Lcn/nubia/camera/aj/a/h;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/aj/a/h$1;->a:Lcn/nubia/camera/aj/a/h;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/h;->a(Lcn/nubia/camera/aj/a/h;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/a/b;->b()V

    :cond_0
    return-void
.end method
